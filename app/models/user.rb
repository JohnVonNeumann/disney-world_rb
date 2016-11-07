class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #after a user has been created, we assign a default role
  after_create :assign_default_role

  def hire
    add_role :staff
  end

  def buy_ticket(options)
    add_role :guest

    park = options[:park]
    add_role park if park.present? and Ride.parks.include?(park)
    add_role :hopper if options[:hopper]
    add_role :water if options[:water]
  end

  private

    #gives new users the default role of citizen
    def assign_default_role
      add_role(:citizen) if roles.blank?
    end

end
