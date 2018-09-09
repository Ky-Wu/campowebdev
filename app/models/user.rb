class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  validates :email, presence: true, if: :domain_check
  
  APPROVED_DOMAINS = ["auhsdschools.org"]
  def domain_check
    unless APPROVED_DOMAINS.any? { |word| email.end_with?(word) }
      errors.add(:email, "is not an auhsdschools.org email (Campo students only)" )
    end
  end
end
