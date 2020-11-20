#table設計

##users table
|Colum      |Type   |Options      |
|-----------|-------|-------------|
|name       |string |NOT NULL     |
|email      |string |NOT NULL     |
|password   |string |NOT NULL     |
### Association
-has_many :reservations


##administrators table
|Colum      |Type   |Options      |
|-----------|-------|-------------|
|name       |string |NOT NULL     |
|email      |string |NOT NULL     |
|password   |string |NOT NULL     |
### Association
-belongs_to :user


##saunas table
|Colum         |Type     |Options      |
|--------------|---------|-------------|
|name          |string   |NOT NULL     |
|sauna_deg     |integer  |NOT NULL     |
|water_deg     |integer  |NOT NULL     |
|price         |integer  |NOT NULL     |
|time_limit    |integer  |NOT NULL     |
|address       |text     |NOT NULL     |
|business_hours|integer  |NOT NULL     |
|image         |ActiveStorageで実装     |
### Association
-belongs_to :administrator
-has_many :reservations


##reservations table
|Colum      |Type     |Options      |
|-----------|---------|-------------|
|user       |reference|             |
|prototype  |reference|             |
|date       |integer  |NOT NULL     |
|hour       |integer  |NOT NULL     |
### Association
-belongs_to :user
-belongs_to :sauna
