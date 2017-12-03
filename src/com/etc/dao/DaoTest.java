
package com.etc.dao;

import java.util.List;

import com.etc.entity.AdminInfo;
import com.etc.entity.OrderItems;
import com.etc.entity.ProductDetail;
import com.etc.utils.BaseDao;

public class DaoTest {
      public static void main(String[] args) throws Exception {
		/*AdminDao ad = new AdminDao();
		System.out.println(ad.queryAllAdmin());
		System.out.println("xxx");
    	System.out.println(ad.querySimpleAdmin("ADMIN001", "123456"));*/
    	  //
         UserManageDao umd = new UserManageDao();
         AdminInfo login = umd.checkLogin("jackma", "123456");
         System.out.println(login);
	}
}
