package group3.Medlink.appointment;

import group3.Medlink.patient.Patient;
import group3.Medlink.provider.Provider;
import jakarta.persistence.*;
import java.sql.*;
import java.time.LocalDate;
import java.time.LocalTime;

@Entity
@Table(name = "appointment")
public class Appointment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int appointment_id;

    @Column (name = "date")
    private LocalDate date;

    @Column (name = "time")
    private LocalTime time;

    @Column(name = "is_booked")
    private boolean booked;

    @ManyToOne
    @JoinColumn(name = "patient_id")
    private Patient patient_id;

    @ManyToOne
    @JoinColumn(name = "provider_id")
    private Provider provider_id;

    //Constructor
    public Appointment() {
    }

    //appointment_id
    public int getAppointment_id() {
        return appointment_id;
    }

    public void setAppointment_id(int appointment_id) {
        this.appointment_id = appointment_id;
    }

    // patient
    public Patient getPatient() {
        return patient_id;
    }

    public void setPatient(Patient patient) {
        this.patient_id = patient;
    }

    //provider
    public Provider getProvider() {
        return provider_id;
    }

    public void setProvider(Provider provider) {
        this.provider_id = provider;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public LocalTime getTime() {
        return time;
    }

    public void setTime(LocalTime time) {
        this.time = time;
    }

    public boolean isBooked() {
        return booked;
    }

    public void setBooked(boolean booked) {
        this.booked = booked;
    }
}