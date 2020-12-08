package com.mavericks.controller;

import com.mavericks.model.Admin;
import com.mavericks.model.Customer;
import com.mavericks.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.ArrayList;

@Controller
@CrossOrigin(origins = "http://localhost:3000")
public class MainController {

    @Autowired
    MainService service;




   @GetMapping("/home")
    String getHomepage(@ModelAttribute("customer")Customer customer, @ModelAttribute("admin")Admin admin){
       return "homepage";
   }

   @PostMapping("/registercustomer")
    ModelAndView registerCustomer(@ModelAttribute("customer")  @Valid  Customer customer, BindingResult br){

       if(br.hasErrors()){
           return new ModelAndView("homepage","admin",new Admin());
       }

     int regId=service.registerCustomer(customer);
       if(regId==0) return new ModelAndView("error");

          return new ModelAndView("succcessRegister","id",regId);

   }

   @PostMapping("/loginCustomer")
    ModelAndView loginCustomer(@ModelAttribute("customer") Customer customer){

        Customer c= service.loginCustomer(customer);


        return new ModelAndView("customer","customer",c);
   }

   @PostMapping("/updateCustomer")
    String updateCustomer(@ModelAttribute("customer") @Valid Customer customer,BindingResult br){
       if(br.hasErrors()){
           return "customer";
       }
       int rows=service.updateCustomer(customer);
       if(rows<1) return "error";
       return "successUpdate";
   }

   @PostMapping("/loginAdmin")
    ModelAndView loginAdmin( @ModelAttribute("admin")Admin admin){
       if(admin.getUsername().equalsIgnoreCase("admin") && admin.getPswd().equalsIgnoreCase("admin")){
              ArrayList<Customer> c  =service.getCustomers();
              if(c==null) return new ModelAndView("error");

              return new ModelAndView("customerReadOnly","customers",c);

       }
       return new ModelAndView("invalidLogin");

   }

    @PostMapping("/loginRm")
    ModelAndView loginRm( @ModelAttribute("admin")Admin admin){
        if(admin.getUsername().equalsIgnoreCase("admin") && admin.getPswd().equalsIgnoreCase("admin")){
            ArrayList<Customer> c  =service.getCustomers();
            if(c==null) return new ModelAndView("error");

            return new ModelAndView("customerReadOnlyWithoutdel","customers",c);

        }
        return new ModelAndView("invalidLogin");

    }

    @GetMapping("/deleteCustomer/{cdetails}")
    ModelAndView deleteCustomer(@PathVariable("cdetails") String cdetails){

          String[] customerDetails=cdetails.split("&");
          int regNumber= Integer.parseInt(customerDetails[0].split("=")[1]);
          String status=customerDetails[1].split("=")[1];

          int rows=service.deleteCustomer(regNumber,status);

           return new ModelAndView("deleteCustomer","rows",rows);
    }


    // ************** EXPERIMENT *************
    @ResponseBody
    @GetMapping("/getNumbers")
    ArrayList<Integer> get(){
       ArrayList list= new ArrayList<Integer>();
       list.add(new Integer(1));
       list.add(new Integer(2));
       list.add(new Integer(3));
       list.add(new Integer(4));
       return list;
    }

    @ResponseBody
    @PostMapping("/postNumbers")
    String post(@RequestBody Object o){
        System.out.println(o);
        return "accepted";
    }








}
