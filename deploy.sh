#!/bin/bash

#ssh root@92.63.99.92 "bash -s" << EOF
#    cd /var/www/nest_github_actions
#    ls
#    npm i
#    npm run build
#    pm2 delete app
#    pm2 start npm --name app -- start
#EOF

#ssh root@92.63.99.92
#ssh root@92.63.99.92 "bash -s" <./deploy.sh

cd /var/www/nest_github_actions

git pull

sleep 1

npm i

npm run prebuild
npm run build

pm2 delete app
pm2 start npm --name app -- start

#pm2 restart app