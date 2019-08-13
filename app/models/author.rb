class Author < ApplicationRecord
	authenticates_with_sorcery!
	validates_confirmation_of :password, message: "should match confirmation", if: :password

	validates :username, presence: { message: "in blank" },
	:uniqueness => { case_sensitive: false, message: "exists" }

	validates :email, presence: { message: "in blank" },
	:uniqueness => { case_sensitive: false, message: "exists" }

	validates :password, presence: { message: "in blank" }

end
