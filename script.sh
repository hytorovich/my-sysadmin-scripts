#!/bin/bash

N=5

for i in $(seq 1 3); do

    if ! echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---" >> report.txt; then
        echo "Ошибка: не удалось записать в report.txt" >&2
        exit 1
    fi

    free -h >> report.txt
    df -h >> report.txt
    uptime >> report.txt

    sleep "$N"
done

echo "Мониторинг завершён"
