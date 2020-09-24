# toshiara/texlive-plus

Minimal TeX Live image for Japanese based on alpine
 plus several CTAN packages

- add several packages to toshiara/alpine-texlive-ja
- add [emath](http://emath.s40.xrea.com/)


## Build

```bash
$ git clone https://github.com/toshi-ara/docker-alpine-texlive-ja-plus.git
$ cd docker-alpine-texlive-ja-plus
$ sudo ./build.sh
```

## Usage

```bash
$ docker run --rm -it -v ${PWD}:/workdir toshiara/alpine-texlive-ja-plus platex --version
```

## License

### Dockerfile
MIT (c) ARA Toshiaki

### additinal packages for emath
- bs2yen
  - No description about license
  - by Yoshiki OTOBE
- eclarith, eclbkbox, random
  - No description about license
  - by Hideki ISOZAKI
- jumoline
  - LaTeX Project Public License version 1 or later
- kunten2e
  - No description about license
  - by Satoshi KINSUI
- mbboard
  - from CTAN
- okuruby
  - No description about license
  - by Haruhiko OKUMURA
- uline--
  - by Tetsumi YOSHINAGA

