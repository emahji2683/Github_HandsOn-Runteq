
#!/bin/bash

# database.yml を指定された内容でオーバーライト
cat <<EOL > package.json 
{
  "name": "app",
  "private": true,
  "devDependencies": {
    "esbuild": "^0.24.0"
  },
  "dependencies": {
    "@hotwired/stimulus": "^3.2.2",
    "@hotwired/turbo-rails": "^8.0.12",
    "bootstrap": "^5.3.3"
  },
  "scripts": {
    "build:js": "esbuild app/javascript/*.* --bundle --sourcemap --outdir=app/assets/builds",
    "build": "yarn build:js"
  }
}
EOL

echo "config/database.yml を指定された内容でオーバーライトしました。"
