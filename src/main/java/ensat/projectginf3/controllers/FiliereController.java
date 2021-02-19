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

import ensat.projectginf3.entities.filiere;
import ensat.projectginf3.exception.ResourceNotFoundException;
import ensat.projectginf3.services.filiereService;

@Controller
@RequestMapping("/dashboard/filiere")
public class FiliereController {

    @Autowired
    private filiereService filiereService;

    @GetMapping("/list")
    public String listFilieres(Model theModel) {
        List < filiere > LesFilieres = filiereService.getFilieres();
        theModel.addAttribute("filieres", LesFilieres);
        return "dashboard/filiere/list-filieres";
    }

    @GetMapping("/showForm")
    public String showFormForAdd(Model LeModel) {
        filiere LaFiliere = new filiere();
        LeModel.addAttribute("filiere", LaFiliere);
        return "dashboard/filiere/filiere-form";
    }

    @PostMapping("/saveFiliere")
    public String saveFiliere(@ModelAttribute("filiere") filiere LaFiliere) {
        filiereService.saveFiliere(LaFiliere);
        return "redirect:/dashboard/filiere/list";
    }

    @GetMapping("/updateForm")
    public String showFormForUpdate(@RequestParam("filiereId") int theId,
        Model LeModel) throws ResourceNotFoundException {
        filiere LaFiliere = filiereService.getFiliere(theId);
        LeModel.addAttribute("filiere", LaFiliere);
        return "dashboard/filiere/filiere-form";
    }

    @GetMapping("/delete")
    public String deleteFiliere(@RequestParam("filiereId") int theId) throws ResourceNotFoundException {
        filiereService.deleteFiliere(theId);
        return "redirect:/dashboard/filiere/list";
    }
}