echo "::group::set-postgres-path"

echo "Updating PATH..."

# Verify installation by running pg_dump directly
if [[ "$(uname -s)" == "NT"* ]] || [[ "$(uname -s)" == "MINGW"* ]] || [[ "$(uname -s)" == *"MSYS"* ]]; then
    # shellcheck disable=SC2028
    echo "C:\\Program Files\\PostgreSQL\\$INPUT_POSTGRESQL_VERSION\\bin" >> "$GITHUB_PATH"
elif [[ "$(uname -s)" == "Darwin" ]]; then
    echo "/usr/local/opt/postgresql@${INPUT_POSTGRESQL_VERSION}/bin" >> "$GITHUB_PATH"
else
    echo "/usr/lib/postgresql/$INPUT_POSTGRESQL_VERSION/bin" >> "$GITHUB_PATH"
fi

echo "Complete"

echo "::endgroup::"