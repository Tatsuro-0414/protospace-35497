# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| password           | string | null: false |
| profile            | text   | null: false |
| occupation         | text   | null: false |
| position           | text   | null: false |
### Association

- has_many :prototypes
- has_many :comments

## prototypes テーブル

| Column        | Type       | Options     |
| ------        | ------     | ----------- |
| title         | string     | null: false |
| catch_copy    | text       | null: false |
| image         | image      |<!-- # Active Storageで実装 -->
| user          | references | null: false, foreign_key:true|


### Association

- belongs_to :user
- has_many :comments

## commentsテーブル

| Column       | Type       | Options                        |
| ------       | ---------- | ------------------------------ |
| user         | references | null: false, foreign_key: true |
| prototype    | references | null: false, foreign_key: true |
| text         | text        | null:false                     |

### Association

- belongs_to :prototype
- belongs_to :user


