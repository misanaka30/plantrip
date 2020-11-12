## アプリケーション名
 plantrip
	
# アプリケーション概要
・ログインしているユーザーと旅行フォルダを作成できる
・簡単に旅行計画を立てられる
・行先を投稿し、行先の選定がしやすい
・ホテルや飛行機などの確定していることを画像で保存し、共有できる

# URL:

テスト用アカウント:

利用方法: ログインしたら、一緒に旅行に行くユーザーを決める

# 目指した課題解決
・行先を一緒に旅行に行く人と簡単に選定したい
・飛行機のチケットや新幹線の時間をすぐに確認したい

# 洗い出した要件

# 実装した機能についてのGIFと説明

# 実装予定の機能

# ローカルでの動作方法

# テーブル設計
## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :prefecture_users
- has_many :prefecture, through: prefecture_users
- has_many :places
- has_many :pins


## prefectures テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :prefecture_users
- has_many :users, through: prefecture_users
- has_many :places
- has_many :pins


## prefecture_users テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| user         | references | foreign_key: true |
| prefecture   | references | foreign_key: true |

### Association

- belongs_to :prefecture
- belongs_to :user


## places テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| name          | string     | null: false                    |
| url           | text       |                                |
| user          | references | null: false, foreign_key: true |
| prefecture    | references | null: false, foreign_key: true |

image
### Association

- belongs_to :prefecture
- belongs_to :user


## pins テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| name          | string     | null: false                    |
| url           | text       |                                |
| user          | references | null: false, foreign_key: true |
| prefecture    | references | null: false, foreign_key: true |

image
### Association

- belongs_to :prefecture
- belongs_to :user