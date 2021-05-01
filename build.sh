USERID=toshiara
NAME=alpine-texlive-ja-plus
MAINVER=2021
MINORVER=5.1

# build
docker build -t ${USERID}/${NAME} .

# tags
docker tag ${USERID}/${NAME}:latest ${USERID}/${NAME}:${MAINVER}
docker tag ${USERID}/${NAME}:latest ${USERID}/${NAME}:${MAINVER}.${MINORVER}
