class GoodnessValidator < ActiveModel::Validator
  def validate(record)
    if !record.email.include? School.find(record.school_id).domain
      record.errors[:base] << "This person is evil"
    end
  end
end