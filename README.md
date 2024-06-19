# Helmholtz AI 2024 beamer template

## Status

[![license: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

## Requirements

Ensure that you have an up-to-date LaTeX distribution installed on your system.

*Ubuntu/Debian*

```sh
$ sudo apt install texlive-full
```

*Fedora/CentOS/RHEL*

```sh
$ sudo dnf install texlive-scheme-full
```

*TeX Live (any system)*

If you don't have sudo access you can install [TeX Live](https://www.tug.org/texlive/) locally.
Visit the [TeX Live quick install page](https://www.tug.org/texlive/quickinstall.html) for instructions.

## Building the slides

In order to build your slides you can use your favorite LaTeX IDE, like TeXstudio, Texmaker or even Overleaf.
Please ensure that you compile it with XeLaTeX or LuaLaTeX instead of the (usual default) pdfLaTeX.

You can opt to use the provided `Makefile` and simply typing the following in your terminal:

```sh
$ make
```

which uses the `latexmk` tool under the hood. We highly recommend `latexmk` when
compiling on the command line since it handles the bibliography, e.g. using
`bib(la)tex` + `biber` automatically.

To get rid of all the temporary files created during the compilation, use

```sh
$ make clean
```

To also remove final slides PDF use

```sh
$ make allclean
```

Alternatively, you can use the `latexmk` tool directly to compile your slides (either in the terminal or by setting it as the compiler in your IDE).
A working `.latexmkrc` is included.

```sh
$ latexmk slides.tex
```

To get rid of all temporary files created during compilation use the `-c` flag (`-C` to also remove the final slides PDF):

```sh
$ latexmk -c
```

Note: At the time of writing, the contents of this repo can be readily used on [overleaf](https://overleaf.com).

## License

The Helmholtz AI beamer template is distributed under the MIT license, see our [LICENSE](LICENSE) file for details.

## Copyrights

The images and fonts provided as part of this LaTeX source code repository are copyrighted. As member of the Helmholtz Association you can freely use the material. For Helmholtz AI external users, you have to ensure that you are allowed to use a) the Helmholtz AI visual material, b) the Helmholtz corporate design as well as c) the Hermann Bold font as well as the Halvar and Corporate-S font families.

-----------
<div align="center">
  <a href="https://www.helmholtz.ai/"><img src="./logos/Helmholtz-AI-ColorCMYK.png" height="50px"></a>
</div>

