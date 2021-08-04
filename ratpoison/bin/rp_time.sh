ratpoison -c "echo $(TZ=America/Los_Angeles date; date -u;TZ=Europe/London date; date; TZ=Asia/Singapore date;)"
