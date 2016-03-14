# slackbot-docker
EXPERIMENTAL docker support for magfest-specific version of Slackbot: https://github.com/magfest/slackbot/

Will download magfest-specific plugins and attempt to use them.

## To build:

docker build -t magfest/slackbot .

## To run:

docker run -e SLACKBOT_API_TOKEN="insert_your_token_here" -ti magfest/slackbot
