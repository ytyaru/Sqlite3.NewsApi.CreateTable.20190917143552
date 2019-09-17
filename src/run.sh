SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"
sqlite3 news.db < news.sql
sqlite3 news_images.db < news_images.sql

