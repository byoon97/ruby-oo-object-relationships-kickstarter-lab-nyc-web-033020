class Backer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def projects
    Project.all.select do |project|
      project.backer == self
    end
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end
end
