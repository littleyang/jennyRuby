class User < ActiveRecord::Base
  attr_accessible :name

  #follow an user
  def follow!(user)
    $redis.multi do
      $redis.sadd(self.redis_key(:following),user.id)
      $redis.sadd(user.redis_key(:followers),self.id)
    end
  end

  # unfolloer an user
  def unfollow!(user)
    $redis.multi do
      $redis.srem(self.redis_key(:following),user.id)
      $redis.srem(user.redis_key(:followers),self.id)
    end
  end

  # find my followers
   def my_followers
     user_ids = $redis.smembers(self.redis_key(:followers))
     User.where(:id=>user_ids)
   end

   # my_following
   def my_following
     user_ids = $redis.smembers(self.redis_key(:following))
     User.where(:id=>user_ids)
   end

   # users who follow and are been followed by self
   def friends
     user_ids = $redis.sinter(self.redis_key(:following),self.redis_key(:followers))
     User.where(:id=>user_ids)
   end

   # check wether a user is my follower
   def followed_by?(user)
      $redis.sismember(self.redis_key(:followers), user.id)
   end

   # check whither self follow a user
    def following?(user)
      $redis.sismember(self.redis_key(:following), user.id)
    end

    # following count
    def following_count
       $redis.scard(self.redis_key(:following))
    end

    # follower count
    def followers_count
       $redis.scard(self.redis_key(:followers))
    end

    # helper for redis key
     def redis_key(str)
        "user:#{self.id}:#{str}"
     end

end
