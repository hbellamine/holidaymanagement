class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :requests
         has_one :daysoff
         enum level: [:ouvrier, :cadremoyen, :cadre, :directeur]
         enum accesstype: [:employee, :manager, :hrmanager, :safetymanager]

end
