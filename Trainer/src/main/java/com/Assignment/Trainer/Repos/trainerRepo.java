/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Assignment.Trainer.Repos;

import com.Assignment.Trainer.Entities.Trainer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author parta
 */
@Repository
public interface trainerRepo extends JpaRepository<Trainer, Integer> {
    
}
