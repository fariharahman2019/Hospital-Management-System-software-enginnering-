<?php

require __DIR__ . '/Db1.php';
require __DIR__ . '/Patient.php';

class AppointmentTest extends \PHPUnit\Framework\TestCase
{
	protected $appointment;

	public function setUp():void {

		$this->appointment = new \App\Models\Appointment;
		$this->patient = new \App\Models\Patient;
		
	}
	protected function tearDown(): void {
        parent::tearDown();

        unset($this->appointment);
    }

	public function testsend(){

		$this->assertEquals($this->appointment->send("Fariha", "1234", "123456", "hi doctor", "Dr.Fatima"), "Appointment not sent");
	}

	public function testloadPatientSentAppointments(){

		$dbMock = $this->getMockBuilder(Database::class)
						->setMethods(['fetch'])
						->getMock();

		$patient = 'Maliha';

		$dbMock->method('fetch')->willReturn($patient);

		 $this->assertEquals($this->appointment->loadPatientSentAppointments(), "Patient sent appointments");
		}

	public function testloadPatientRepliedAppointment(){

		$dbMock = $this->getMockBuilder(Database::class)
						->setMethods(['fetch'])
						->getMock();

		$patient = 'Maliha';

		$dbMock->method('fetch')->willReturn($patient);

		 $this->assertEquals($this->appointment->loadPatientRepliedAppointment(), "Patient replied appointments");
		}
}
?>