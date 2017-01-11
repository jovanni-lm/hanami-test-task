module Web::Views::Students
  class Edit
    include Web::View

    def student_form
      form_for :student, routes.student_path(student.id), id: 'student-form', values: { student: student }, method: :patch do
        div class: 'col-md-8 col-md-offset-2' do
          div class: 'form-group' do
            label      :first_name
            text_field :first_name, class: 'form-control'
          end

          div class: 'form-group' do
            label      :last_name
            text_field :last_name, class: 'form-control'
          end

          div class: 'form-group' do
            label       :email
            email_field :email, class: 'form-control'
          end

          div class: 'controls' do
            submit 'Update Student', class: 'btn btn-primary'
          end
        end
      end
    end
  end
end
