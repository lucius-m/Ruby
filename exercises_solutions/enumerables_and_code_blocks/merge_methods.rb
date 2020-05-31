# Merge
# Used for hashes only
# merges two hashes together
# Block can provide rules to use when merging
#--------------------------------------------------------

h1 = {:a => 2, :b => 4, :c => 6}
h2 = {:a => 3, :b => 4, :d => 8}

h1.merge(h2)
# {:a => 3, :b => 4, :c => 6, :d => 8}
# problem with value of :a 

h2.merge(h1)
# {:a => 2, :b => 4, :c => 6, :d => 8}
# problem with value of :a 
#_________________________________________________________
# KEY CONFLICT
h1.merge(h2) {|key, old, new| old}
# {:a => 2, :b => 4, :c => 6, :d => 8}
# saves old value (h1 value of key :a)


h1.merge(h2) {|key, old, new| new}
# {:a => 3, :b => 4, :c => 6, :d => 8}
# saves new value (h2 value of key :a)

#---------------------------------------------------------
h1 = {:a => 2, :b => 4, :c => 6}
h2 = {:a => 3, :b => 4, :d => 8}

h1.merge(h2) {|k, o, n| o < n ? o : n}
# {:a => 2, :b => 4, :c => 6, :d => 8}

h1.merge(h2) {|k, o, n| o * n}
# {:a => 6, :b => 16, :c => 6, :d => 8}
