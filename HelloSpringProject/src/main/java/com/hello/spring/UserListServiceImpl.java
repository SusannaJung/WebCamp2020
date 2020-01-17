package com.hello.spring;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("UserListService")
public class UserListServiceImpl implements UserListService {
	 @Autowired
	    UserListDAOImpl userListDAO;
	     
	
		@Override
		public List<UserListResponseDTO> getUserListService() {
			// TODO Auto-generated method stub
			System.out.println("service call");
			
			return userListDAO.getUserListdao();
		}

}
