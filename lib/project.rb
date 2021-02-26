class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def back_project(project)
        ProjectBacker.new(project, backer)
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backers = ProjectBacker.all.select do |pbp| 
          pbp.project == self
        end
        project_backers.map do |pbp|
          pbp.backer
        end
      end
    end