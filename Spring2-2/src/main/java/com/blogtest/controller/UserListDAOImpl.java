package com.blogtest.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

@Repository("userListDAO")

public class UserListDAOImpl implements UserListDAO {
	
	public List<UserListResponseDTO> getUserListdao() 
    {
		System.out.println("dao call");
		
		
        List<UserListResponseDTO> userlist = new ArrayList<UserListResponseDTO>();
         
        UserListResponseDTO list = new UserListResponseDTO();
        list.setUserName("홍길동 ");
        list.setUserAge("26");
        list.setUserAddress("경기도 수원시  ");
        list.setUserImage("peopleimage.png");
        
        userlist.add(list);
        
        UserListResponseDTO list2 = new UserListResponseDTO();
        list.setUserName("박한동  ");
        list.setUserAge("25 ");
        list.setUserAddress("경상도 부산   ");
        list.setUserImage("peopleimage.png");
        
        userlist.add(list2);
        
        UserListResponseDTO list3 = new UserListResponseDTO();
        list.setUserName("김도원 ");
        list.setUserAge("23 ");
        list.setUserAddress("경기도 평택시   ");
        list.setUserImage("peopleimage.png");
        
        userlist.add(list3);
        
        return userlist;
         
       
    }
	
	

}
