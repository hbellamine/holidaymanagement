class Daysoff < ApplicationRecord
  belongs_to :user

   after_initialize :set_daysoff_defaults

  def set_daysoff_defaults
    if user.level == "ouvrier"
        set user.paiddaysoff = 20
        set user.unpaiddaysoff = 0
        set user.absenteism = 0
        set user.injurydaysoff = 0

    elsif user.level == "cadremoyen"
        set user.paidaysoff = 25
        set user.unpaiddaysoff = 0
        set user.absenteism = 0
        set user.injurydaysoff = 0

    elsif user.level == "cadre"
        set user.paidaysoff = 30
        set user.unpaiddaysoff = 0
        set user.absenteism = 0
        set user.injurydaysoff = 0

    elsif user.level == "directeur"
        set user.paidaysoff = 35
        set user.unpaiddaysoff = 0
        set user.absenteism = 0
        set user.injurydaysoff = 0

    end
  end
end
