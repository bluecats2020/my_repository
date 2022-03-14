package com.bjpowernode.controller;

import com.bjpowernode.entity.Student;
import com.bjpowernode.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Resource
    private StudentService studentService;

    @RequestMapping(value = "/addStudent")
    public ModelAndView addStudent(Student student){
        ModelAndView mv = new ModelAndView();
        int num = studentService.addStudent(student);
        String msg;
        if (num > 0){
            msg = "注册成功";
        }else{
            msg = "注册失败";
        }
        mv.addObject("msg",msg);
        mv.setViewName("result");
        return mv;
    }

    @ResponseBody
    @RequestMapping("/findStudents")
    public List<Student> findStudents(){
        return studentService.findStudent();
    }
}
