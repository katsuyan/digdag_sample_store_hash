require 'yaml'

class Task
  def task1
    hash = {str: 'aaa', num: 123}
    Digdag.env.store(HASH: hash)
  end

  def task2
    hash = Digdag.env.params['HASH']
    puts '---hash---'
    p hash
    puts '---str---'
    p hash['str']
    puts '---b---'
    p hash['num']
  end
end