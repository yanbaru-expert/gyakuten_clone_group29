EMAIL = 'test@example.com'
PASSWORD = 'passwords'

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
    user.password = PASSWORD
    puts 'ユーザーの初期データインポートに成功しました。'
end