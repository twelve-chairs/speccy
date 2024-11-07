SOURCE_FILE="$1"

PASMO_PATH="/Users/air/speccy/pasmo/bin/pasmo"

rm -f "${SOURCE_FILE}".tap

"${PASMO_PATH}" --tapbas "${SOURCE_FILE}".asm "${SOURCE_FILE}".tap

open "${SOURCE_FILE}".tap

