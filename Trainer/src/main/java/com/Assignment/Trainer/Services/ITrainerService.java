/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Assignment.Trainer.Services;

import com.Assignment.Trainer.Entities.Trainer;
import java.util.List;


/**
 *
 * @author parta
 */
public interface ITrainerService {
    
    public List<Trainer> getAll();
    
    public void insertTrainer(Trainer t);

    public Trainer getTrainerbyId(int id);

    public void deleteTrainer(Trainer t);

    public void updateTrainer(Trainer t);
    
    
}
