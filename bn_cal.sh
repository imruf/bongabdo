#!/usr/bin/env bash

#  Credit To https://www.shawonruet.com/2016/03/english-to-bangla-date-converter-c.html
# According to Bangla Academy 2019 revision Boishakh-Aashwin will be 31days, Kartik-Choitra ( except Falgun ) will be 30days, Falgun will be 29days(30days in the leap year)
# Bangla date count starts with the rising of the sun. So date is corrected to change at 6 in morning with GMT+12 timezone


while getopts ":d:m:y:h" o; do case "${o}" in
	h) printf "Optional arguments for custom use:\\n  -d: Date\\n  -m: Month\\n  -y: Year\\n  -h: Show this help message\\n" && exit 1 ;;
	d) en_dt=${OPTARG} ;;
	m) en_m=${OPTARG} ;;
	y) en_y=${OPTARG} ;;
	*) printf "Invalid option: -%s\\n" "$OPTARG" && exit 1 ;;
esac done

# [ -z "$en_dt" ] && en_dt=$(date +%d)
[ -z "$en_dt" ] && en_dt=$(date +%d --date='TZ="AEST-12"')
[ -z "$en_m" ] && en_m=$(date +%m | sed 's/^0//g' )
[ -z "$en_y" ] && en_y=$(date +%Y)
lp_y=$(( "$en_y" % 4 ))
en_day=$(date +%a)


bongabdo() {
    if [ "$en_m" == 4 ]; then
        if [ "$en_dt" -le 13 ]; then
        bn_y=$(( "$en_y" - 594 ))
    else 
        bn_y=$(( "$en_y" - 593 ))
        fi

    elif [ "$en_m" -lt 4 ]; then
        bn_y=$(( "$en_y" - 594 ))
    elif [ "$en_m" -gt 4 ]; then
        bn_y=$(( "$en_y" - 593 ))
    fi
    printf "%s" "$bn_y"
}

