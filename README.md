# README

# Name

_Senior-to-do_

![Senior-to-do-title](https://user-images.githubusercontent.com/61644930/105633581-b9337b00-5e9c-11eb-9d92-aa23a2f4ed22.png)

# Overview

This is a to-do list for old people.

The feature is that you can check what you do every day and see the results as points.

# Description

Checking the to-do list and seeing the results immediately is an app that will improve your motivation.

# Requirement

HTML,CSS,jQuery,Ruby,Rails,MySQL

# Usage

### First screen

![１](https://user-images.githubusercontent.com/61644930/105634066-a66e7580-5e9f-11eb-93c1-149f10fd94d2.png)

### Screen when the check button is pressed

![２](https://user-images.githubusercontent.com/61644930/105634045-7fb03f00-5e9f-11eb-9eb9-1b0faeed68b1.png)

### Screen when the "Check" button is pressed

![３](https://user-images.githubusercontent.com/61644930/105634105-dc135e80-5e9f-11eb-9656-21e7a24a9468.png)

### Screen when the "Send" button is pressed

![4](https://user-images.githubusercontent.com/61644930/105634161-13820b00-5ea0-11eb-8215-3461d11008e8.png)

### Screen when the "View record" button is pressed

![5](https://user-images.githubusercontent.com/61644930/105634173-21d02700-5ea0-11eb-940c-0fd65c4403ea.png)

# Install

$ git clone https://github.com/nazonazopp/Senior_to_do

$ cd helloworld

$ bundle install

$ rails db:create

$ rails db:migrate

$ rails s

http://localhost:3000

# DB 設計

## Users テーブル

| Column        | Type   | Options                             |
| ------------- | ------ | ----------------------------------- |
| name          | string | null: false                         |
| email         | string | null: false, unque:true, index:ture |
| user_password | string | null: false                         |
| image         | string |

### Association

- has_many :comments
- has_many :posts

## Posts テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| user_id  | references | null: false, foreign_key: true |
| textBox1 | integer    |
| textBox2 | integer    |
| textBox3 | integer    |
| textBox4 | integer    |
| textBox5 | integer    |

### Association

- belongs_to :user

## Comments テーブル

| Column          | Type       | Options                       |
| --------------- | ---------- | ----------------------------- |
| user_id         | references | null: false,foreign_key: true |
| textBox1comment | string     |
| textBox2comment | string     |
| textBox3comment | string     |
| textBox4comment | string     |
| textBox5comment | string     |

### Association

- belongs_to :user

## Licence

[MIT](https://github.com/tcnksm/tool/blob/master/LICENCE)

## Author

[tcnksm](https://github.com/tcnksm)
