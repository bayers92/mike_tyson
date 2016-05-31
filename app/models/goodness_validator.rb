class GoodnessValidator < ActiveModel::Validator
  def validate(record)
    if !record.email.include? School.find(record.school_id).domain
      record.errors[:email] << "You must use your Business School email"
    end
  end
end