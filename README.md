# S4
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](License)

## Description
A simple bash package for changing slack status automatically designed for Mac users.  
This package monitors your Mac's state and automatically switches slack status depends on WiFi-ID.  

S4 is an acronym for *Slack Status Supervision System* and has nothing to do with *AWS*.


## Requirements
This package only requires **Homebrew**.  
If you haven't installed HomeBrew yet, paste the command below to install Homebrew.
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
If any error occurs, please refer [HomeBrew official](https://brew.sh/) and install it manually.

## Installation
1. `git clone git@github.com:dgrid/s4.git` or download this repository under home directory.

2. If you don't have your slack apps yet, [create slack apps](https://api.slack.com/slack-apps#creating_apps) on your Slack account. Then
open your apps edit page.   

3. Click the **OAuth and Permissions** and scroll the page until **Scopes panel**.  

![Scopes panel](../images/scopes.png?raw=true)

4. Choose **Access user's profile and workspace profile fields** and **Modify user's profile**. Then save changes.

5. Copy **OAuth Access Token** on the top of this page.

![OAuth Access Token](../images/access_token.png?raw=true)

6. Edit config file of this package(./config) and put required informations below.
```
TOKEN="[YOUR ACCESS TOKEN]"
AT_OFFICE="[YOUR OFFICES WIFI NAME]"
AT_OFFICE_2="[ANOTHER OFFICES WIFI NAME]"
AT_HOME="[YOUR HOMES WIFI NAME]"
```

7. Enter this command to load all settings. Finished!
```
./setup.sh
```

## Advanced Usage
This has 3 states depends on WiFi-ID and Mac's states.  

| status        | AT OFFICE                | AT HOME             | SLEEP       |
| ------------- | ------------------------ | ------------------- | ----------- |
| Mac's state   | Active                   | Active              | sleep       |
| WiFi-ID       | AT_OFFICE or AT_OFFICE_2 | AT_HOME             | whatever    |
| default text  | at office                | at home             | not working |
| default emoji | :school:                 | :house_with_garden: | :zzz:       |

You can modify each status description and emoji by editting config file.  
```
AT_OFFICE_STATUS_TEXT="at office"
AT_OFFICE_STATUS_EMOJI=":school:"

AT_HOME_STATUS_TEXT="working remotely"
AT_HOME_STATUS_EMOJI=":house_with_garden:"

SLEEP_STATUS_TEXT="not working"
SLEEP_STATUS_EMOJI=":zzz:"

SLEEP_SECONDS=30
```

## Lisence
[MIT License](License)

## Contact
**Author** : [Kei Wakabayashi](https://github.com/datagrid-wakabayashi)  
**Company** : [DataGrid Co., Ltd.](https://github.com/dgrid)