bn_m_s_dt() {
    if [ "$en_m" == 4 ]; then
        if [ "$en_dt" -lt 14 ]; then
            bn_mn=12
            bn_m="Choitra"
            bn_s="Bosonto"
            bn_dt=$(( "$en_dt" + 14 + 3 ))
        elif [ "$en_dt" -ge 14 ]; then
            bn_mn=1
            bn_m="Boishakh"
            bn_s="Grishsho"
            bn_dt=$(( "$en_dt" - 14 + 1 ))
        fi
    fi

    if [ "$en_m" == 5 ]; then
        if [ "$en_dt" -lt 15 ]; then
            bn_mn=1
            bn_m="Boishakh"
            bn_s="Grishsho"
            bn_dt=$(( "$en_dt" + 15 + 2 ))
        elif [ "$en_dt" -ge 15 ]; then
            bn_mn=2
            bn_m="Joistha"
            bn_s="Grishsho"
            bn_dt=$(( "$en_dt" - 15 + 1 ))
        fi
    fi

    if [ "$en_m" == 6 ]; then
        if [ "$en_dt" -lt 15 ]; then
            bn_mn=2
            bn_m="Joistha"
            bn_s="Grishsho"
            bn_dt=$(( "$en_dt" + 15 + 2 ))
        elif [ "$en_dt" -ge 15 ]; then
            bn_mn=3
            bn_m="Aashar"
            bn_s="Borsha"
            bn_dt=$(( "$en_dt" - 15 + 1 ))
        fi
    fi

    if [ "$en_m" == 7 ]; then
        if [ "$en_dt" -lt 16 ]; then
            bn_mn=3
            bn_m="Aashar"
            bn_s="Borsha"
            bn_dt=$(( "$en_dt" + 16 ))
        elif [ "$en_dt" -ge 16 ]; then
            bn_mn=4
            bn_m="Srabon"
            bn_s="Borsha"
            bn_dt=$(( "$en_dt" - 16 + 1 ))
        fi
    fi

    if [ "$en_m" == 8 ]; then
        if [ "$en_dt" -lt 16 ]; then
            bn_mn=4
            bn_m="Srabon"
            bn_s="Borsha"
            bn_dt=$(( "$en_dt" + 16 ))
        elif [ "$en_dt" -ge 16 ]; then
            bn_mn=5
            bn_m="Vadro"
            bn_s="Sharot"
            bn_dt=$(( "$en_dt" - 16 + 1 ))
        fi
    fi

    if [ "$en_m" == 9 ]; then
        if [ "$en_dt" -lt 16 ]; then
            bn_mn=5
            bn_m="Vadro"
            bn_s="Sharot"
            bn_dt=$(( "$en_dt" + 16 ))
        elif [ "$en_dt" -ge 16 ]; then
            bn_mn=6
            bn_m="Aashwin"
            bn_s="Sharot"
            bn_dt=$(( "$en_dt" - 16 + 1 ))
        fi
    fi

    if [ "$en_m" == 10 ]; then
        if [ "$en_dt" -lt 17 ]; then
            bn_mn=6
            bn_m="Aashwin"
            bn_s="Sharot"
            bn_dt=$(( "$en_dt" + 15 ))
        elif [ "$en_dt" -ge 17 ]; then
            bn_mn=7
            bn_m="Kartik"
            bn_s="Hemanta"
            bn_dt=$(( "$en_dt" - 17 + 1 ))
        fi
    fi

    if [ "$en_m" == 11 ]; then
        if [ "$en_dt" -lt 16 ]; then
            bn_mn=7
            bn_m="Kartik"
            bn_s="Hemanta"
            bn_dt=$(( "$en_dt" + 14 + 1 ))
        elif [ "$en_dt" -ge 16 ]; then
            bn_mn=8
            bn_m="Agrahayon"
            bn_s="Hemanta"
            bn_dt=$(( "$en_dt" - 16 + 1 ))
        fi
    fi

    if [ "$en_m" == 12 ]; then
        if [ "$en_dt" -lt 16 ]; then
            bn_mn=8
            bn_m="Agrahayon"
            bn_s="Hemanta"
            bn_dt=$(( "$en_dt" + 14 + 1 ))
        elif [ "$en_dt" -ge 15 ]; then
            bn_mn=9
            bn_m="Poush"
            bn_s="Sheet"
            bn_dt=$(( "$en_dt" - 16 + 1 ))
        fi
    fi

    if [ "$en_m" == 1 ]; then
        if [ "$en_dt" -lt 15 ]; then
            bn_mn=9
            bn_m="Poush"
            bn_s="Sheet"
            bn_dt=$(( "$en_dt" + 13 + 3 ))
        elif [ "$en_dt" -ge 15 ]; then
            bn_mn=10
            bn_m="Magh"
            bn_s="Sheet"
            bn_dt=$(( "$en_dt" - 15 + 1 ))
        fi
    fi

    if [ "$en_m" == 2 ]; then
        if [ "$en_dt" -lt 14 ]; then
            bn_mn=10
            bn_m="Magh"
            bn_s="Sheet"
            bn_dt=$(( "$en_dt" + 12 + 5 ))
        elif [ "$en_dt" -ge 14 ]; then
            bn_mn=11
            bn_m="Falgun"
            bn_s="Bosonto"
            bn_dt=$(( "$en_dt" - 14 + 1 ))
        fi
    fi

    if [ "$en_m" == 3 ]; then
        if [ "$en_dt" -lt 15 ]; then
            if [ "$lp_y" -ne 0 ]; then
                bn_mn=11
                bn_m="Falgun"
                bn_s="Bosonto"
                bn_dt=$(( "$en_dt" + 15 ))
            else
                bn_mn=11
                bn_m="Falgun"
                bn_s="Bosonto"
                bn_dt=$(( "$en_dt" + 15 + 1 ))
            fi
        elif [ "$en_dt" -ge 15 ]; then
            bn_mn=12
            bn_m="Choitra"
            bn_s="Bosonto"
            bn_dt=$(( "$en_dt" - 15 + 1 ))
        fi
    fi
    printf "%s %s %s" $bn_s $bn_dt $bn_m
}

printf "%s %s" "$(bn_m_s_dt)" "$(bongabdo)"