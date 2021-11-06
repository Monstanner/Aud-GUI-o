#!/bin/bash

if which zenity >/dev/null;
then echo "Zenity ist installiert"
else echo "Zenity ist nicht installiert. Um Aud-GUI-o verwenden zu können, muss Zenity installiert werden." && xterm -e "sudo zypper ln  -l -y zenity"
fi

if which youtube-dl >/dev/null;
then echo "youtube-dl ist installiert"
else echo "youtube-dl ist nicht installiert. Um Aud-GUI-o verwenden zu können, muss youtube-dl installiert werden." && xterm -e "sudo zypper ln  -l -y youtube-dl"
fi

#!/bin/bash

DOWNDIR=$HOME/Musik/Heruntergeladen/
mkdir $DOWNDIR

EINGABE=$(zenity --list --title "Aud-GUI-o" --width 500 --height 315 --text "In welchen Format soll das Lied heruntergeladen werden?" --column "Auswahl" --column "Typ" --radiolist TRUE "MP3" FALSE "AAC" FALSE "FLAC" FALSE "M4A" FALSE "OPUS" FALSE "VORBIS" FALSE "WAV" FALSE "Über")



if [ "$EINGABE" == "MP3" ]
then

LINKMP3=$(zenity --entry --title "Link einfügen" --width 500 --height 100 --text "Bitte den Link zum Lied einfügen und auf Ok klicken.")

youtube-dl -xo "$DOWNDIR%(title)s.%(ext)s" --audio-format mp3 --audio-quality 0 $LINKMP3 | zenity --progress --title "Herunterladen" --text "Das gewünschte Lied wird im MP3-Format heruntergeladen. Einen Moment geduld bitte." --pulsate && exit 0

fi


if [ "$EINGABE" == "AAC" ]
then

LINKAAC=$(zenity --entry --title "Link einfügen" --width 500 --height 100 --text "Bitte den Link zum Lied einfügen und auf Ok klicken.")

youtube-dl -xo "$DOWNDIR%(title)s.%(ext)s" --audio-format aac --audio-quality 0 $LINKAAC | zenity --progress --title "Herunterladen" --text "Das gewünschte Lied wird im AAC-Format heruntergeladen. Einen Moment geduld bitte." --pulsate && exit 0

fi


if [ "$EINGABE" == "FLAC" ]
then

LINKFLAC=$(zenity --entry --title "Link einfügen" --width 500 --height 100 --text "Bitte den Link zum Lied einfügen und auf Ok klicken.")

youtube-dl -xo "$DOWNDIR%(title)s.%(ext)s" --audio-format flac --audio-quality 0 $LINKFLAC | zenity --progress --title "Herunterladen" --text "Das gewünschte Lied wird im FLAC-Format heruntergeladen. Einen Moment geduld bitte." --pulsate && exit 0

fi


if [ "$EINGABE" == "M4A" ]
then

LINKM4A=$(zenity --entry --title "Link einfügen" --width 500 --height 100 --text "Bitte den Link zum Lied einfügen und auf Ok klicken.")

youtube-dl -xo "$DOWNDIR%(title)s.%(ext)s" --audio-format m4a --audio-quality 0 $LINKM4A | zenity --progress --title "Herunterladen" --text "Das gewünschte Lied wird im M4A-Format heruntergeladen. Einen Moment geduld bitte." --pulsate && exit 0

fi


if [ "$EINGABE" == "OPUS" ]
then

LINKOPUS=$(zenity --entry --title "Link einfügen" --width 500 --height 100 --text "Bitte den Link zum Lied einfügen und auf Ok klicken.")

youtube-dl -xo "$DOWNDIR%(title)s.%(ext)s" --audio-format opus $LINKOPUS | zenity --progress --title "Herunterladen" --text "Das gewünschte Lied wird im OPUS-Format heruntergeladen. Einen Moment geduld bitte." --pulsate && exit 0

fi


if [ "$EINGABE" == "VORBIS" ]
then

LINKVORBIS=$(zenity --entry --title "Link einfügen" --width 500 --height 100 --text "Bitte den Link zum Lied einfügen und auf Ok klicken.")

youtube-dl -xo "$DOWNDIR%(title)s.%(ext)s" --audio-format vorbis $LINKVORBIS | zenity --progress --title "Herunterladen" --text "Das gewünschte Lied wird im VORBIS-Format heruntergeladen. Einen Moment geduld bitte." --pulsate && exit 0

fi


if [ "$EINGABE" == "WAV" ]
then

LINKWAV=$(zenity --entry --title "Link einfügen" --width 500 --height 100 --text "Bitte den Link zum Lied einfügen und auf Ok klicken.")

youtube-dl -xo "$DOWNDIR%(title)s.%(ext)s" --audio-format wav --audio-quality 0 $LINKWAV | zenity --progress --title "Herunterladen" --text "Das gewünschte Lied wird im WAV-Format heruntergeladen. Einen Moment geduld bitte." --pulsate && exit 0

fi


if [ "$EINGABE" == "Über" ]
then

zenity --info --title "Über" --width 500 --height 100 --text "Aud-GUI-o ist eine Grafische Benutzerobefläche für das Programm youtube-dl. \nAud-GUI-o gibt es für GNU/Linux. \nAktuelle Version: <b>1.0</b> <i>20211106</i>. \nLink zu Aud-GUI-o: <a href='https://github.com/Monstanner/Aud-GUI-o'>Aud-GUI-o</a>. \nAud-GUI-o ist eine Weiterentwicklung von dem CLI-Skript <a href='https://github.com/Monstanner/Aud-CLI-o'>Aud-CLI-o</a>." && sh Aud-GUI-o.sh && exit 0

fi
