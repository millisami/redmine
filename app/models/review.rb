class Review < ActiveRecord::Base
  set_table_name 'comments'
  
  belongs_to :commented, :polymorphic => true
  belongs_to :author, :class_name => 'User', :foreign_key => 'author_id'

  validates_presence_of :commented, :author, :comments
end
