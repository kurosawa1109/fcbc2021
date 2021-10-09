# アプリケーション名
「FUKUOKA Craft Beer Circle」
<br>

# アプリケーション概要
福岡でクラフトビールが好きな人たちが、情報を取得したり共有できるアプリ。
<br>

# URL
https://fcbc2021.herokuapp.com/

# テスト用アカウント
テスト
email：test@test.com
password:a12345
<br>

# 利用方法
ログイン後、レストラン一覧、ブリュワリー一覧、ビール投稿一覧ページにてそれぞれの情報を投稿できるようになり、他のユーザーが投稿した情報を閲覧できるようになる。
<br>

# 目指した課題解決
前職でクラフトビールのメーカーに勤務していました。主に営業、飲食店を通じてお客様に魅力を伝える仕事をしてきました。世界的に見るとクラフトビールはカルチャーとして認識されており、とても人気があります。日本でも近年クラフトビールのブームが起こっていますが、まだまだ認知度は低いと感じていました。理由としてはそもそも情報が集めにくい、ユーザーが少なくアウトプットする場が少ないといったことが挙げられます。そこで、クラフトビールの情報や、魅力をもっと色んな人に知ってもらえる場があったら良いなと考えるようになりました。<br>
さらに、昨今のコロナ禍でクラフトビール自体を飲む機会がなかったり、提供している飲食店がなくなってきているといった状況があり、クラフトビールを提供している飲食店を応援したいといった気持ちも強く持つようになりました。<br>
今回は、私が現在属している"福岡"というコミュニティーに限定して情報を発信、共有できるアプリを作成する事で福岡でのクラフトビールシーンを盛り上げたいと考えました。そして実際にお店に足を運びクラフトビールを楽しんでいただけたら良いなと思います。<br>
私が大好きな福岡、そしてクラフトビールに少しでも貢献できたらと思います。
<br>

# 洗い出した要件
![888032a636996ce34c08d70ef868dc2e](https://user-images.githubusercontent.com/88430509/135708707-d5d3cc24-8439-47d0-8a56-4f35fd0ae163.jpeg)
<img width="1326" alt="73d5a4d59265a5b1ad06e5afc815ffa8" src="https://user-images.githubusercontent.com/88430509/135708735-f6e1f5af-e8ff-4401-8b90-eee8746e4452.png">
<br>

# 実装した機能についての画像やGIFおよびその説明
- ユーザー新規登録<br>
フォームを入力するとユーザー登録ができ、閲覧できる様になる。
[![Image from Gyazo](https://i.gyazo.com/744e3af47e804ac9cc7baaf2f0254a77.gif)](https://gyazo.com/744e3af47e804ac9cc7baaf2f0254a77)
<br>

- ビール投稿<br>
フォームを入力して投稿すると一覧ページに遷移し、表示される。
[![Image from Gyazo](https://i.gyazo.com/0fa17e30ba91e1c0b6d57b689423ca1e.gif)](https://gyazo.com/0fa17e30ba91e1c0b6d57b689423ca1e)
<br>

# 実装予定の機能
- レストラン投稿機能
- ブリュワリー投稿機能
- コメント機能
- マイページ機能
<br>

# データベース設計

## テーブル設計
### ER図
![fcbc2021](https://user-images.githubusercontent.com/88430509/135707583-8d886cae-acad-473a-ae78-c5145186b77b.png)
<br>

### users テーブル

| Column             | Type     | Options     |
| ------------------ | -------- | ----------- |
| email              | string   | null: false |
| encrypted_password | string   | null: false |
| nickname           | string   | null: false |
| age_id             | integer  |             |
| gender_id          | integer  |             |
| favorite           | string   | null: false |

### Association

- has_many :posts
- has_many :restaurants
- has_many :posts
<br>

### posts テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| beer_name      | string     | null: false                    |
| style          | string     | null: false                    |
| description    | text       | null: false                    |
| assessment_id  | integer    | null: false                    |
| bar_name       | string     | null: false                    |
| user           | references | null: false, foreign_key: true |

### Association
- belongs_to :user
<br>

# restaurants テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| restaurants_name | string     | null: false                    |
| address          | string     | null: false                    |
| phone_number     | integer    | null: false                    |
| url              | string     | null: false                    |
| user             | references | null: false, foreign_key: true |

### Association
- belongs_to :user
<br>

# breweries テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| breweries_name  | string     | null: false                    |
| address         | string     | null: false                    |
| phone_number    | integer    | null: false                    |
| url             | string     | null: false                    |
| user            | references | null: false, foreign_key: true |

### Association
- belongs_to :user
<br>

# ローカルでの動作方法
- ruby 2.6.5
- rails 6.0.0