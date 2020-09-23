FROM toshiara/alpine-texlive-ja:2020

ENV TEXMFSTYDIR=/usr/local/texlive/texmf-local/tex/platex/local
ENV TEXMFDOCDIR=/usr/local/texlive/texmf-local/doc/local

COPY emath .

RUN mkdir -p $TEXMFSTYDIR/emath $TEXMFDOCDIR/emath && \
    unzip emathf051107c.zip && \
    unzip sty.zip -d $TEXMFSTYDIR/emath && \
    unzip doc.zip -d $TEXMFDOCDIR/emath && \
    unzip -o emathc190703.zip -d $TEXMFSTYDIR/emath && \
    mv readme.txt $TEXMFDOCDIR/emath/ && \
    mv $TEXMFSTYDIR/emath/readme.txt $TEXMFDOCDIR/emath/readme190703.txt && \
    mkdir -p /usr/local/lib/perl5/site_perl && \
    unzip emathpl16.zip -d /usr/local/lib/perl5/site_perl && \
    mktexlsr && \
    rm -f *.zip

RUN apk --no-cache add ghostscript && \
    tlmgr update --self && \
    tlmgr install ccicons newtx siunitx stix

VOLUME ["/workdir"]
CMD ["sh"]

