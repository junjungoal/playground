class Queue
  def initialize(size)
    @size = size + 1
    @queue = Array.new(@size)
    
    @first = 0
    @last = 0
  end

  def enqueue(val)
    if (@last + 1) % @size == @first
      puts "queue is full"
    else
      @queue[@last] = val
      @last = (@last + 1) % @size
    end
  end

  def dequeue
    ret = nil
    if @first == @last
      return -1
    else
      ret = @queue[@first]
      @first = (@first + 1) % @size
      return ret
    end
  end

  def print_queue
    i = @first
    while i != @last
      puts @queue[i]
      i = (i + 1) % @size
    end
  end
end


class Example
  def main
    q = Queue.new( 5 )
    i = nil
    while i != 0
      puts "現在のキュー :"
      q.printQueue
      puts ""
      puts "コマンド 0:終了　1:ジョブをためる　2:ジョブを実行"
      i = gets.chomp.to_i
      case i
        when 1
          puts "ジョブの識別番号（1～1000）を適当に入力して下さい"
          j = gets.chomp.to_i
          if (j >= 1 && j <= 1000)
            q.enqueue(j)
          end
        when 2
          j = q.dequeue
          if j == -1
            puts "ジョブがないです"
          else
            puts "識別番号 : #{j} のジョブを実行中……"
          end
      end
    end
  end
end

