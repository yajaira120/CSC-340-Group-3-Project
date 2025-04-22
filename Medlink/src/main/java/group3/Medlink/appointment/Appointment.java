package group3.Medlink.appointment;

import group3.Medlink.patient.Patient;
//import group3.Medlink.provider.Provider;
import jakarta.persistence.*;
import java.sql.*;

@Entity
@Table(name = "appointment")
public class Appointment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int appointment_id;

    @ManyToOne
    @JoinColumn(name = "patient_id", nullable = false)
    private Patient patient;

   // @ManyToOne
   // @JoinColumn(name = "provider_id", nullable = false)
    //private Provider provider;

    @Column(nullable = false)
    private Date appointment_date;

    @Column(nullable = false)
    private Time appointment_time;

    @Column
    private String status;

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
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    //provider
    //public Provider getProvider() {
    //    return provider;
   // }

  //  public void setProvider(Provider provider) {
    //    this.provider = provider;
  //  }

    //appointment_date
    public Date getAppointment_date() {
        return appointment_date;
    }

    public void setAppointment_date(Date appointment_date) {
        this.appointment_date = appointment_date;
    }

    //appointment_time
    public Time getAppointment_time() {
        return appointment_time;
    }

    public void setAppointment_time(Time appointment_time) {
        this.appointment_time = appointment_time;
    }

    //status
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
