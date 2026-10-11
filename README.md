# Disable Keyboard Shortcuts

**ENGLISH** | [ESPAÑOL](README.es.md)

Maintained by Criptonautas. Not affiliated with or endorsed by Discourse (Civilized Discourse Construction Kit, Inc.).

Theme component that turns off Discourse's own keyboard shortcuts for everyone:
`j`/`k` navigation, `?`, the `g` sequences, `r`, `l`, `b` and the rest of the list
in the shortcuts help. Browser and OS keys are never affected.

Useful when members trigger actions by accident (a stray `l` likes a post, `g h`
leaves the page) or when single-letter keys clash with a screen reader or browser
extension.

## What it does

- Pauses every default shortcut in core's keyboard-shortcuts service, except:
  - `Ctrl+Alt+F` (open search), `Ctrl/Cmd+P` (print) and `Shift+F11` (full-screen
    composer), which work even while typing;
  - `o` / `Enter`, which open the selected topic.
- Hides the keyboard button in the sidebar footer and the shortcut hints in
  dropdown menus, since the help would list keys that do nothing.

Not affected: composer shortcuts (`Ctrl+B`, `Ctrl+I`, `Ctrl+Enter`…) and shortcuts
that other plugins or components add. Composer shortcuts still work, but their hints
in dropdown menus are hidden too.

## Install

1. Admin → Appearance → Themes → **Components** → Install → *From a git repository*:
   `https://github.com/somos-criptonautas/discourse-disable-keyboard-shortcuts`
2. Add the component to your active theme(s).

No settings. Removing the component brings every shortcut back.

## Known limits

The list of shortcuts is copied from core. A shortcut core adds in a later version
stays active until the list here is updated.

## License

MIT. See [LICENSE](LICENSE).

Text of this README under [CC BY-NC-SA 4.0](CC-BY-NC-SA-4.0.txt).
