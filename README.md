# README

アプリ名
Cook

概要
クッキングアプリサービスです。
レシピと画像を投稿でき、それを閲覧する事が出来ます。
また検索機能でジャンルから絞る事が出来ます。

制作背景
気軽に投稿、閲覧出来るアプリを意識しました。
従来のクッキングアプリサービスは詳細ページに遷移するとスクロールしなければ画像、材料、工程がわからずにいる事が多くあり料理中にスマートフォンを触れる必要があることが不便ではないかと考えました。
なので、Cookは詳細ページの簡略化をする事で分かりやすく必要以上にスマートフォンを触らずにレシピ、完成形を閲覧できるようにと考えました。

DEMO

新規登録画面

投稿画面

詳細画面


実装予定の内容
トップページのビューの修正、詳細機能の実装
DEMOの画像添付

DB設計
# users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

# Association

- has_many :items

# items テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| image              | string | null: false |
| image_name         | string | null: false |
| material           | string | null: false |
| quantity           | string | null: false |
| process            | text   | null: false |
| ganre_id           | integer | null: false, dafault"4"  |
| user               | references | null: false, foreign_key: true |



# Association

- belongs_to :user
