class Project
  attr_reader :title

  def initialize(title)
    @title = title
  end

  def backer
    Backer.all.select do |backer|
      backer.project == self
    end
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end
end
