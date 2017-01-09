module Web::Views::Students
  class Edit
    include Web::View

    def student_form
      form_for :student, routes.students_path, id: 'student-form', values: { student: student }, method: :patch do
        div class: 'input' do
          label      :first_name
          text_field :first_name
        end

        div class: 'input' do
          label      :last_name
          text_field :last_name
        end

        div class: 'input' do
          label       :email
          email_field :email
        end

        div class: 'controls' do
          submit 'Edit Student'
        end
      end
    end
  end
end
