module Web::Views::Homeworks
  class New
    include Web::View

    def homework_form
      form_for :homework, routes.homeworks_path, id: 'homework-form' do
        div class: 'col-md-8 col-md-offset-2' do
          # select :student_id, available_students

          div class: 'form-group' do
            label      :title
            text_field :title, class: 'form-control'
          end

          div class: 'form-group' do
            label     :description
            text_area :description, class: 'form-control'
          end

          div class: 'form-group' do
            label      :url
            text_field :url, class: 'form-control'
          end

          div class: 'controls' do
            submit 'Create Homework'
          end
        end
      end
    end

    def available_students
      StudentRepository.new.all.map { |student| ["#{student.first_name} #{student.last_name}", student.id] }
    end
  end
end
