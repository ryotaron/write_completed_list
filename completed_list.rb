things = []

while true do
    sleep 0.2
    #入力画面
    puts <<~TEXT
    →質問：今日は何をしましたか？
    →終了する場合はそのままエンター
    TEXT

    #利用者の入力を受け付ける
    thing = gets.chomp

    #入力文章が、「私」で始まる場合は配列に格納処理
    if thing.start_with?("私")
      things << thing

    #空入力の調査、最終表示処理
    elsif thing.empty?

      #配列の中の数をカウント
      num = things.count
      
      #最終的な一覧表示
      sleep 0.5
      puts <<~TEXT
      エンター入力されたので、終了処理します!
      ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
      ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
      《本日の活動まとめ》
      ===========================

      TEXT
      puts things
      puts <<~TEXT
      
      本日、あなたは#{num}個のことを行いました！

      よくできました！
      ============================
      TEXT
    
    #私で始まっていなければ、配列に格納しない
    else ! thing.start_with?("私")
      sleep 1
      puts <<~TEXT
      ===================
      ＜注意！＞　文頭は必ず「私は」で表現する
      エンターを押して、次に進んでください。
      TEXT
      a = gets
      a.empty?
    end
    break if thing.empty?
end