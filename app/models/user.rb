class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :project_users
  has_many :projects, through: :project_users
  has_many :tasks
  has_many :notifications

  after_create :notification_all_users

  def name
    email.split('@')[0]
  end

  private

  def notification_all_users
    User.find_each do |user|
      next if user.id == id
      Notification.create!(object: self, user: user, notification_type: :new_user)
    end
  end
end