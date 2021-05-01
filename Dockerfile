FROM toshiara/alpine-texlive-ja:2021.5.1
LABEL lastupdate=2021.5.1

ENV TEXMFSTYDIR=/usr/local/texlive/texmf-local/tex/platex
ENV TEXMFDOCDIR=/usr/local/texlive/texmf-local/doc
ENV TEXMFFONTDIR=/usr/local/texlive/texmf-local/fonts

RUN tlmgr update --self --all && \
    tlmgr install ccicons fourier fouriernc inconsolata \
                  lxfonts newtx newtxsf newpx noto opensans \
                  siunitx stix yhmath \
                  libertine libertinus-fonts libertinus-type1 libertinust1math \
                  stix2-otf stix2-type1 Asana-Math xits \
                  esvect mathabx multido ulem \
                  selnolig

COPY emath .

RUN mkdir -p $TEXMFSTYDIR/emath  $TEXMFSTYDIR/misc $TEXMFDOCDIR/emath && \
    unzip emathf051107c.zip && \
    unzip sty.zip -d $TEXMFSTYDIR/emath && \
    unzip doc.zip -d $TEXMFDOCDIR/emath && \
    unzip -o emathc190703.zip -d $TEXMFSTYDIR/emath && \
    mv readme.txt $TEXMFDOCDIR/emath/ && \
    mv $TEXMFSTYDIR/emath/readme.txt $TEXMFDOCDIR/emath/readme190703.txt && \
      \
    mkdir -p /usr/local/lib/perl5/site_perl && \
    unzip emathpl16.zip -d /usr/local/lib/perl5/site_perl && \
      \
    unzip eclarith.zip -d $TEXMFSTYDIR/misc && \
    unzip mbboard.zip -d $TEXMFSTYDIR/misc && \
    lha x eclbkbox.lzh && \
    lha x jcm.lzh && \
    cp -a tfm $TEXMFFONTDIR/tfm && \
    cp -a vf $TEXMFFONTDIR/vf && \
    cp -a tfm $TEXMFFONTDIR/tfm && \
    cp bs2yen.sty jnic.sty ot1jcmtt.fd \
       eclbkbox.sty kunten2e.sty \
       okuruby.sty random.sty \
       jumoline.dtx jumoline.sty \
       uline--.sty uline--.tex \
       $TEXMFSTYDIR/misc && \
    mktexlsr

VOLUME ["/workdir"]
CMD ["sh"]

