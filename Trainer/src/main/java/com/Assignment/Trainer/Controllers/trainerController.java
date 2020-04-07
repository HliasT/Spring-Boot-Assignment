/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Assignment.Trainer.Controllers;

import com.Assignment.Trainer.Entities.Trainer;
import com.Assignment.Trainer.Repos.trainerRepo;
import com.Assignment.Trainer.Services.ITrainerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;




/**
 *
 * @author parta
 */

@Controller
public class trainerController {
    
    @Autowired
    ITrainerService itrainerService;
    
      @Autowired
    trainerRepo trainerrepo;
    
 @GetMapping("/")
    public String getAllTrainers (ModelMap mm){
    mm.addAttribute("TrainerList", itrainerService.getAll());
    return ("showalltrainers");
    }
    
    @PostMapping("/delete")
    public String deletetrainer (@RequestParam("TrainerID") String trainerId, ModelMap mm){
    int id = Integer.parseInt(trainerId);
    Trainer t = itrainerService.getTrainerbyId(id);
    itrainerService.deleteTrainer(t);
    mm.addAttribute("message", "Trainer Deleted");
    return getAllTrainers(mm);
    }
    
    @GetMapping("/preCreate")
    public String createTrainer(ModelMap mm) {
        mm.addAttribute("newTrainer", new Trainer());
        return "create";
    }
    
    @PostMapping("/saveNew")
  public String saveNewTrainer(@ModelAttribute("newTrainer") Trainer t, ModelMap mm) {
  itrainerService.insertTrainer(t);
  mm.addAttribute("message", "Trainer Created");
        return getAllTrainers(mm);
  
  }
  
     @PostMapping("/preUpdateTrainer")
    public String preUpdateTrainer(@RequestParam("TrainerID") String trainerid, ModelMap mm) {
        int updateTrainerById = Integer.parseInt(trainerid);
        Trainer t = trainerrepo.findById(updateTrainerById).get();                       //thelei get gia na to traviksei 
        mm.addAttribute("Trainer", t);
        return "update";
    }
  
   @PostMapping("/updateTrainer")
    public String updateTrainer(@ModelAttribute("updateTrainer") Trainer t, ModelMap mm) {
        itrainerService.updateTrainer(t);
        mm.addAttribute("message", "Trainer Updated");
        return getAllTrainers(mm);
    }
  
  
}
