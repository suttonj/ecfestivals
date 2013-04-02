class Festival < ActiveRecord::Base
  attr_accessible :camping, :date, :details, :lineup, :logo, :name, :month, :url

  default_scope order: 'festivals.date ASC'
end
