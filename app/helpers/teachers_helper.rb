module TeachersHelper

  def student_confirm(student_id,sub_id)

    @pass_t = Pass.find_by(student_id: student_id,subject_id: sub_id)
    if @pass_t.present?
      pass_or_not = @pass_t.confirm
      if pass_or_not
        return true
      else
        return false
      end
    else
      return false
    end
  end


end
