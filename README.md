[![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge\&logo=ubuntu\&logoColor=white)](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idruns-on)
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->
[![Mac OS](https://img.shields.io/badge/mac%20os-000000?style=for-the-badge\&logo=macos\&logoColor=F0F0F0)](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idruns-on)
[![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge\&logo=windows\&logoColor=white)](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idruns-on)
[![Public workflows that use this action.](https://img.shields.io/endpoint?style=for-the-badge\&url=https%3A%2F%2Fused-by.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Finstall-postgresql%26badge%3Dtrue)](https://github.com/search?o=desc\&q=tj-actions+install-postgresql+path%3A.github%2Fworkflows+language%3AYAML\&s=\&type=Code)

[![CI](https://github.com/tj-actions/install-postgresql/workflows/CI/badge.svg)](https://github.com/tj-actions/setup-postgresql/actions?query=workflow%3ACI)
[![Update release version.](https://github.com/tj-actions/install-postgresql/workflows/Update%20release%20version./badge.svg)](https://github.com/tj-actions/setup-postgresql/actions?query=workflow%3A%22Update+release+version.%22)

## install-postgresql

This Github action installs PostgreSQL on the GitHub actions runner and verifies the installation.

```yaml
...
    steps:
      - uses: actions/checkout@v4
      - name: Setup PostgreSQL
        uses: tj-actions/install-postgresql@v2
        with:
          postgresql-version: 16
```

> NOTE: This updates the installed PostgreSQL version with the specified version and updates the PATH.

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|                                         INPUT                                          |  TYPE  | REQUIRED | DEFAULT |          DESCRIPTION          |
|----------------------------------------------------------------------------------------|--------|----------|---------|-------------------------------|
| <a name="input_postgresql-version"></a>[postgresql-version](#input_postgresql-version) | string |   true   |         | Version of PostgreSQL. e.g 16 |

<!-- AUTO-DOC-INPUT:END -->

## Known Limitations

> \[!WARNING]
>
> *   Slow to install on Windows runners.

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

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="http://brennancolberg.com"><img src="https://avatars.githubusercontent.com/u/14948341?v=4?s=100" width="100px;" alt="Brennan Colberg"/><br /><sub><b>Brennan Colberg</b></sub></a><br /><a href="https://github.com/tj-actions/install-postgresql/commits?author=BrennanColberg" title="Code">💻</a> <a href="https://github.com/tj-actions/install-postgresql/commits?author=BrennanColberg" title="Documentation">📖</a> <a href="https://github.com/tj-actions/install-postgresql/commits?author=BrennanColberg" title="Tests">⚠️</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!