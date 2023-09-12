[![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge\&logo=ubuntu\&logoColor=white)](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idruns-on)
[![Mac OS](https://img.shields.io/badge/mac%20os-000000?style=for-the-badge\&logo=macos\&logoColor=F0F0F0)](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idruns-on)
[![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge\&logo=windows\&logoColor=white)](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idruns-on)
[![Public workflows that use this action.](https://img.shields.io/endpoint?style=for-the-badge\&url=https%3A%2F%2Fused-by.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Fsetup-postgresql%26badge%3Dtrue)](https://github.com/search?o=desc\&q=tj-actions+setup-postgresql+path%3A.github%2Fworkflows+language%3AYAML\&s=\&type=Code)

[![CI](https://github.com/tj-actions/setup-postgresql/workflows/CI/badge.svg)](https://github.com/tj-actions/setup-postgresql/actions?query=workflow%3ACI)
[![Update release version.](https://github.com/tj-actions/setup-postgresql/workflows/Update%20release%20version./badge.svg)](https://github.com/tj-actions/setup-postgresql/actions?query=workflow%3A%22Update+release+version.%22)

## setup-postgresql

This Github action installs PostgreSQL on the GitHub actions runner and verifies the installation.

```yaml
...
    steps:
      - uses: actions/checkout@v4
      - name: Setup PostgreSQL
        uses: tj-actions/setup-postgresql@v1
        with:
          postgresql_version: 15
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|                                         INPUT                                          |  TYPE  | REQUIRED | DEFAULT |          DESCRIPTION          |
|----------------------------------------------------------------------------------------|--------|----------|---------|-------------------------------|
| <a name="input_postgresql_version"></a>[postgresql\_version](#input_postgresql_version) | string |   true   |         | Version of PostgreSQL. e.g 15 |

<!-- AUTO-DOC-INPUT:END -->

*   Free software: [MIT license](LICENSE)

If you feel generous and want to show some extra appreciation:

[![Buy me a coffee][buymeacoffee-shield]][buymeacoffee]

[buymeacoffee]: https://www.buymeacoffee.com/jackton1

[buymeacoffee-shield]: https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png

## Credits

This package was created with [Cookiecutter](https://github.com/cookiecutter/cookiecutter) using [cookiecutter-action](https://github.com/tj-actions/cookiecutter-action)

## Report Bugs

Report bugs at https://github.com/tj-actions/setup-postgresql/issues.

If you are reporting a bug, please include:

*   Your operating system name and version.
*   Any details about your workflow that might be helpful in troubleshooting.
*   Detailed steps to reproduce the bug.
