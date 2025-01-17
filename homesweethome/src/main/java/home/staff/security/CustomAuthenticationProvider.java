package home.staff.security;

import java.sql.SQLException;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.InsufficientAuthenticationException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import home.staff.dto.EmployeeVO;
import home.staff.service.EmployeeService;

public class CustomAuthenticationProvider implements AuthenticationProvider {

	private EmployeeService employeeService;
	public CustomAuthenticationProvider(EmployeeService employeeService) {
		this.employeeService = employeeService;
	}
	
	@Override
	public Authentication authenticate(Authentication auth) throws AuthenticationException {
		String login_id = (String) auth.getPrincipal();
		String login_pwd = (String) auth.getCredentials();
		try {
			EmployeeVO employee = employeeService.getEmployee(login_id);
			
			if(employee!=null) {
				if(employee.getPwd().equals(login_pwd)) {
					
					UserDetails authUser = new User(employee);
					
					boolean invalidCheck = authUser.isAccountNonExpired() 
							&& authUser.isAccountNonLocked()
							&& authUser.isCredentialsNonExpired() 
							&& authUser.isEnabled();
					if (!invalidCheck) { //로그인 성공
						
						//로그인 성공
						// 스프링 시큐리티 내부 클래스로 인증 토큰 생성한다.
						UsernamePasswordAuthenticationToken result 
									= new UsernamePasswordAuthenticationToken(
								authUser.getUsername(), authUser.getPassword(), 
								authUser.getAuthorities());
						// 전달할 내용을 설정한 후
						result.setDetails(authUser);
						// 리턴한다. successHandler로 전송된다.
						return result;
						
					}else { //유효성 위배
						throw new InsufficientAuthenticationException("유효하지 않는 계정입니다.");
					}					
				}else { //패스워드 불일치
					throw new BadCredentialsException("패스워드가 일치하지 않습니다.");
				}
			}else { //아이디 불일치
				throw new UsernameNotFoundException("존재하지 않는 아이디입니다.");
			}
			
		}catch(SQLException e) {
			//에러 발생
			e.printStackTrace();
			throw new AuthenticationServiceException("서버 장애로 서비스가 불가합니다.");
		}
	}

	@Override
	public boolean supports(Class<?> authentication) {
		// TODO Auto-generated method stub
		return authentication.equals(UsernamePasswordAuthenticationToken.class);
	}

}

















