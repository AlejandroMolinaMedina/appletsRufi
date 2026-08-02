#!/usr/bin/env bash

## Author  : Aditya Shakya (adi1090x)
## Github  : @adi1090x
#
## Applets : Quick Links

# Chrome Profiles
MOLINAA757="Default"
DROPDATABASEALEJANDRO="Profile 1"
ALEJANDROMOLINAMEDINA="Profile 2"
BROWSER="Google-Chrome"

# Import Current Theme
source "$HOME"/.config/rofi/applets/shared/theme.bash
theme="$type/$style"

# Theme Elements
prompt='Quick Links'
mesg="Using '$BROWSER' as web browser"

if [[ ( "$theme" == *'type-1'* ) || ( "$theme" == *'type-3'* ) || ( "$theme" == *'type-5'* ) ]]; then
	list_col='1'
	list_row='6'
elif [[ ( "$theme" == *'type-2'* ) || ( "$theme" == *'type-4'* ) ]]; then
	list_col='6'
	list_row='1'
fi

if [[ ( "$theme" == *'type-1'* ) || ( "$theme" == *'type-5'* ) ]]; then
	efonts="JetBrains Mono Nerd Font 12"
else
	efonts="JetBrains Mono Nerd Font 36"
fi

# Options
layout=`cat ${theme} | grep 'USE_ICON' | cut -d'=' -f2`
if [[ "$layout" == 'NO' ]]; then
	option_1=""
	option_2="◐"
	option_3=""
	option_4=""
	option_5=""
	option_6=""
	option_7=""
	option_8=""
	option_9=""
else
	option_1=""
	option_2="◐"
	option_3=""
	option_4=""
	option_5=""
	option_6=""
	option_7=""
	option_8=""
	option_9=""
fi

# Rofi CMD
rofi_cmd() {
	rofi -theme-str "listview {columns: 9; lines: 1;}" \
		-theme-str 'textbox-prompt-colon {str: "";}' \
		-theme-str "element-text {font: \"$efonts\";}" \
		-dmenu \
		-p "$prompt" \
		-mesg "$mesg" \
		-markup-rows \
		-theme ${theme}
}

# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$option_1\n$option_2\n$option_3\n$option_4\n$option_5\n$option_6\n$option_7\n$option_8\n$option_9" | rofi_cmd
}

# Execute Command
run_cmd() {
	if [[ "$1" == '--opt1' ]]; then
		alacritty
	elif [[ "$1" == '--opt2' ]]; then
		/home/al3xmm14/.secrets/scripts/set_mode.sh
	elif [[ "$1" == '--opt3' ]]; then
		google-chrome-stable --profile-directory="$DROPDATABASEALEJANDRO" 'https://teams.microsoft.com/'
	elif [[ "$1" == '--opt4' ]]; then
		google-chrome-stable --profile-directory="$ALEJANDROMOLINAMEDINA" 'https://teams.microsoft.com/'
	elif [[ "$1" == '--opt5' ]]; then
		flatpak run com.spotify.Client
	elif [[ "$1" == '--opt6' ]]; then
		/opt/google/chrome/google-chrome --profile-directory="$MOLINAA757" --app-id=hnpfjngllnobngcgfapefoaidbinmjnm --class=whatsapp-desktop
	elif [[ "$1" == '--opt7' ]]; then
		/opt/google/chrome/google-chrome --profile-directory="$MOLINAA757" --app-id=aenkghcjmafhmiloejakejkpbhaipmjc --class=gemini-desktop
	elif [[ "$1" == '--opt8' ]]; then
		google-chrome-stable --profile-directory="$MOLINAA757" 'https://www.github.com/'
	elif [[ "$1" == '--opt9' ]]; then
		google-chrome-stable
	fi
}

# Actions
chosen="$(run_rofi)"
case ${chosen} in
    $option_1)
		run_cmd --opt1
        ;;
    $option_2)
		run_cmd --opt2
        ;;
    $option_3)
		run_cmd --opt3
        ;;
    $option_4)
		run_cmd --opt4
        ;;
	$option_5)
		run_cmd --opt5
        ;;
	$option_6)
		run_cmd --opt6
        ;;
	$option_7)
		run_cmd --opt7
        ;;
	$option_8)
		run_cmd --opt8
        ;;
	$option_9)
		run_cmd --opt9
        ;;
esac
