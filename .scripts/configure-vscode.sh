
# Based on echo https://github.com/guard/listen/wiki/Increasing-the-amount-of-inotify-watchers
# Increase max file watchers
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

