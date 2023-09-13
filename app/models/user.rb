require 'revise_auth-jets'
class User < ApplicationRecord
  include ReviseAuth::Model
end
