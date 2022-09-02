COMMIT=$(git rev-parse --verify HEAD)
docker image build . -t "vidconf-ion-app-web_web:latest" -t "vidconf-ion-app-web_web:${COMMIT}"
docker image tag vidconf-ion-app-web_web:latest howeli/vidconf-ion-app-web_web:latest
docker push howeli/vidconf-ion-app-web_web:latest