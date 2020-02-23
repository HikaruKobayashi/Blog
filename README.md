# Blog
自作のブログサイトを作成する。

## URL
https://decode-land.herokuapp.com/

## 動作方法
1.アプリを作成したいディレクトリに移動する。ex) `cd desktop`  
<br>
2.$`git clone https://github.com/HikaruKobayashi/Blog.git`を実行する。  
<br>
3.$`cd Blog`でMoneyHubディレクトリに移動する。  
<br>
4.$`docker-compose up -d`でアプリを起動する。  
<br>
5.$`docker ps -a`で起動しているコンテナのidを取得する。  
<br>
6.$`docker exec -it コンテナid bash`でコンテナの中に入る。  
<br>
7.#`rake db:create`でDBを作成する。  
<br>
8.#`rails db:migrate`でマイグレーションする。  
→ http://localhost:3000/ を起動してBlogが表示されていることを確認する。

## 開発に使用した技術
- Docker
- Heroku
- Ruby on Rails
