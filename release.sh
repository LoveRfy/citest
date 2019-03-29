if [ -z "$TRAVIS_TAG" ]; then
    VERSION=$TRAVIS_BRANCh-dev
else
    VERSION=$TRAVIS_TAG
fi
buildTime=$(date +%F-%H)
git_commit=$(git log -n 1 --pretty --format=%h)

docker build -t dns:${VERSION} .