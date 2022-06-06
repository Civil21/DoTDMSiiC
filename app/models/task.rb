class Task < ApplicationRecord
  belongs_to :user
  belongs_to :project, counter_cache: true
  belongs_to :topic
  has_rich_text :description
end
