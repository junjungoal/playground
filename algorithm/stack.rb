class StackTask
  def initialize(stackMaxSize)
    @stackMaxSize = stackMaxSize
    @stackTop = 0
    @stack = Array.new(@stackMaxSize)
  end

  def push(val)
    if (@stackTop == @stackMaxSize)
      puts "the stack is full"
    else
      @stack[@stackTop] = val
      @stackTop += 1
    end
  end

  def pop
    if(@stackTop == 0)
      puts "the stack is empty"
    else
      @stackTop -= 1
      @stack[@stackTop]
    end
  end
end

stack = StackTask.new(5)

p stack.push(1)
p stack.push(2)
p stack.push(3)
p stack.push(4)
p stack.push(5)
p stack.push(6)  # これは格納されない

p stack.pop
p stack.pop
p stack.pop
p stack.pop
p stack.pop
p stack.pop  # これは取り出せない


