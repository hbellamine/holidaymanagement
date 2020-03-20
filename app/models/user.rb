class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :requests
         belongs_to :team
         enum level: [:ouvrier, :cadremoyen, :cadre, :directeur]
         enum accesstype: [:employe, :manager, :hrmanager, :safetymanager]




end
