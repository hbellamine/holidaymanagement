class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

    include PgSearch::Model
   pg_search_scope :search_by_nom_and_prenom,
    against: [:nom, :prenom],
    using: {
      tsearch: { prefix: true }
    }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :requests
         belongs_to :team
         enum level: [:ouvrier, :cadremoyen, :cadre, :directeur]
         enum accesstype: [:employe, :manager, :hrmanager, :safetymanager]




end
