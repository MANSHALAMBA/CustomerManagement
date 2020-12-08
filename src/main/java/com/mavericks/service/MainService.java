package com.mavericks.service;

import com.mavericks.dao.MainDao;
import com.mavericks.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class MainService {

      @Autowired
      MainDao dao;

     public int registerCustomer(Customer c){
          return   dao.registerCustomer(c);

      }

      public Customer loginCustomer(Customer c){
         return dao.loginCustomer(c);
      }

      public int updateCustomer(Customer c){
         return dao.updateCustomer(c);
      }

      public ArrayList<Customer> getCustomers(){ return dao.getCustomers();  }

      public int deleteCustomer(int regNumber,String status) {
            if(status.equalsIgnoreCase("Active")){
                return dao.softDeleteCustomer(regNumber);


            }
            else {
                return dao.harddeleteCustomer(regNumber);
            }


     }

}
