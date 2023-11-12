# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
*
## 技術的に工夫した点
* ユーザーの新規登録の際に、メールアドレスとパスワードは固有にして、ユーザー名と大学名は固有にならないようにdeviseで設定
* 複数ページが参照するCSSの統一
* PCとスマホ両方に対応（レスポンシブ対応）
* 検索フォームの虫眼鏡背景の実装
* 達成度のデフォルト値を0に設定
