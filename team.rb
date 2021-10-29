class Team
  attr_accessor:name, :win, :lose, :draw
  
  def initialize(name, win, lose, draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end
  
  def calc_win_rate(win, lose)
   self.win.to_f / (self.win.to_f + self.lose.to_f)
  end

  def show_team_result(name,win,lose,draw)
    puts "#{self.name}の2020年の成績は#{self.win}勝#{self.lose}敗#{self.draw}、
    勝率は0.#{calc_win_rate(win,lose)}です。"
  end
end

Giants = Team.new("Giants",67, 45, 8)

puts Giants.calc_win_rate(67, 45)