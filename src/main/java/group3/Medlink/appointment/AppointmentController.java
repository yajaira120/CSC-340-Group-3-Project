package group3.Medlink.appointment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

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

    /**
     * Create Appointments (Service)
     * * @param appointment Appointment
     */
    @PostMapping("/create")
    public ResponseEntity<String> createAppointment(@RequestBody Appointment appointment) {
        appointmentService.createAppointment(appointment);
        return ResponseEntity.ok("Appointment created successfully.");
    }


    /**
     * Get list of all appointments
     * http://localhost:8080/appointments/all
     * @return list of appointment objects
     */
    @GetMapping("/all")
    public Object getAllAppointments(){
        return new ResponseEntity<>(appointmentService.getAllAppointments(),HttpStatus.OK);
    }

    /**
     * Get appointment by Id
     * http://localhost:8080/appointments/2
     * @param appointment_id
     * @return response
     */
    @GetMapping("/{appointment_id}")
    public Object getAppointmentById(@PathVariable int appointment_id){
        return new ResponseEntity<>(appointmentService.getAppointmentById(appointment_id),HttpStatus.OK);
    }

    /**
     * Book an appointment
     * http://localhost:8080/appointments/2/2
     * @param appointment_id
     * @param patient_id
     * @return response
     */
    @PutMapping("/book/{appointment_id}/{patient_id}")
    public Object bookAppointment(@PathVariable int appointment_id, @PathVariable int patient_id){
        return new ResponseEntity<>(appointmentService.bookAppointment(appointment_id, patient_id), HttpStatus.OK);
    }

    /**
     * Update Appointment (Update Service
     * @param appointment_id
     * @param appointment
     * @return
     */
    @PutMapping("/update/{appointment_id}")
    public Object updateAppointment(@PathVariable int appointment_id, @RequestBody Appointment appointment) {
        return new ResponseEntity<>(appointmentService.updateAppointment(appointment_id,appointment), HttpStatus.OK);
    }

    /**
     * Delete Appointment (Service)
     * @param appointment_id
     * @return
     */
    @DeleteMapping("/cancel/{appointment_id}")
    public Object deleteAppointment(@PathVariable int appointment_id) {
        appointmentService.deleteAppointment(appointment_id);
        return new ResponseEntity<>("Appointement Canceled!", HttpStatus.OK);
    }

}
