# claude-sessions

[한국어](README.ko.md)

A small terminal UI tool for browsing, deleting, copying, and moving Claude Code session transcripts per project.

## Features

- List sessions (title · time · size)
- Delete → moves to Trash (recoverable)
- Copy / Move → to another project path (useful for continuing a conversation in a git worktree, etc.)

<table>
<tr>
<td align="center" width="50%"><img src="screenshots/screenshot.svg" width="100%"><br><sub>List view</sub></td>
<td align="center" width="50%"><img src="screenshots/screenshot-delete.svg" width="100%"><br><sub>Delete</sub></td>
</tr>
<tr>
<td align="center" width="50%"><img src="screenshots/screenshot-copy.svg" width="100%"><br><sub>Copy</sub></td>
<td align="center" width="50%"><img src="screenshots/screenshot-move.svg" width="100%"><br><sub>Move</sub></td>
</tr>
</table>

## Usage

```bash
claude-sessions [PROJECT_PATH]   # defaults to the current directory
```

| Key                 | Action                                 |
|---------------------|------------------------------------------|
| `↑`/`k`, `↓`/`j`    | Move selection                           |
| `PgUp` / `PgDn`     | Page up / down                           |
| `d`                 | Delete selected session (to Trash)       |
| `c`                 | Copy session to another project path     |
| `m`                 | Move session to another project path     |
| `q` / `Esc`         | Quit                                     |

## Install

```bash
chmod +x claude-sessions
ln -s "$PWD/claude-sessions" ~/.local/bin/claude-sessions
```
