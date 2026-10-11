# Disable Keyboard Shortcuts — agent guide

Rules for anyone changing this repo, people and AI agents alike. Org-wide
conventions (README, licenses, commits) are in the [contributing guide](https://github.com/somos-criptonautas/.github/blob/main/CONTRIBUTING.md).

## Checks

```bash
pnpm install && pnpm lint
discourse_theme rspec .
```

CI runs both.

## Things that are easy to get wrong

- `DISCOURSE_ONLY_SHORTCUTS` is a copy of the keys in core's `DEFAULT_BINDINGS`
  (`frontend/discourse/app/services/keyboard-shortcuts.js`). A key core adds later
  stays active until it is added here; a key core drops is a harmless no-op.
- `api.disableDefaultKeyboardShortcuts` looks cleaner but only works from a
  pre-initializer: the service reads that list once, in its constructor, and is
  already built when an api-initializer runs. `pause()` acts on the live instance.
- Composer shortcuts (Ctrl+B, Ctrl+I…) and shortcuts other plugins add with
  `api.addKeyboardShortcut` are not touched. The CSS still hides their hints in
  dropdown menus.
