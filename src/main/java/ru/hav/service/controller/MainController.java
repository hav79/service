package ru.hav.service.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import ru.hav.service.data.Device;
import ru.hav.service.data.DeviceModel;
import ru.hav.service.repos.DeviceRepository;

import javax.validation.Valid;

@Controller
public class MainController {

    private final DeviceRepository deviceRepository;

    @Autowired
    public MainController(DeviceRepository deviceRepository) {
        this.deviceRepository = deviceRepository;
    }

    @GetMapping("/")
    public String greeting(Model model) {
        return "greeting";
    }

    @GetMapping("/devices")
    public String devices(Model model) {
        Iterable<Device> devices = deviceRepository.findAll();

        model.addAttribute("devices", devices);
        model.addAttribute("models", DeviceModel.values());
        return "devices";
    }

    @PostMapping("add")
//    public String add(@RequestParam String deviceModel, @RequestParam String serialNumber, @RequestParam String place, Model model) {
    public String add(@Valid Device device, BindingResult bindingResult, Model model) {
//        Device newDevice = new Device(DeviceModel.valueOf(deviceModel), serialNumber, place);
        deviceRepository.save(device);

        return "redirect:/devices";
    }
}
