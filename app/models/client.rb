class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_presence_of :nom, format: {whith: /\A[a-zA-Z]{4-20}\z/, message: 'invalider'}
  validates_presence_of :prenom, format: {whith: /\A[a-zA-Z]{4-20}\z/, message: 'invalider'}
  validates_presence_of :telephone, format: {whith: /\A[0-9]{10-20}\z/, message: 'invalider'}
end
