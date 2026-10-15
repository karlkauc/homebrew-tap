# FreeXmlToolkit Homebrew tap

[Homebrew](https://brew.sh/) tap for [FreeXmlToolkit](https://github.com/karlkauc/FreeXmlToolkit) – a free XML editor
and toolkit with XSD/Schematron validation, XSLT/XQuery, schema documentation and PDF generation.

## Install

```bash
brew install --cask karlkauc/tap/freexmltoolkit
```

The cask installs the signed and notarized `FreeXmlToolkit.app` (Apple Silicon or Intel) into `/Applications`.

## Update

```bash
brew upgrade --cask freexmltoolkit
```

The app tells you when a new version is available and shows this command; it does not update itself
when installed through Homebrew.

## Uninstall

```bash
brew uninstall --cask freexmltoolkit          # keeps your settings
brew uninstall --cask --zap freexmltoolkit    # also removes ~/.freeXmlToolkit
```

## About this tap

The cask `Casks/freexmltoolkit.rb` is updated automatically for every
[FreeXmlToolkit release](https://github.com/karlkauc/FreeXmlToolkit/releases) (SHA-256 from the release's
`SHA256SUMS.txt`). Please report problems in the
[FreeXmlToolkit issue tracker](https://github.com/karlkauc/FreeXmlToolkit/issues).
