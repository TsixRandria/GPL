class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :nom, message: "veuiller indiquer Nom"
  validates_presence_of :prenom, message: "veuiller indiquer votre prenom"
  validates_presence_of :telephone, message: "veiller indiquer votre numero de telephone"
end
