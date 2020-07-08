# bitbar-chaos2-plugin

A [Foobot](https://foobot.io/) plugin for [BitBar](https://getbitbar.com/) to show CO2 level. Useful for noticing when the air in your office has gotten stale.

## Installation

* Install [BitBar](https://getbitbar.com/).
* Copy co2.5m.rb into your BitBar plugins directory.

## Configuration

The `.5m.` in the filename governs how often the plugin updates; by default, this is 5 minutes. If you want it more or less regular, change the number.

You need to edit the script to enter your username, API key and device ID. To get these, get your device ID from the URL at https://dashboard.foobot.io/, and request an API key at https://api.foobot.io/apidoc/index.html.