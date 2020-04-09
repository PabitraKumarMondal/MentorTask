package com.cognizant.validator;

import java.util.regex.Pattern;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.cognizant.model.User;

@Component
public class LoginValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return User.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		boolean upper = true, lower = true, special = true, numeric = true;

		ValidationUtils.rejectIfEmpty(errors, "userName","", "User Name cannot be blank");
		ValidationUtils.rejectIfEmpty(errors, "password","", "Password cannot be blank");

		//User user = (User) target;
		

		
		
//		if (Pattern.matches("[7-9]{1}[0-9]{9}", String.valueOf(rb.getContactNumber())) == false){
//			arg1.rejectValue("contactNumber","","invalid");
//		}
//		if (Pattern.matches("^\\w+@[a-zA-Z_]+?\\.[a-zA-Z]{2,3}$", rb.getEmailId()) == false){
//			arg1.rejectValue("emailId","", "invalid");
//			email = false;
//		}
//		if (Pattern.matches("^\\w+@[a-zA-Z_]+?\\.[a-zA-Z]{2,3}$", rb.getConfirmEmailId()) == false){
//			arg1.rejectValue("confirmEmailId","", "invalid");
//			confirmEmail = false;
//		}
//
//		if (rb.getEmailId().equalsIgnoreCase(rb.getConfirmEmailId()) == false && email && confirmEmail) {
//			arg1.rejectValue("confirmEmailId","", "mismatch");
//		}
//
//		if (rb.isStatus() == false){
//			arg1.rejectValue("status","", "invalid");
//		}
	}

}
