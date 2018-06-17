package com.example.junit.test.junittest;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;
import static org.mockito.BDDMockito.given;
import static org.mockito.Mockito.verify;

@RunWith(SpringRunner.class)
public class HumanTest {

    private Human human;

    @MockBean
    private Evolution evolution;

    @Before
    public void setup() {
        human = new Human();
    }

    @Test
    public void valid_evolution_stub() {
        given(this.evolution.getEvolution(this.human.getHp(), this.human.getMp())).willReturn((550));
        assertEquals(550, this.human.humanEvolution(this.evolution));

        // Verify our mock which we really call our mock or else
        verify(this.evolution).getEvolution(this.human.getHp(), this.human.getMp());
    }

    @Test
    public void valid_hp() {
        assertEquals(500, this.human.getHp());
    }

    @Test
    public void valid_mp() {
        assertEquals(50, this.human.getMp());
    }

    @Test
    public void valid_drunk_state() {
        assertFalse(human.getDrunk());
    }

    @Test
    public void valid_set_drunk_state() {
        human.setDrunk(true);
        assertTrue(human.getDrunk());
    }
}
