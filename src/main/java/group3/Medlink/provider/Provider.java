package group3.Medlink.provider;


import group3.Medlink.appointment.Appointment;
import group3.Medlink.review.Review;
import jakarta.persistence.*;
import org.hibernate.annotations.Columns;

import java.util.Date;
import java.util.List;

@Entity
@Table (name = "provider")
public class Provider {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="provider_id")
    private int provider_id;

    @Column(nullable = false)
    private String name;

    @Column
    private Date dob;

    @Column
    private String description;

    @Column(nullable = false)
    private String provider_password;

    @Column
    private String unis;

    @Column
    private int years_practicing;

    @Column(nullable = false)
    private String email;

    @Column
    private int age;

    @Column(nullable = false)
    private String med_license_num;

    @Column(nullable = false)
    private String national_provider_num;

    @Column
    private String profile_picture;

    @Column
    private int rating;

    @Column
    private String location;

    @Column
    private String specialty;

    @Column
    private String qualifications;

    @OneToMany(mappedBy = "provider")
    private List<Appointment> appointments;

    @OneToMany(mappedBy = "provider")
    private List<Review> reviews;


    public Provider(){


    }


    //provider_id
    public int getProvider_id(){
        return provider_id;
    }
    public void setProvider_id(int id){
        this.provider_id = provider_id;
    }


    //name
    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name = name;
    }

    //dob
    public Date getDob(){
        return dob;
    }
    public void setDob(Date dob){
        this.dob = dob;
    }

    //description
    public String getDescription(){
        return description;
    }
    public void setDescription(String description){
        this.description = description;
    }

    //provider_password
    public String getProvider_password(){
        return provider_password;
    }
    public void setProvider_password(String provider_password){
        this.provider_password = provider_password;
    }

    //unis
    public String getUnis(){
        return unis;
    }
    public void setUnis(String unis){
        this.unis = unis;
    }

    //years_practicing
    public int getYears_practicing(){
        return years_practicing;
    }
    public void setYears_practicing(int years_practicing){
        this.years_practicing = years_practicing;
    }

    //email
    public String getEmail(){
        return email;
    }
    public void setEmail(String email){
        this.email = email;
    }

    //age
    public int getAge(){
        return age;
    }
    public void setAge(int age){
        this.age = age;
    }

    //med_license_num
    public String getMed_license_num(){
        return med_license_num;
    }
    public void setMed_license_num(String med_license_num){
        this.med_license_num = med_license_num;
    }

    //national_provider_num
    public String getNational_provider_num(){
        return national_provider_num;
    }
    public void setNational_provider_num(String nationalProviderNum){
        this.national_provider_num = nationalProviderNum;
    }

    //profile_picture
    public String getProfile_picture(){
        return profile_picture;
    }
    public void setProfile_picture(String profile_picture){
        this.profile_picture = profile_picture;
    }

    //rating
    public int getRating(){
        return rating;
    }
    public void setRating(int rating){
        this.rating = rating;
    }

    //location
    public String getLocation (){return location;}
    public void setLocation(String location){this.location = location;}

    //specialty
    public String getSpecialty(){
        return specialty;
    }
    public void setSpecialty(String specialty){
        this.specialty = specialty;
    }

    //qualifications
    public String getQualifications(){
        return qualifications;
    }
    public void setQualifications(String qualifications){
        this.qualifications = qualifications;
    }

    public List<Appointment> getAppointments() {
        return appointments;
    }
    public void setAppointments(List<Appointment> appointments) {
        this.appointments = appointments;
    }

    public List<Review> getReviews() {
        return reviews;
    }
    public void setReviews(List<Review> reviews) {
        this.reviews = reviews;
    }
}
