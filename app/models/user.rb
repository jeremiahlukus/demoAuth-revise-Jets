require 'revise_auth-jets'
class User < ApplicationRecord
  include ReviseAuth::Model
  has_many :api_tokens, dependent: :destroy
end
