/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Assignment.Trainer.Services;

import com.Assignment.Trainer.Entities.Trainer;
import com.Assignment.Trainer.Repos.trainerRepo;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author parta
 */
@Service
public class TrainerServiceImp implements ITrainerService {
    
@Autowired
    trainerRepo trepo;
    
    
    @Override
    public List<Trainer> getAll() {
        return trepo.findAll();
    }

    @Override
    public void insertTrainer(Trainer t) {
       trepo.save(t);
    }
    
    //
    @Override
    public Trainer getTrainerbyId(int id) {
       return trepo.getOne(id);
    }

    @Override
    public void deleteTrainer(Trainer t) {
       trepo.delete(t);
    }

    @Override
    public void updateTrainer(Trainer t) {
       trepo.save(t);
    }
    
}
