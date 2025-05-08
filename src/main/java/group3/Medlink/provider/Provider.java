package group3.Medlink.provider;

import jakarta.persistence.*;
import java.util.Date;



import jakarta.persistence.*;
import java.util.Date;

@Entity
@Table(name = "provider")
public class Provider {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int provider_id;

    @Column(nullable = false)
    private String name;

    @Column
    private Date dob;

    @Column
    private String description;

    @Column(name = "provider_password", nullable = false)
    private String providerPassword;

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

    public Provider() {}

    public int getId() {
        return provider_id;
    }

    public int getProvider_id() {
        return provider_id;
    }

    public void setProvider_id(int provider_id) {
        this.provider_id = provider_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getProviderPassword() {
        return providerPassword;
    }

    public void setProviderPassword(String providerPassword) {
        this.providerPassword = providerPassword;
    }

    public String getUnis() {
        return unis;
    }

    public void setUnis(String unis) {
        this.unis = unis;
    }

    public int getYears_practicing() {
        return years_practicing;
    }

    public void setYears_practicing(int years_practicing) {
        this.years_practicing = years_practicing;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getMed_license_num() {
        return med_license_num;
    }

    public void setMed_license_num(String med_license_num) {
        this.med_license_num = med_license_num;
    }

    public String getNational_provider_num() {
        return national_provider_num;
    }

    public void setNational_provider_num(String national_provider_num) {
        this.national_provider_num = national_provider_num;
    }

    public String getProfile_picture() {
        return profile_picture;
    }

    public void setProfile_picture(String profile_picture) {
        this.profile_picture = profile_picture;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getSpecialty() {
        return specialty;
    }

    public void setSpecialty(String specialty) {
        this.specialty = specialty;
    }

    public String getQualifications() {
        return qualifications;
    }

    public void setQualifications(String qualifications) {
        this.qualifications = qualifications;
    }
}