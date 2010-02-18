class Post < ActiveRecord::Base
  attr_accessible :title, :content
  cattr_reader :per_page
  @@per_page = 10
end
