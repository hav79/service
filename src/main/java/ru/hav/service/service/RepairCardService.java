package ru.hav.service.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import ru.hav.service.data.Device;
import ru.hav.service.data.RepairCard;
import ru.hav.service.repos.RepairCardRepository;

import java.time.LocalDate;

@Service
public class RepairCardService {

    private final RepairCardRepository repairCardRepository;

    @Autowired
    public RepairCardService(RepairCardRepository repairCardRepository) {
        this.repairCardRepository = repairCardRepository;
    }

    public Iterable<RepairCard> findAll() {
        return repairCardRepository.findAll();
    }

    public void addRepairCard(Device device, String startDate, String problem) {
        RepairCard repairCard = new RepairCard(device, LocalDate.parse(startDate), problem);
        repairCardRepository.save(repairCard);
    }

    public void updateRepairCard(RepairCard repairCard, String startDate, String problem) {
        LocalDate oldDate = repairCard.getStartDate();
        LocalDate newDate = LocalDate.parse(startDate);
        if (newDate != null && !newDate.equals(oldDate)) {
            repairCard.setStartDate(newDate);
        }
        String oldProblem = repairCard.getProblem();
        if (!StringUtils.isEmpty(problem) && !problem.equals(oldProblem)) {
            repairCard.setProblem(problem);
        }
        repairCardRepository.save(repairCard);
    }
}
