#!/bin/bash
chmod +x add_db_config.sh
docker compose build
docker compose run --rm app gem install rails
docker compose run --rm app rails new . -d postgresql -j esbuild
