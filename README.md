# tmcinerney/homebrew-tap

Homebrew tap for my open-source tools.

## Usage

```sh
brew tap tmcinerney/tap
brew install <formula>
```

Or in one line:

```sh
brew install tmcinerney/tap/<formula>
```

## Formulae

| Formula | Description |
|---|---|
| [`beckon`](https://github.com/tmcinerney/beckon) | Glove80 agent-pane status display and Herdr navigation (Rust) |
| [`granola-cli`](https://github.com/tmcinerney/granola-cli) | Unofficial CLI for Granola meeting notes (Rust, with credential-storage fix for desktop ≥7.162) |

## Beckon updates

The scheduled **Update Beckon formula** workflow checks the latest public
Beckon release daily and opens a pull request with its source checksum. It can
also be run manually from the Actions page. Formula changes stay reviewable;
merging the pull request publishes the update to this tap.
