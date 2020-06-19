package com.bank;

public aspect Logger {
	
	pointcut success() : call(* create*(..) );
    after() : success() {
    //Aspecto ejemplo: solo muestra este mensaje después de haber creado un usuario 
    	System.out.println("**** User created ****");
    }
    
    pointcut transaccion(): call(* moneyMakeTransaction());
    after() : transaccion(){
    	System.out.println("****Transaccion realizada****");
    }
    
}
