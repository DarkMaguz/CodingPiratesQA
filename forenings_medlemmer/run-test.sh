#!/bin/sh
docker rm -f forenings_medlemmer_test
docker build -t forenings_medlemmer/automatedtest .
echo "######################"
docker run --rm forenings_medlemmer/automatedtest firefox -V
echo "######################"
docker run -ti -v $PWD/screenshots:/usr/app/screenshots -v $PWD/data:/usr/app/data -v $PWD/reports:/usr/app/reports --name="forenings_medlemmer_test" forenings_medlemmer/automatedtest




