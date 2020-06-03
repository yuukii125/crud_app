class User < ApplicationRecord
  
  enum gender: {"男": 1, "女": 2}
end
