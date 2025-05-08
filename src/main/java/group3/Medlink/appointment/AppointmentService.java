package group3.Medlink.appointment;


import group3.Medlink.patient.Patient;
import group3.Medlink.patient.PatientRepository;

import group3.Medlink.provider.Provider;
import group3.Medlink.provider.ProviderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;
import java.util.Optional;

@Service
public class AppointmentService {

    @Autowired
    private AppointmentRepository appointmentRepository;

    @Autowired
    private ProviderRepository providerRepository;

    @Autowired
    private PatientRepository patientRepository;

}
