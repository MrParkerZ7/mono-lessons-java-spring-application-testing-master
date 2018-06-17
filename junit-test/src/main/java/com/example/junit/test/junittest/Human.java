package com.example.junit.test.junittest;

public class Human {
    private int hp;
    private int mp;
    private boolean drunk;

    public Human() {
        this.hp = 500;
        this.mp = 50;
    }

    public Human(int hp, int mp) {
        this.hp = hp;
        this.mp = mp;
    }

    public boolean getDrunk() {
        return drunk;
    }

    public void setDrunk(boolean drunk) {
        this.drunk = drunk;
    }

    public void setMp(int mp) {
        this.mp = mp;
    }

    public void setHp(int hp) {
        this.hp = hp;
    }

    public int getHp() {
        return hp;
    }

    public int getMp() {
        return mp;
    }

    public int humanEvolution(Evolution evolution) {
        return evolution.getEvolution(hp,mp);
    }

}
