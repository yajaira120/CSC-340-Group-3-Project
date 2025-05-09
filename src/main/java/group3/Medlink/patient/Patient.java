package group3.Medlink.patient;

import group3.Medlink.appointment.Appointment;
import group3.Medlink.review.Review;
import jakarta.persistence.*;
import java.util.Date;
import java.util.List;

import group3.Medlink.provider.Provider;
import group3.Medlink.sysadmin.User;

@Entity
@Table (name = "patients")

public class Patient {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int patient_id;

    @Column(nullable=false)
    private String name;

    @Column(nullable=false)
    private String dob;

    @Column(nullable=false)
    private String address;

    @Column
    private String phone_number;

    @Column
    private String insurance_provider;

    @Column
    private String medical_history;

    @Column(nullable = false)
    private String email;

    @Column(nullable=false)
    private String password;

    @Column
    private String profile_picture;

    @ManyToOne
    @JoinColumn(name="providers")
    private Provider providers;

    @OneToMany(mappedBy = "patient")
    private List<Appointment> appointments;

    @OneToMany(mappedBy = "patient")
    private List<Review> reviews;

    //Constructor
    public Patient(){
    }

    //patient_id
    public int getPatient_id(){
        return patient_id;
    }
    public void setPatient_id(int patient_id){
        this.patient_id = patient_id;
    }

    //name
    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name = name;
    }

    //dob
    public String getDob(){
        return dob;
    }
    public void setDob(String dob){
        this.dob = dob;
    }

    //address
    public String getAddress(){
        return address;
    }
    public void setAddress(String address){
        this.address = address;
    }

    //phone_number
    public String getPhone_number(){
        return phone_number;
    }
    public void setPhone_number(String phone_number){
        this.phone_number = phone_number;
    }

    //insurance_provider
    public String getInsurance_provider(){
        return insurance_provider;
    }
    public void setInsurance_provider(String insurance_provider){
        this.insurance_provider = insurance_provider;
    }

    //medical_history
    public String getMedical_history(){
        return medical_history;
    }
    public void setMedical_history(String medical_history){
        this.medical_history = medical_history;
    }

    //email
    public String getEmail(){
        return email;
    }
    public void setEmail(String email){
        this.email = email;
    }

    //password
    public String getPassword(){
        return password;
    }
    public void setPassword(String password){
        this.password = password;
    }

    //profile_picture
    public String getProfile_picture(){
        return profile_picture;
    }
    public void setProfile_picture(String profile_picture){
        this.profile_picture = profile_picture;
    }

    //providers
    public Provider getProviders(){ return providers;}
    public void setProviders(Provider providers){ this.providers = providers;}

    //appointments
    public List<Appointment> getAppointments() {
        return appointments;
    }
    public void setAppointments(List<Appointment> appointments) {
        this.appointments = appointments;
    }

    //reviews
    public List<Review> getReviews() {
        return reviews;
    }
    public void setReviews(List<Review> reviews) {
        this.reviews = reviews;
    }


}
