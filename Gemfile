source 'https://rubygems.org'
ruby '2.1.3'

# rails関連
gem 'rails', '4.2.0'
gem 'turbolinks'
gem 'grape'
gem 'jbuilder', '~> 2.0'
gem 'enumerize'
gem 'inherited_resources'
gem 'has_scope'
gem 'therubyracer', platforms: :ruby

gem 'sdoc', '~> 0.4.0', group: :doc

# DB関連
gem 'pg'

# CSS関連
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

# Javascript関連
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'coffee-rails', '~> 4.1.0'

# 認証・権限関連
gem 'devise'
gem 'cancancan'
#gem 'enum_help'

# Boostrap関連
gem 'twitter-bootswatch-rails', '~> 3.1.1'
gem 'twitter-bootswatch-rails-helpers'
gem 'less-rails'

# サーバー系
gem 'unicorn'

group :development do
  # 開発を効率化する関連
  gem 'guard-livereload', require: false # ソースを修正するとブラウザが自動でロードされ、画面を作るときに便利
  gem 'rails-erd'                        # rake-erdコマンドでActiveRecordからER図を作成できる
  gem 'spring-commands-rspec'            # bin/rspecコマンドを使えるようにし、rspecの起動を早めれる
  gem 'bullet'                           # n+1問題を発見

  # 保守性を上げる
  gem 'rubocop', require: false          # コーディング規約の自動チェック
end

group :development, :test do
  # pry関連(デバッグなど便利)
  gem 'pry-rails'    # rails cの対話式コンソールがirbの代わりにリッチなpryになる
  gem 'pry-doc'      # pry中に show-source [method名] でソース内を読める
  gem 'pry-byebug'   # binding.pryをソースに記載すると、ブレイクポイントとなりデバッグが可能になる
  gem 'pry-stack_explorer' # pry中にスタックを上がったり下がったり行き来できる

  # 表示整形関連(ログなど見やすくなる)
  gem 'hirb'         # モデルの出力結果を表形式で表示する
  gem 'hirb-unicode' # hirbの日本語などマルチバイト文字の出力時の出力結果がすれる問題に対応
  gem 'rails-flog', require: 'flog' # HashとSQLのログを見やすく整形
  gem 'better_errors'     # 開発中のエラー画面をリッチにする
  gem 'binding_of_caller' # 開発中のエラー画面にさらに変数の値を表示する
  gem 'awesome_print'     # Rubyオブジェクトに色をつけて表示して見やすくなる
  gem 'quiet_assets'      # ログのassetsを表示しないようにし、ログを見やすくしてくれる

  # テスト関連
  gem "rspec-rails"        # rspec本体
  gem "shoulda-matchers"   # モデルのテストを簡易にかけるmatcherが使える
  gem "factory_girl_rails" # テストデータ作成
  gem "capybara"           # エンドツーエンドテスト
  gem "capybara-webkit"    # エンドツーエンドテスト(javascript含む)
  gem 'launchy'            # capybaraのsave_and_open_pageメソッドの実行時に画面を開いてくれる
  gem "database_cleaner"   # エンドツーエンドテスト時のDBをクリーンにする
  gem "test-queue"         # テストを並列で実行する
  gem 'faker'              # 本物っぽいテストデータの作成
  gem 'faker-japanese'     # 本物っぽいテストデータの作成（日本語対応）
end

