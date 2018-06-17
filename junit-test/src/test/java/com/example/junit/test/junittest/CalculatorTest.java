package com.example.junit.test.junittest;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.assertEquals;

@RunWith(SpringRunner.class)
public class CalculatorTest {

    private Calculator calculator;

    @Before // User to setup environment be for run test, if I not misunderstand.
    public void setup() {
        this.calculator = new Calculator();
    }

    @Test
    public void valid_add() {
        assertEquals(5, this.calculator.add(2, 3));
    }
}
