# slack-status

Updates your Slack status depending on the SSID of the Wifi network you are connected

## Installation

1. Clone this repository on your filesystem.
1. Create an access token at https://api.slack.com/custom-integrations/legacy-tokens for your workspace (i.e devartis).
1. Create a file named `token.config` with the generated token in it and save it at the root of the repository. This file should have just one line with the token.
1. From the root of the repository run `sudo ln -s slack.sh /etc/network/if-up.d/slack`.

## Inspiration

* https://medium.com/slack-developer-blog/how-to-set-a-slack-status-from-other-apps-ab4eef871339
* https://github.com/kuy/slack-loc/blob/master/scripts/update.sh
* https://askubuntu.com/questions/258580/how-to-run-a-script-depending-on-internet-connection
