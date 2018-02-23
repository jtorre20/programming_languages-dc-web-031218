require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, attri|
    attri.each do |name, ty|
      ty.each do |key, value|
        new_hash[name] = {type: value, style: [style]}
        if name == :javascript
         new_hash[name][:style] = :oo, :functional  
        end
      end
    end
  end
  new_hash
end
