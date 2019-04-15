 def timer_for
   # TODO: Return time taken to execute the given block
  start_time = Time.now

 yield

  end_time = Time.now

 return end_time - start_time
 end

 def my_map(array)
   # TODO: Re-implement the same behavior as `Enumerable#map` without using it! You can use `#each` though.
 list = []
 array.each do |element|

 list.push(yield(element))
 end

 return list
 end

def tag(tag_name, attributes = nil)
  # TODO: Build HTML tags around content given in the block
  #       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]


tag_open = "<#{tag_name}"
closed = ">"
tag_close = "</#{tag_name}>"

if attributes != nil
  html_attr = " #{attributes[0]}=\"#{attributes[1]}\""
else
 html_attr = ""
end



return tag_open + html_attr + closed + yield + tag_close


end

