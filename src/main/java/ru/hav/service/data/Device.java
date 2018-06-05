package ru.hav.service.data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.List;

@Entity
@Table(name = "device")
public class Device {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Long id;

//    @NotBlank(message = "Model cannot be empty")
    @Enumerated(EnumType.STRING)
    private DeviceModel deviceModel;
    @NotBlank(message = "Serial number cannot be empty")
    private String serialNumber;
    private String place;

    @OneToMany(mappedBy = "device")
//    @JoinColumn(name = "device_id")
    private List<RepairCard> repairCards;

    public Device() {
    }

    public Device(DeviceModel deviceModel, String serialNumber, String place) {
        this.deviceModel = deviceModel;
        this.serialNumber = serialNumber;
        this.place = place;
    }

    public Long getId() {
        return id;
    }

    public DeviceModel getDeviceModel() {
        return deviceModel;
    }

    public void setDeviceModel(DeviceModel deviceModel) {
        this.deviceModel = deviceModel;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public List<RepairCard> getRepairCards() {
        return repairCards;
    }

    public void setRepairCards(List<RepairCard> repairCards) {
        this.repairCards = repairCards;
    }
}
