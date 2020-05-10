FROM toshiara/alpine-texlive-ja:2020

RUN apk --no-cache add curl && \
    tlmgr update --self && \
    tlmgr install ccicons newtx siunitx stix

VOLUME ["/workdir"]
CMD ["sh"]
