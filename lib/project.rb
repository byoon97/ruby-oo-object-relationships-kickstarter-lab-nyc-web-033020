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
end
