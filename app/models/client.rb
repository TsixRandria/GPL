class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


 validates_presence_of :nom, format: {with: /\A[a-zA-z]{2-20}\z/, message: 'ne doit contenir que des lettres'}
 validates_presence_of :prenom, format: {with: /\A[a-zA-z]{2-20}\z/, message: 'ne doit contenir que des lettres'}
 validates_presence_of :telephone, format: {with: /\A[0-9]{10-15}\z/, message: 'ne doit contenir que des chiffre'}
 validates_presence_of :email, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: 'votre adress email ...?'}
end
