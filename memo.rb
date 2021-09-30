require "csv"
CSV.open('test.csv','w') do |test|
  while true
    puts "1(新規でメモを作成)、2(メモを編集する)、3(終了する)のいずれかをを入力してください。"
    memo_type = gets.chomp.to_s
    if memo_type == "1"
      puts "拡張子を除いたファイルを入力していください。"
    elsif memo_type == "2"
      puts "編集内容を入力してください。"
    elsif memo_type == "3"
      puts "処理を終了します。"
      break
    else
      puts "1または2または3を入力してください。"
    end
  end
 end

 require "csv"
CSV.foreach("test.csv") do |row|
  p row
end
