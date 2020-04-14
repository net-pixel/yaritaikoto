# README
## What is Yaritaikoto(#PostYourWishes) app
<img width="1164" alt="1_mainview" src="https://user-images.githubusercontent.com/62044473/79243966-475fe700-7eb1-11ea-8dc2-261f8cf9a704.png">
このアプリはコロナウイルスで自粛が続く中、コロナウイルスがある程度治り自粛要請が解除された際に、自粛中にはなかなかできなかったやりたい事をポストするアプリです。
This app is simply post and store data of the things you want to do after recovering from covid-19 so called coronavirus which happened in 2019 to 4/14/2020 as of today.

## URL
postyourwishes.herokuapp.com

## What can be done
このアプリでできることは..
What can be done with this app is..

* 一般ユーザー / User
- メインページ表示 / view main page
- 投稿画面でのやりたいこと閲覧 / view posts page
- 文字検索機能でのやりたいこと検索 / search the posts
- やりたいことの投稿 / post the things you want to do

* 管理者 / Admin
- 管理者でのログイン機能 / login the admin function
（一般ユーザーには気軽に使用してもらう為ログインせずに使える様にしている / It allows normal user to post without login in terms of simplicity）
- 管理者画面の表示 / view admin function
- 管理者によるポスト内容の編集 / edit the posts
- 管理者によるポスト内容の削除 / delete the posts

## Language Flamework
このアプリは下記の言語とフレームワークを使用しています。

This app is created with the following languages and flameworks.
- Ruby
- Ruby on rails
- JavaScript
- Json
- jQuery
- HTML
- scss
- Bootstrap
- Devise

## Further development?
もし時間に余裕がありポストのカテゴライズができればカテゴリー別の検索機能をつける。

If developper have time and posts are nicely categolised, category search function will be added.

## Details
ここからは機能の詳細について説明

The following is the details of this app.

### MainMenu
<img width="1164" alt="1_mainview" src="https://user-images.githubusercontent.com/62044473/79243966-475fe700-7eb1-11ea-8dc2-261f8cf9a704.png">
メインメニューでは検索機能のついたヘッダーと共に下記の2つのボタンが押せる様になっています。

* 投稿をみる
* やりたい事をポストする

ヘッダーは固定されているのでスクロールしてもいつでも検索できる様になっています。
また、ヘッダーのタイトルを押下する事でホーム画面に戻って来ることができます。

Main menu has basically two following button as well as search function in header.
* Check the posts
* Post the things you want to do

Header is fixed at the top so searchable even scroll down or go to any screen. Also title is available to press to go to home page.

### Search Function
<img width="1058" alt="2_search" src="https://user-images.githubusercontent.com/62044473/79244051-63638880-7eb1-11ea-839b-2f1b0727f3af.png">
検索機能は検索フォームに文字を入力すると候補を自動で出してくれる様にインクリメンタルサーチを実装しています。

In terms of search function, incremental search function is applied which words are input to show the matched posts.

### PostView
<img width="1164" alt="3_postview" src="https://user-images.githubusercontent.com/62044473/79244171-8726ce80-7eb1-11ea-8b75-033d36d25107.png">
みるボタンの押下もしくはスクロールで投稿をみる画面に行くことができます。
ビュー画面ではpaginate似て一定のポスト以上は次のページを作成する様になっています。

Pressing the Miru button or scroll down the page, post-view page is accessed. Post-view page automatically create the next page with sertain amount of posts.

### Post
<img width="1164" alt="4_post" src="https://user-images.githubusercontent.com/62044473/79244235-9dcd2580-7eb1-11ea-89da-b6be9c3a1c55.png">
やりたいことボタンの押下でやりたい事を投稿するフォーム画面に行くことができます。
フォーム画面にやりたい事を入力し、ポストボタンを押下する事で投稿がデータベースに送信されます。

Pressing the Yaritaikoto button, post page is accessed. Input the things you want to do and pressing post button will send information to database.

### AdminLogIn-Out
![5_admin](https://user-images.githubusercontent.com/62044473/79244293-b3dae600-7eb1-11ea-98dd-cb18ac43077d.jpg)
フッターには管理画面へのログイン・ログアウトボタンを実装しています。

* Login
Loginボタンを押下する事で管理者ログイン画面を表示することができます。
* Logout
Logoutボタンを押下する事で管理者権限からログアウトすることができます。

In the footer, login and logout button is placed.

* Login
Pressing the login button enable to access the admin view.
* Logout
Pressing the logout button enable to log out from the admin function.

### LoginForm
<img width="1058" alt="6_login" src="https://user-images.githubusercontent.com/62044473/79244338-c35a2f00-7eb1-11ea-9020-552786256f64.png">
Loginボタンを押下するとログイン情報入力画面へ行くことができます。
ここでは指定された管理者のみアクセスすることができます。

Pressing the login button anables cliant to access the admin function. Only adoministrator is accessible to this admin view.

### AdminView
<img width="1058" alt="7_adminview" src="https://user-images.githubusercontent.com/62044473/79244526-f69cbe00-7eb1-11ea-8204-22f920e594b7.png">
管理者画面では一つ一つのポストの編集及び削除を行うことができます。

In the admin view, each post could be editted and deleted.

### Edit
<img width="1164" alt="8_adminedit" src="https://user-images.githubusercontent.com/62044473/79244635-17651380-7eb2-11ea-9199-7c81ab3bf0e2.png">
編集ボタンを押下すると編集画面へ行くことができ、管理者権限にて編集画面からポストを編集することができます。

Pressing the edit button, edit view is accessed and post is editted.

## Database

### pages table
|Column|Type|Options|
|------|----|-------|
|content|text||

### users table
|Column|Type|Options|
|------|----|-------|
|email|sting|null: false|
|encrypted_password|string|null: false|
|role|string||

* users table detail
ユーザーテーブルは管理者ログイン及び管理者ページへのアクセスの為に使用しているのでDeviseのtrackable機能のみ残し他は削除

Only trackable function of devise is on as to only allow admin access.
