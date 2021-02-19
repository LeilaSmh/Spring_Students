package ensat.projectginf3.controllers;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ensat.projectginf3.entities.eleve;
import ensat.projectginf3.entities.filiere;

import ensat.projectginf3.exception.ResourceNotFoundException;
import ensat.projectginf3.services.eleveService;
import ensat.projectginf3.services.filiereService;

@Controller
@RequestMapping("/dashboard/eleve")
public class EleveController {

    @Autowired
    private eleveService eleveService;
    
    @Autowired
    private filiereService filiereService;

    @GetMapping("/list")
    public String listEleves(Model theModel) {
        List < eleve > Eleves = eleveService.getEleves();
        theModel.addAttribute("eleves", Eleves);
        return "dashboard/eleve/list-eleves";
    }

    @GetMapping("/showForm")
    public String showFormForAdd(Model LeModel) {
    	eleve eleve = new eleve();
    	List < filiere > Filieres = filiereService.getFilieres();
    	
        LeModel.addAttribute("eleve", eleve);
        LeModel.addAttribute("filieres",Filieres);
        return "dashboard/eleve/eleve-form";
    }

    @PostMapping("/saveEleve")
    public String saveEleve(@ModelAttribute("eleve") eleve eleve) {
    	eleveService.saveEleve(eleve);
        return "redirect:/dashboard/eleve/list";
    }

    @GetMapping("/updateForm")
    public String showFormForUpdate(@RequestParam("eleveId") int id,
        Model LeModel) throws ResourceNotFoundException {
    	eleve eleve = eleveService.getEleve(id); 
    	List < filiere > Filieres = filiereService.getFilieres();
        LeModel.addAttribute("filieres",Filieres);
        LeModel.addAttribute("eleve", eleve);
        return "dashboard/eleve/eleve-form";
    }

    @GetMapping("/delete")
    public String deleteEleve(@RequestParam("eleveId") int theId) throws ResourceNotFoundException {
    	eleveService.deleteEleve(theId);
        return "redirect:/dashboard/eleve/list";
    }
}