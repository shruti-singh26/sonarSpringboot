package testcases;

import static org.junit.Assert.*;

import org.junit.Test;

import methods.Operations;

public class FunctionTest {

	@Test
	public void AdditionTest(){
		assertEquals(4,Operations.Add(2,2));
		assertEquals(9,Operations.Add(5,4));
	}
	
	@Test
	public void MultiplicationTest(){
		assertEquals(10,Operations.Multiply(2, 5));
		assertEquals(40,Operations.Multiply(8, 5));
	}

}
