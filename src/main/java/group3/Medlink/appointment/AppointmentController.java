package group3.Medlink.appointment;

import group3.Medlink.patient.Patient;
import group3.Medlink.patient.PatientService;
import group3.Medlink.provider.ProviderService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

/**
 * AppointmentController.java
 * Includes all REST API endpoint mappings for the Appointment object.
 */
@Controller
@RequestMapping("/appointments")
public class AppointmentController {

    @Autowired
    private AppointmentService appointmentService;

    @Autowired
    private AppointmentRepository appointmentRepository;

    @Autowired
    private ProviderService providerService;

    @Autowired
    private PatientService patientService;



}
