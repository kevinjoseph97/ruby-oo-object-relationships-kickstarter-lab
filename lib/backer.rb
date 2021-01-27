class Backer 

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.select {|projects| projects.backer == self}.map{|projects| projects.project}
    end







end
