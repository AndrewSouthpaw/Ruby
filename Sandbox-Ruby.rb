	a = [3,5,7,9]
	i = b.count {|x| x >= 6 }
	# don't need first-class function for this
	c = a.map {|x| {|y| x >= y } } #want array where ith is function that takes
        #arg y, returns true if a in that position is >=
        #to that value
	# blocks can't do this!
	c = a.map {|x| (lambda {|y| x >= y}) }
	c[2].call #error, expects 1 argument
	c[2].call 17  => false
	c.count {|x| x.call(5) } => 3
