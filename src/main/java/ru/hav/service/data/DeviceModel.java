package ru.hav.service.data;

public enum DeviceModel {

    MK35F("МК-35Ф"),
    PRIM08F("ПРИМ-08Ф");

    private String originalName;

    DeviceModel(String originalName) {
        this.originalName = originalName;
    }

    public String getOriginalName() {
        return originalName;
    }
}
