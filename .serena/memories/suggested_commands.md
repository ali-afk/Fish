# Fish Config Project

## Project Overview
Fish shell configuration with custom functions, abbreviations, and plugins.

## Tech Stack
- Fish shell 3.x
- Plugins: sponge, puffer-fish
- External tools: eza, yazi, fzf, gum, trash-cli, yay, etc.

## Commands
- `fish -c 'abbr'` - List abbreviations
- `functions` - List functions
- `git status` - Check config changes

## Code Style
- Functions use `--description` flag
- Abbreviations use `abbr` command
- Config files in `conf.d/`, functions in `functions/`

## Testing
- Test abbreviations with `fish -c 'abbr'`
- Test functions with `fish -c 'functions --query <name>'`

## Linting/Formatting
No specific linting. Use fish syntax check: `fish -n <file>`

## Plugin Management
Plugins installed via fisher (packages: meaningful-ooo/sponge, nickeb96/puffer-fish)