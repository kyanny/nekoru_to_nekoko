#!/bin/bash
set -eux

instagram-scraper --latest-stamps timestamp.txt $INSTAGRAM_USERNAME

ls $INSTAGRAM_USERNAME/*_n.jpg | xargs -I {} curl -X POST -H "Authorization: Bearer ${LINE_NOTIFY_ACCESS_TOKEN}" -F 'message=写真が投稿されました' -F "imageFile=@{}" https://notify-api.line.me/api/notify