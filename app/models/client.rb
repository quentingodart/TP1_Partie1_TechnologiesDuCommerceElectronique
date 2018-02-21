class Client < ApplicationRecord
  belongs_to :adresse

  has_many :enfant, dependent: :destroy
  accepts_nested_attributes_for :enfant, :reject_if => :all_blank, :allow_destroy => true

  has_many :client_has_conjoint, dependent: :destroy
  accepts_nested_attributes_for :client_has_conjoint, :reject_if => :all_blank, :allow_destroy => true

  # has_many :client_has_employeur, dependent: :destroy
  # accepts_nested_attributes_for :client_has_employeur, :reject_if => :all_blank, :allow_destroy => true

  has_many :etats_civil, dependent: :destroy
  accepts_nested_attributes_for :etats_civil, :reject_if => :all_blank, :allow_destroy => true

  has_many :etude, dependent: :destroy
  accepts_nested_attributes_for :etude, :reject_if => :all_blank, :allow_destroy => true

  has_many :adresse, dependent: :destroy
  accepts_nested_attributes_for :adresse, :reject_if => :all_blank, :allow_destroy => true

  has_many :employeur, dependent: :destroy
  accepts_nested_attributes_for :employeur, :reject_if => :all_blank, :allow_destroy => true
end
