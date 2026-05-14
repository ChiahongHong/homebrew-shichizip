# homebrew-shichizip

Unofficial Homebrew tap for [ShichiZip](https://github.com/idawnlight/ShichiZip), the 7-Zip derivative intended for macOS.

## Install

```sh
brew tap ChiahongHong/shichizip
# brew tap <owner>/shichizip
brew install --cask shichizip
```

## Updates

This tap checks the latest upstream ShichiZip release once per day at 00:30 UTC using GitHub Actions.

The updater tracks the regular `ShichiZip` app release assets only:

- `ShichiZip-v<version>-arm64.zip`
- `ShichiZip-v<version>-x86_64.zip`

It does not track prereleases, draft releases, or the `ShichiZipZS` variant. **SO I AM FORKING TO ADD IT** later.

You can also run the updater manually from the `Update ShichiZip Cask` workflow in GitHub Actions.
