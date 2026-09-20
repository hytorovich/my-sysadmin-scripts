#!/bin/bash

N=5

for i in $(seq 1 3); do

    if ! echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---" >> monitor.log; then
        echo "Ошибка: не удалось записать в monitor.log" >&2
        exit 1
    fi

    free -h >> monitor.log
    df -h >> monitor.log
    uptime >> monitor.log

    sleep "$N"
done

echo "Мониторинг завершён"
