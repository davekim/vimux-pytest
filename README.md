# vimux-python-test

Vimux plugin for running pytest. Similar to [vimux-ruby-test](https://github.com/pgr0ss/vimux-ruby-test) and [vimux-nose-test](https://github.com/pitluga/vimux-nose-test).

## Requirements

- vim
- [vimux](https://github.com/benmills/vimux) (0.3.0 or greater)

## Installation

Use pathogen.

## Commands

- RunPytest - runs just `pytest` in the current directory
- RunPytestBuffer - runs `pytest` for the current file in the vim buffer
- RunPytestFocused - runs `pytest` for the current test on the vim cursor (if current cursor is not on a line that starts with `test_`, it will search backwards for the first hit)

## Acknowledgements

Special thanks to [Tony](https://github.com/pitluga). This is basically a copy of `vimux-nose-test`.
