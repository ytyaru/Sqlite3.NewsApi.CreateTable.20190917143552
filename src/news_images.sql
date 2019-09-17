create table images(
  news_id integer, -- どの記事に対応した画像か
  url     text,    -- 拡張子も含めているはず。これ重要
  image   blob     -- バイナリ
);

