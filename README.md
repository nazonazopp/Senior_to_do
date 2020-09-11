# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

# Name

Senior-to-do

# Overview

# Description

# Demo

# VS.

# Requirement

# Usage

# Install

# Contribution

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
