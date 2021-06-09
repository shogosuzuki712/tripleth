## users テーブル

| Column                 | Type    | Options                   |
| ---------------------- | ------- | ------------------------- |
| name                   | string  | null: false               |
| email                  | string  | null: false, unique: true |
| encrypted_password     | string  | null: false               |

### Association
- has_one :users_chara
- has_one :users_person


## users_chara テーブル

| Column                 | Type       | Options                           |
| ---------------------- | ---------- | --------------------------------- |
| text                   | text       | null: false                       |
| area                   | integer    | null: false                       |
| gender                 | integer    | null: false                       |
| age                    | integer    | null: false                       |
| job_style              | integer    | null: false                       |
| exercise_style         | integer    | null: false                       |
| user_id                | references | optional: true, foreign_key: true |

### Association
- belongs_to :user
- has_one_attached :image


## users_person テーブル

| Column                 | Type       | Options                           |
| ---------------------- | ---------- | --------------------------------- |
| height                 | integer    | null: false                       |
| weight                 | integer    | null: false                       |
| goal                   | integer    | null: false                       |
| user_id                | references | optional: true, foreign_key: true |

### Association
- belongs_to :user
- has_one_attached :image
