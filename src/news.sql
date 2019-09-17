create table news(
  id         integer primary key,
  published  text,
  url        text,
  title      text,
  body       text  -- URL先から本文だけを抽出したプレーンテキスト
);
create index idx_news on news(published desc, id desc, url, title);
create table sources(
  id       integer primary key,
  domain   text, -- URLのドメイン名
  name     text, -- 情報源名
  created  text  -- 登録日時（同一ドメイン名が複数あるとき新しいほうを表示する）
);
create index idx_sources on sources(domain, created desc, id desc, name);

