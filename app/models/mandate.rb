class Mandate < ActiveRecord::Base
  has_many :interviews
  accepts_nested_attributes_for :interviews
 def new_interview_attributes=attributes
		    attributes.each do |each_record|
			buffer = []
			buffer_name = ""
		  each_record.each do |key,value|
			    if ['new_applicant_attributes'].include? key
				buffer << value
			end
		end
		each_record.delete_if { |key,value|   ['new_applicant_attributes'].include? key } 
				#buffer.delete_if { |key,value|  !( ['new_city_attributes'].include? key) } 
				interviews.build(each_record).applicants.build(buffer)
		               end
         end
end
