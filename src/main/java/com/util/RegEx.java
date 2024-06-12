package com.util;

public class RegEx {
	public static void main(String[] args) {
		String alphaRegEx ="[A-za-z]+";
		String name= "Ram";
		System.out.println(name.matches(alphaRegEx));
	}
}
