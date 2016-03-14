#!/bin/bash

set -e

mkdir -p /bot/plugins
cd /bot

git clone -b master https://github.com/magfest/slackbot/
git clone -b master https://github.com/magfest/slackbot-plugins-magfest plugins/

/env/bin/pip install -r /bot/slackbot/requirements.txt
/env/bin/pip install -e /bot/slackbot/
