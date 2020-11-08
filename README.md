# README

アプリケーション名: plantrip
	
アプリケーション概要:旅行計画を立てることができる

URL:

テスト用アカウント:

利用方法:

目指した課題解決:

洗い出した要件:

実装した機能についてのGIFと説明:

実装予定の機能:

ローカルでの動作方法:

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