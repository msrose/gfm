# GFM Preview

## Installation

Install with RubyGems:

```Shell
$ gem install gfm
```

## Usage

```Shell
$ gfm README.md
```

This generates a file named `README.html`, which will give a preview of the README as it would appear on GitHub.

To use a name for output other than the name of the current file:

```Shell
$ gfm README.md output
```

This will generate a file name `output.html`.

## Acknowledgements

Thanks to the creators of [ghpreview](https://github.com/neo/ghpreview) for the inspiration to write the gfm gem. Check out their page if you would like something more comprehensive. The gfm gem is much smaller but serves my own purposes better.
