# Dadjokes on Nextcloud Talk

The world was waiting for this: Dadjokes on Nextcloud Talk!

## Installation

Copy dadjoke.sh to your server and follow this guide: https://github.com/nextcloud/spreed/blob/master/docs/commands.md

Run this command to initialize your new `/dadjoke` command:
```
sudo -u www-data php occ talk:command:add dadjoke dadjoke "/path/to/your/directory/dadjoke.sh \"{ARGUMENTS_DOUBLEQUOTE_ESCAPED}\" " 2 3
```
## How to use

Enter `/dadjoke` for a random dadjoke.

Enter `/dadjoke [and your topic]` to laugh about something specific.

Enter `/dadjoke --help` for help.
