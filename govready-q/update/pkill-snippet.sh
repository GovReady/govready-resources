# Kick the processes to reload modules.
pkill -u govready-q -f uwsgi
pkill -u govready-q -f send_notification_emails