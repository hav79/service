package ru.hav.service.data;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDate;

public class Contract {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer id;

    private String number;
    private LocalDate startDate;
    private String contractor;
    private boolean isActive;

    public Contract() {
    }

    public Contract(String number, LocalDate startDate, String contractor) {
        this.number = number;
        this.startDate = startDate;
        this.contractor = contractor;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }

    public String getContractor() {
        return contractor;
    }

    public void setContractor(String contractor) {
        this.contractor = contractor;
    }

    public boolean isActive() {
        return isActive;
    }

    public void setActive(boolean active) {
        isActive = active;
    }
}
