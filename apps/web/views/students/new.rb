module Web::Views::Students
  class New
    include Web::View

    def student_form
      form_for :student, routes.students_path, id: 'student-form' do
        div class: 'input' do
          label      :first_name
          text_field :first_name
        end

        div class: 'input' do
          label      :last_name
          text_field :last_name
        end

        div class: 'input' do
          label      :email
          text_field :email
        end

        div class: 'controls' do
          submit 'Create Student'
        end
      end
    end
  end
end
