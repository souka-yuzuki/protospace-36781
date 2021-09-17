

## usersテーブル

| Column     | Type       | Options      |
| ---------- | ---------- | ------------ |
| email      | string     | null: false  |
| password   | string     | null: false  |
| name       | string     | null: false  |
| profile    | text       | null: false  |
| occupation | text       | null: false  |
| position   | text       | null: false  |


### Association
- has_many :prototypes
- has_many :contents

## prototypesテーブル

| Column         | Type           | Options     |
| -------------- | -------------- | ----------- |
| title          | string         | null: false |
| catch_copy     | text           | null: false |
| concept        | text           | null: false |
| image          | ActiveStorage  |             |
| user           | references     |             |

### Association
- has_many :contents
- belongs_to :user

## commentsテーブル

| Column         | Type           | Options     |
| -------------- | -------------- | ----------- |
| text           | text           | null: false |
| user           | references     |             |
| prototype      | references     |             |

### Association
- belongs_to :prototype
- belongs_to :user
