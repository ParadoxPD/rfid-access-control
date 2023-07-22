if test -f "app.py"; then
    rm app.py
fi

if test -f "db_handler.py"; then
    rm db_handler.py
fi

if test -f "request_handler.py"; then
    rm request_handler.py
fi

if test -f "auth.py"; then
    rm auth.py
fi

if test -f "mraa_helper.py"; then
    rm mraa_helper.py
fi

if test -f "data.json"; then
    rm data.json
fi

if test -f "rfid_handler.py"; then
    rm rfid_handler.py
fi

if test -f "rtc_handler.py"; then
    rm rtc_handler.py
fi

if test -f "set_date_time.py"; then
    rm set_date_time.py
fi

if test -f "mode.txt"; then
    rm mode.txt
fi

if test -f "log.txt"; then
    rm log.txt
fi

if test -f "get_project.sh"; then
    rm get_project.sh
fi


if [[ $# -eq 0 ]] ; then
    echo 'No IP Provided'
    exit 1
fi

$(wget "${1}/app.py")
$(wget "${1}/data.json")
$(wget "${1}/db_handler.py")
$(wget "${1}/request_handler.py")
$(wget "${1}/auth.py")
$(wget "${1}/mraa_helper.py")
$(wget "${1}/rfid_handler.py")
$(wget "${1}/mode.txt")
$(wget "${1}/log.txt")
$(wget "${1}/set_date_time.py")
$(wget "${1}/rtc_handler.py")
$(wget "${1}/get_project.sh")

chmod +x app.py
chmod +x db_handler.py
chmod +x request_handler.py
chmod +x auth.py
chmod +x mraa_helper.py
chmod +x rfid_handler.py
chmod +x rtc_handler.py
chmod +x set_date_time.py
chmod +x get_project.sh

echo "Got the files"





# python3 app.py -p 80 -l 192.168.8.170

