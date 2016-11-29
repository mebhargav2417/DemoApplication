package com.mb2417.demo;

public class Parameters {
	
	public static String loginUser;
	public static String successLogin;
	public static String loginedUser;

	public static String getLoginedUser() {
		return loginedUser;
	}

	public static void setLoginedUser(String loginedUser) {
		Parameters.loginedUser = loginedUser;
	}

	public static String getSuccessLogin() {
		return successLogin;
	}

	public static void setSuccessLogin(String successLogin) {
		Parameters.successLogin = successLogin;
	}

	public static String getLoginUser() {
		return loginUser;
	}

	public static void setLoginUser(String loginUser) {
		Parameters.loginUser = loginUser;
	}

}
