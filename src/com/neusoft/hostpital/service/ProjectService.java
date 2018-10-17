package com.neusoft.hostpital.service;
import java.util.List;

import com.neusoft.hostpital.vo.Armarium;
import com.neusoft.hostpital.vo.Project;
import com.neusoft.hostpital.vo.Project_Drugs;


public interface ProjectService {
        void save(Project project);
        boolean removeProject(int project_id);
        boolean updateProject(Project project);
        List<Project> selectAllProject();
        Project selectProjectById(int project_id);
        Project selectProject1(String project_no);
     
}
