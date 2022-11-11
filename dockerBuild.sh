TAGNAME=$(git describe)
docker image build . -t "vidconf-ion-app-web_web:latest" -t "vidconf-ion-app-web_web:${TAGNAME}"
docker image tag vidconf-ion-app-web_web:latest howeli/vidconf-ion-app-web:${TAGNAME}
docker push howeli/vidconf-ion-app-web:${TAGNAME}
