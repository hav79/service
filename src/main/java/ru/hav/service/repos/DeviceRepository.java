package ru.hav.service.repos;

import org.springframework.data.repository.CrudRepository;
import ru.hav.service.data.Device;

public interface DeviceRepository extends CrudRepository<Device, Long> {
}
