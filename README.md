# README
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