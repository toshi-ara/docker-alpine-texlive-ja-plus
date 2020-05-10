USERID=toshiara
NAME=alpine-texlive-ja-plus
MAINVER=2020

# build
docker build -t ${USERID}/${NAME} .

# tags
docker tag ${USERID}/${NAME}:latest ${USERID}/${NAME}:${MAINVER}

