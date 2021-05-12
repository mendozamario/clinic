class Appointment {
  int appointmentId;
  int appointmentState;
  DateTime dateService;
  String description;
  String careStaffId;
  String patientId;

  Appointment(this.appointmentId, this.appointmentState, this.dateService,
      this.description, this.careStaffId, this.patientId);
}
