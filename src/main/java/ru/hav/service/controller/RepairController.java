package ru.hav.service.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ru.hav.service.data.Device;
import ru.hav.service.data.RepairCard;
import ru.hav.service.repos.DeviceRepository;
import ru.hav.service.service.RepairCardService;

@Controller
@RequestMapping("/repair")
public class RepairController {

    private final RepairCardService repairCardService;

    private final DeviceRepository deviceRepository;

    @Autowired
    public RepairController(RepairCardService repairCardService, DeviceRepository deviceRepository) {
        this.repairCardService = repairCardService;
        this.deviceRepository = deviceRepository;
    }

    @GetMapping
    public String repairCardsList(Model model) {
        Iterable<RepairCard> repairCards = repairCardService.findAll();
        model.addAttribute("repairCards", repairCards);

        return "repair/repairCards";
    }

    @GetMapping("/new")
    public String newRepairCard(Model model) {
        Iterable<Device> devices = deviceRepository.findAll();
        model.addAttribute("devices", devices);
        return "repair/newCard";
    }

    @PostMapping("/new")
//    public String add(@Valid RepairCard repairCard, BindingResult bindingResult, Model model) {
    public String add(
            @RequestParam Device device,
            @RequestParam String startDate,
            @RequestParam String problem
//            Model model
    ) {
        repairCardService.addRepairCard(device, startDate, problem);
//        RepairCard repairCard = new RepairCard(device, LocalDate.parse(startDate), problem);
//        repairCardService.
//        repairCard.setDevice(device);
//        repairCardRepository.save(repairCard);
        return "redirect:/repair";
    }

    @GetMapping("{card}")
    public String updateRepairCard(@PathVariable RepairCard card, Model model) {
        model.addAttribute("repairCard", card);
        return "repair/editCard";
    }

    @PostMapping("/update")
    public String updateCard(
            @RequestParam("cardId") RepairCard repairCard,
            @RequestParam String startDate,
            @RequestParam String problem
    ) {
        repairCardService.updateRepairCard(repairCard, startDate, problem);
        return "redirect:/repair";
    }
}
