# Docker-packaged demo of flask-restplus

Demo code is located here: https://flask-restplus.readthedocs.io/en/stable/example.html

# Build container

1. Clone repo
2. From the repo root, run `docker build --tag demo:latest .`

# Run container

1. Start the container: `docker run -it --rm -p8888:8888 demo:latest`
2. Access the API from `http://localhost:8888/app/`
3. Kill the container by hitting `ctrl-c`.



