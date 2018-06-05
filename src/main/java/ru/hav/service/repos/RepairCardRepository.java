package ru.hav.service.repos;

import org.springframework.data.repository.CrudRepository;
import ru.hav.service.data.RepairCard;

public interface RepairCardRepository extends CrudRepository<RepairCard, Long> {
}
