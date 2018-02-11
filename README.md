# S4
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](License)

## Description
A simple bash package for changing slack status automatically designed for Mac users.  
This package monitors your Mac's state and automatically switches slack status depends on WiFi-NAME.  

S4 is an acronym for *Slack Status Supervision System* and has nothing to do with *AWS*.


## Requirements
This package only requires **Homebrew**.  
If you haven't installed HomeBrew yet, paste the command below to install Homebrew.
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
If any error occurs, please refer [HomeBrew official](https://brew.sh/) and install it manually.

## Installation
1. `git clone git@github.com:dgrid/s4.git` or download this repository.

2. If you don't have your slack api app yet, [create slack apps](https://api.slack.com/slack-apps#creating_apps) on your Slack account.  

3. Open [your slack app's page](https://api.slack.com/apps) and click the app you just made.  

4. Click the **OAuth and Permissions** button on menu and scroll the page until **Scopes panel**.  

<img src="../images/scopes.png" width="700px">

5. Choose **Access user's profile and workspace profile fields** and **Modify user's profile**. Then save changes.

6. Click "Copy **OAuth Access Token**" button on the top of current page.

<img src="../images/access_token.png" width="700px">

7. Edit config file of this package(s4/config) and paste required informations.
```
TOKEN="YOUR ACCESS TOKEN"
AT_OFFICE_WIFI="YOUR OFFICES WIFI NAME"
AT_OFFICE_WIFI_2="ANOTHER OFFICES WIFI NAME"
AT_HOME_WIFI="YOUR HOMES WIFI NAME"
```

8. Enter this command to load all settings. Finished!
```
./setup.sh
```

## Advanced Usage
This package has 3 states depends on connected WiFi-NAME and Mac's states.  

| STATUS        | AT OFFICE                          | AT HOME             | SLEEP       |
| ------------- | ---------------------------------- | ------------------- | ----------- |
| Mac's state   | Active                             | Active              | sleep       |
| WiFi-NAME     | AT_OFFICE_WIFI or AT_OFFICE_WIFI_2 | AT_HOME_WIFI        | whatever    |
| default text  | at office                          | at home             | not working |
| default emoji | :school:                           | :house_with_garden: | :zzz:       |

You can modify each status description and emoji by editting config file.  
```
AT_OFFICE_STATUS_TEXT="at office"
AT_OFFICE_STATUS_EMOJI=":school:"

AT_HOME_STATUS_TEXT="working remotely"
AT_HOME_STATUS_EMOJI=":house_with_garden:"

SLEEP_STATUS_TEXT="at home"
SLEEP_STATUS_EMOJI=":zzz:"

SLEEP_SECONDS=30
```

## Lisence
[MIT License](License)

## Contact
**Author** : [Kei Wakabayashi](https://github.com/datagrid-wakabayashi)  
**Company** : [DataGrid Co., Ltd.](https://datagrid.co.jp/)
