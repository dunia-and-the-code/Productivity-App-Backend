class User < ApplicationRecord
    has_many :tasks
    has_many :jouurnal_posts
    has_many :excuses
end
