package org.shiro.realm;


import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.shiro.web.InitServlet;
import com.hep.model.User;
import com.hep.service.UserService;

public class UserRealm extends AuthorizingRealm {
	

	

	/**
	 * ��֤
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		System.out.println("ccccccccccc-------------------------");
		UserService userService = (UserService)InitServlet.getBean("userService");
		String username = token.getPrincipal().toString();
		String password = new String((char[])token.getCredentials());
		System.out.println("password----------------------------"+password);
		User user = userService.login(username, password);//�õ��û�
		System.out.println("username----------------------------"+username);
		SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user, user.getPassword(), this.getName());
		
		info.setCredentialsSalt(ByteSource.Util.bytes(user.getUsername()));//����   ǰ�� ���õ���ֵ���û���
		return info;
	}

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection arg0) {
		// TODO Auto-generated method stub
		return null;
	}

}
