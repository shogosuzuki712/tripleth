## users テーブル

| Column                 | Type    | Options                   |
| ---------------------- | ------- | ------------------------- |
| name                   | string  | null: false               |
| email                  | string  | null: false, unique: true |
| encrypted_password     | string  | null: false               |

### Association
- has_one :users_chara
- has_one :users_person
- has_many :in_takes


## charas テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| text                   | text       | null: false                    |
| area                   | integer    | null: false                    |
| gender                 | integer    | null: false                    |
| age                    | integer    | null: false                    |
| job_style              | integer    | null: false                    |
| exercise_style         | integer    | null: false                    |
| user_id                | references | null: false, foreign_key: true |

### Association
- belongs_to :user, optional: true
- has_one_attached :image


## persons テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| height                 | integer    | null: false                    |
| weight                 | integer    | null: false                    |
| goal                   | integer    | null: false                    |
| user_id                | references | null: false, foreign_key: true |

### Association
- belongs_to :user, optional: true
- has_one_attached :image



## tweets テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| tweet                  | text       | null: false                    |
| title                  | string     | null: false                    |
| user_id                | references | null: false                    |

### Association
- belongs_to :user
- has_many: tweet_comments
- has_one_attached :image

<br>
<br>

## in_takes テーブル

<br>

| Column | Type | Options |
| ------ | ---- | ------- |
| food-category-id | integer | null: false |
| food-id | integer | null: false |
| start_time | datetime | null:false |
| user_id | references | null:false, foreign_key: true |

### Association
- belongs_to :user



テスト
