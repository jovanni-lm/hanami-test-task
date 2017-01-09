class StudentRepository < Hanami::Repository
  associations do
    has_many :homeworks
  end

  def create_with_homeworks(data)
    assoc(:homeworks).create(data)
  end

  def find_with_homeworks(id)
    aggregate(:homeworks).where(student_id: id).as(Student).one
  end
end
