# slack-status

Updates your Slack status depending on the SSID of the Wifi network you are connected

## Installation

1. Run `clone https://github.com/devartis/slack-status.git && cd slack-status`
2. Create an access token at https://api.slack.com/custom-integrations/legacy-tokens for your workspace (i.e devartis).
3. Create a file named `slack-token.config` with the generated token in it and save it at the root of the repository. This file should have just one line with the token.
4. Run `mv slack-token.config ~/.slack-token.config` in order to hidde this file, and to be used by the script.
5. Run `sudo mv slack.sh /etc/network/if-up.d/slack`.
6. Enjoy the automatic slack status changing!

## Inspiration

* https://medium.com/slack-developer-blog/how-to-set-a-slack-status-from-other-apps-ab4eef871339
* https://github.com/kuy/slack-loc/blob/master/scripts/update.sh
* https://askubuntu.com/questions/258580/how-to-run-a-script-depending-on-internet-connection
