def find_item_by_name_in_collection(name, collection)

count = 0
  collection.each do |person|
    #  p person
    person.each do |k,v|
        if v == name
            return collection[count]
        end
    end
    count += 1
  end
  return nil
  end




def consolidate_cart(cart)
  h = Hash.new 0;
  unconsolidated_cart.each {|p| h[p] += 1};
  product_list_result = h.keys.map{|k| k["count"] = h[k]; k};
  product_list_result
end
