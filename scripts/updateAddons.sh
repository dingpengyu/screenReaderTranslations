#!/usr/bin/env bash

source checkProgs.sh

function usage() {
    echo "`basename $0` [-h]"
    echo "`basename $0`  <-f|-t>" [-l 'ar de fi']
    echo "    -h, (help) prints this help message."
    echo "    -f, (fromTranslators) copies files fromTranslators to vcs"
    echo "    -t, (toVcs) copies/merges files from vcs to translators"
    echo "    -l, (langs) process only the given languages"
    echo "    -a, (addons) process only the given addons"
}

langs=(am ar bg cs da de el es fi fr gl hr hu it is ja ko ne nl nb_NO nn_NO pl pt_BR pt_PT ru sk sv ta tr uk zh_CN zh_HK zh_TW)

while getopts a:fhtl: OPT; do
    case "$OPT" in
        (h) usage; exit 0;;
        (f) fromTranslators=1 ;;
        (t) toTranslators=1 ;;
        (l) langs=($OPTARG) ;;
        (a) availableAddons=($OPTARG) ;;
        (\?)
            # getopts issues an error message
            echo usage >&2
            exit 1
            ;;
    esac
done


if [ "$fromTranslators" == "$toTranslators" -a "$fromTranslators" == "" ]; then
    echo "error: need either '-f' fromTranslators, or -t, toTranslators"
    usage; exit 1
elif  [ "$fromTranslators" == "$toTranslators" -a "$fromTranslators" == "1" ]; then
    echo "error: '-f' and '-t' are mutually exclusive."
    usage; exit 1
fi


for lang in ${langs[*]}; do

    echo "processing $lang"
    # relative path from scripts directory to language directory.
    langOffset=../$lang

    if [ -e "${langOffset}/settings" ]; then
        source "${langOffset}/settings"
    else
        echo "warning: No settings file found, skipping."
        continue
    fi

    for addon in ${availableAddons[*]}; do
        addonOffset="addons/${addon}"

        eval process=\$${addon}
        if [ "$process" == "0" ]; then
            echo "  skipping $addon"
            continue
        fi

        echo "  processing $addon"

        if [ "$fromTranslators" == "1" ]; then
            srcPo="${langOffset}/add-ons/${addon}/nvda.po"
            targetPo="${addonOffset}/addon/locale/${lang}/LC_MESSAGES/nvda.po"
            srcIni="${langOffset}/add-ons/${addon}/manifest.ini"
            targetIni="${addonOffset}/addon/locale/${lang}/manifest.ini"

            echo "  checking nvda.po:"
            msgfmt  -c -o /tmp/tmp.mo "$srcPo"
            echo "  copying across nvda.po"
            mkdir -p "${addonOffset}/addon/locale/${lang}/LC_MESSAGES"
            cp "$srcPo" "$targetPo"
            file "$srcIni" | grep -iP "ascii|utf-8" >/dev/null
            if [ "$?" == "0" ]; then
                echo "  copying manifest.ini"
                cp "$srcIni" "$targetIni"
            else
                echo "  warning: ini file not utf8 or ascii, skipping."
            fi
        else
            echo "foo bar bas."
            pushd "$addonOffset" >/dev/null 2>&1
            scons pot
            popd >/dev/null 2>&1
            srcPo="${langOffset}/add-ons/${addon}/nvda.po"
            potFile="${addonOffset}/${addon}.pot"
            msgmerge -U "${srcPo}" "${potFile}"
            #srcIni="${addonOffset}/addon/manifest.ini"
            #targetIni="${langOffset}/add-ons/${addon}/manifest_en.ini"
            #cp "$srcIni" "$targetIni"
        fi
    done
done
echo "all done"
