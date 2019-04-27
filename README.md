
```
gcloud config set run/region us-central1
docker run --rm \
           -v "$PWD":/usr/src \
           -v "$HOME/.m2":/root/.m2 \
           -w /usr/src \
           oracle/graalvm-ce:1.0.0-rc15 \
           ./mvnw package -Pgraal
docker build -t asia.gcr.io/fe-tmaki/hello-run .
gcloud docker -- push asia.gcr.io/fe-tmaki/hello-run
gcloud beta run deploy hello-run --allow-unauthenticated --image asia.gcr.io/fe-tmaki/hello-run
```
