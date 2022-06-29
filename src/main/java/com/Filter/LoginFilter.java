package com.Filter;

import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;

@WebFilter("/admin/*")
public class LoginFilter extends HttpFilter {

}
