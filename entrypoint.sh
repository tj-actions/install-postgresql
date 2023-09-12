#!/usr/bin/env bash

set -euo pipefail

echo "::group::setup-postgresql"

echo "Verifying version"

# Check if the input is an integer
if ! [[ "$INPUT_POSTGRESQL_VERSION" =~ ^[0-9]+$ ]]; then
    echo "Error: $INPUT_POSTGRESQL_VERSION is not a valid integer."
    exit 1
fi

# Check if the input is between 10 and 15 (inclusive)
if (( INPUT_POSTGRESQL_VERSION < 10 || INPUT_POSTGRESQL_VERSION > 15 )); then
    echo "Error: $INPUT_POSTGRESQL_VERSION is not between 10 and 15 (inclusive)."
    exit 1
fi

echo "Validated postgresql version: $INPUT_POSTGRESQL_VERSION"

echo "Installing postgresql..."

echo "OS: $(uname -s)"

if [[ "$(uname -s)" == "Linux" ]]; then
    # Create the file repository configuration:
    sudo sh -c 'echo "deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

    # Import the repository signing key:
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

    # Update the package lists:
    sudo apt-get update

    # Install PostgreSQL
    sudo apt-get install -y "postgresql-$INPUT_POSTGRESQL_VERSION"
elif [[ "$(uname -s)" == "NT"* ]] || [[ "$(uname -s)" == "MINGW"* ]] || [[ "$(uname -s)" == *"MSYS"* ]]; then
    choco install "postgresql$INPUT_POSTGRESQL_VERSION" -y --no-progress
elif [[ "$(uname -s)" == "Darwin" ]]; then
    brew update
    brew install "postgresql@$INPUT_POSTGRESQL_VERSION"
else
    echo "Unsupported OS"
    exit 1
fi

echo "Installed postgresql"

echo "Verifying installation..."

# Verify installation by running pg_dump directly
if [[ "$(uname -s)" == "NT"* ]] || [[ "$(uname -s)" == "MINGW"* ]] || [[ "$(uname -s)" == *"MSYS"* ]]; then
    echo "C:\\Program Files\\PostgreSQL\\$INPUT_POSTGRESQL_VERSION\\bin" >> $GITHUB_PATH
elif [[ "$(uname -s)" == "Darwin" ]]; then
    echo "/usr/local/opt/postgresql@${INPUT_POSTGRESQL_VERSION}/bin" >> $GITHUB_PATH
else
    echo "/usr/lib/postgresql/$INPUT_POSTGRESQL_VERSION/bin" >> $GITHUB_PATH
fi

echo "Complete"

echo "::endgroup::"
