class Task < ApplicationRecord
	belongs_to :user

	#validate the content and user id 
	validates :user_id, presence: true
	validates :content, presence: true

	#specify the use of the auto_html processor.
	auto_html_for :content do
		html_escape
		image
		youtube(width: '100%', height: 250 )
		link(target: '_blank', rel: 'nofollow')
		simple_format
	end
end
