TAGNAME=$1

show_help()
{
    echo ""
    echo "Usage: ./dockerBuild.sh tagname"
    echo ""
}

if [[ $# -ne 1 ]] ; then
    show_help
    exit 1
fi

COMMIT=$(git rev-parse --verify HEAD)
docker image build . -t "vidconf-ion-app-web_web:latest" -t "vidconf-ion-app-web_web:${COMMIT}"
docker image tag vidconf-ion-app-web_web:latest howeli/vidconf-ion-app-web:$TAGNAME
docker push howeli/vidconf-ion-app-web:$TAGNAME
