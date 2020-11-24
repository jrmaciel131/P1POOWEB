/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fatecpg.poo;

import java.util.ArrayList;

/**
 *
 * @author jrmac
 */
public class Disciplina {
    private String nome, ementa;
    private int ciclo;
    private double nota;
    private ArrayList<Disciplina> disciplinas = new ArrayList<>();

    public Disciplina() {
    }

    public Disciplina(String name, String ementa, int ciclo) {
        this.nome = name;
        this.ementa = ementa;
        this.ciclo = ciclo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmenta() {
        return ementa;
    }

    public void setEmenta(String ementa) {
        this.ementa = ementa;
    }

    public int getCiclo() {
        return ciclo;
    }

    public void setCiclo(int ciclo) {
        this.ciclo = ciclo;
    }

    public double getNota() {
        return nota;
    }

    public void setNota(double nota) {
        this.nota = nota;
    }

    public ArrayList<Disciplina> getDisciplinas() {
        return disciplinas;
    }

    public void setDisciplinas(Disciplina disciplinas) {
        this.disciplinas.add(disciplinas);
    }
    
    public ArrayList<Disciplina> getList(){
        return disciplinas;
    }
    
    
    
    
    
}
