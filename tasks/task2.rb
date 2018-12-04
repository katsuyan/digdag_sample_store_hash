require 'yaml'

class Task2
  def task1
    hash_list = [{str: 'aaa', num: 12}, {str: 'bbb', num: 34}, {str: 'ccc', num: 56}, {str: 'ddd', num: 78}]
    Digdag.env.store(HASH_LIST: hash_list)
  end

  def task2
    p Digdag.env.params['HASH']
  end
end
