# Halopen — Homebrew tap

Native macOS dictation. Hold the function key, talk anywhere a cursor goes, and the words land
verbatim — contractions, intensifiers, technical terms and code-switches as spoken, not rewritten
into a corporate register.

## Install

```sh
brew install --cask meriaapp/halopen/halopen
```

That's it — `brew` taps this repository automatically. To tap it explicitly first:

```sh
brew tap meriaapp/halopen
brew install --cask halopen
```

## Requirements

macOS 14.0 Sonoma or later. Universal binary — Apple Silicon and Intel. Signed with an Apple
Developer ID and notarized by Apple.

## Updating

Halopen updates itself via Sparkle, so the cask is marked `auto_updates true`. `brew upgrade` will
not fight the in-app updater.

## Uninstall

```sh
brew uninstall --cask halopen          # remove the app
brew uninstall --zap --cask halopen    # also remove settings, caches and local data
```

## Why a tap rather than homebrew-cask

Homebrew's package acceptance policy asks a new package to demonstrate public interest beyond its
author — at least 30 forks, 30 watchers or 75 stars, and 225 stars for a self-submission by the
repository owner. Halopen does not meet that bar yet, and maintaining a separate tap is Homebrew's
own documented answer for exactly this situation. Everything works identically from here.

## Links

- Website — <https://halopen.com/>
- Changelog — <https://halopen.com/changelog/>
- Privacy — <https://halopen.com/privacy/>
- Support — <https://halopen.com/support/>
