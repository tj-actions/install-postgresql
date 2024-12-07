#!/usr/bin/env bash

set -euo pipefail

echo "::group::setup-postgresql"

echo "Verifying version"

# Check if the input is an integer
if ! [[ "$INPUT_POSTGRESQL_VERSION" =~ ^[0-9]+$ ]]; then
    echo "Error: $INPUT_POSTGRESQL_VERSION is not a valid integer."
    exit 1
fi

# Check if the input is between 11 and 17 (inclusive)
if (( INPUT_POSTGRESQL_VERSION < 12 || INPUT_POSTGRESQL_VERSION > 17 )); then
    echo "Error: $INPUT_POSTGRESQL_VERSION is not between 12 and 17 (inclusive)."
    exit 1
fi

echo "Validated postgresql version: $INPUT_POSTGRESQL_VERSION"

echo "Installing postgresql..."

OS=$(uname -s)
echo "OS: $OS"

if [[ "$OS" == "Linux" ]]; then
    # Create the file repository configuration:
    sudo sh -c 'echo "deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

    # Import the repository signing key:
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

    # Update the package lists:
    sudo apt-get update

    # Install PostgreSQL
    sudo apt-get install -y "postgresql-$INPUT_POSTGRESQL_VERSION"
elif [[ "$OS" == "NT"* ]] || [[ "$OS" == "MINGW"* ]] || [[ "$OS" == *"MSYS"* ]]; then
    choco install "postgresql$INPUT_POSTGRESQL_VERSION" -y --no-progress --use-download-cache
elif [[ "$OS" == "Darwin" ]]; then
    HOMEBREW_NO_AUTO_UPDATE=1 brew install "postgresql@$INPUT_POSTGRESQL_VERSION"
else
    echo "Unsupported OS"
    exit 1
fi

echo "Installed postgresql"

echo "Updating PATH..."

if [[ "$OS" == "NT"* ]] || [[ "$OS" == "MINGW"* ]] || [[ "$OS" == *"MSYS"* ]]; then
    # shellcheck disable=SC2028
    echo "C:\\Program Files\\PostgreSQL\\$INPUT_POSTGRESQL_VERSION\\bin" >> "$GITHUB_PATH"
elif [[ "$OS" == "Darwin" ]]; then
    echo "$(brew --prefix postgresql@"${INPUT_POSTGRESQL_VERSION}")/bin" >> "$GITHUB_PATH"
else
    echo "/usr/lib/postgresql/$INPUT_POSTGRESQL_VERSION/bin" >> "$GITHUB_PATH"
fi

echo "Complete"

echo "::endgroup::"
