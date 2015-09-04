# GFM Preview

[![gfm API Documentation](https://www.omniref.com/ruby/gems/gfm.png)](https://www.omniref.com/ruby/gems/gfm)

This gem takes a markdown file and parses it with [GitHub Flavored Markdown](https://help.github.com/articles/github-flavored-markdown). The generated HTML file gives a preview of the file as it would appear on GitHub. This is useful for checking the format of README.md files before pushing to your remote repository.

## Installation

Install with RubyGems:

```
$ gem install gfm
```

You may need to install `libicu-dev` and `cmake` first. For Ubuntu:

```
$ sudo apt-get install libicu-dev
$ sudo apt-get install cmake
```

## Usage

```
$ gfm README.md
```

This generates a file named `README.html`, which will give a preview of the README as it would appear on GitHub.

To use a name for the HTML file other than the name of the current file:

```
$ gfm README.md output
```

This will generate a file named `output.html`.

## Acknowledgements

Thanks to the creators of [ghpreview](https://github.com/neo/ghpreview) for the inspiration to write the gfm gem. Check out their page if you would like something more comprehensive. The gfm gem is much smaller but serves my own purposes better.
