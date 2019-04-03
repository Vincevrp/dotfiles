#!/bin/bash

MAILDIR=$HOME/.Mail
CFGDIR=$HOME/.config/mutt
PINNED=("inbox" "drafts" "sent" "archive" "spam" "junk" "bin" "trash")
RESULT=""

for BOX in $(find "${MAILDIR}" -maxdepth 1 -type d); do
    ITEMS=$(find "$BOX" -maxdepth 2 -type d -name cur)
    for PIN in "${PINNED[@]}"; do
        for DIR in $ITEMS; do
            ITEM=$(grep -i "${PIN}" <<< "${DIR}")
            if [ -n "$ITEM" ]; then
                RESULT+=$(printf "%s" "$ITEM")
            fi
        done
    done
    for DIR in $ITEMS; do
        ITEM=$(grep -Eiv "$(tr " " "|" <<< "${PINNED[@]}")" <<< "${DIR}")
        if [ -n "$ITEM" ]; then
            RESULT+=$(printf "%s" "$ITEM")
        fi
    done
done

sed -e "s|/cur|\"\n|g; s|${MAILDIR}|mailboxes \"+|g" <<< "${RESULT}" \
    > "${CFGDIR}"/mailboxes
