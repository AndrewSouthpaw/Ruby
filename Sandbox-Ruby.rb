# empty hash {}
h1 = {}
h1["a"] = "Found A"
h1[false] = "Found false"
h1 => {"a"=>"Found A", false=>"Found false"}
h1[42] => nil
h1.keys => {"a", false}
h1.values => {"Found A", "Found false"}
h2 = {"SML"=>1, "Racket"=>2, "Ruby"=>3}
h2.size => 3
h2.each {|k,v| print k; print ": "; puts v}
# symbols:   :foo

# ranges
1..1000000 => 1..1000000  # super fast!  It's an object.
(1..100).inject {|acc,elt| acc + elt}	=> 5050
