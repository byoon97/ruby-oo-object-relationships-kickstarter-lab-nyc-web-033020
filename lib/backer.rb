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

  def backed_projects
    ProjectBacker.all.select do |key|
      key.map do self.project
      end
    end
  end
end
