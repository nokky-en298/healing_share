# テーブル設計

## users テーブル

| Column             | Type   | Options                  |
| ------------------ | ------ | ------------------------ |
| nickname           | string | null: false              |
| email              | string | null: false unique: true |
| encrypted_password | string | null: false              |

### Association

- has_many :healings
- has_many :comments
- has_many :likes

## healings テーブル

| Column | Type   | Options                        |
| ------ | ------ | ------------------------------ |
| name   | string | null: false                    |
| text   | text   | null: false                    |
| image  | string | null: false                    |

### Association

- has_many :comments
- has_many :likes
- belongs_to :user

## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| healing | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :healing

## likes テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| healing | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :healing