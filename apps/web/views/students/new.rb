module Web::Views::Students
  class New
    include Web::View

    def student_form
      form_for :student, routes.students_path, id: 'student-form' do
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
            submit 'Create Student', class: 'btn btn-primary'
          end
        end
      end
    end
  end
end
