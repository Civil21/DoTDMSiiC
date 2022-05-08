class Project < ApplicationRecord
  has_many :project_users
  has_many :users, through: :project_users
  has_many :tasks
  has_many :topics, -> { order(position: :asc) }

  after_create :create_topic
  after_create :notification_all_users

  def in_team?(user)
    users.include?(user)
  end

  def next_topic_position
    topics.any? ? topics.last.position+1 : 0 
  end

  private

  def create_topic
    topics.create(name: "Default topic")
  end

  def notification_all_users
    User.find_each do |user|
      Notification.create!(object: self, user: user, notification_type: :new_project)
    end
  end
end
