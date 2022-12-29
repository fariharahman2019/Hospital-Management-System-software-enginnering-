<?php

class DoctorTest extends \PHPUnit\Framework\TestCase
{
	protected $doctor;

	public function setUp():void
	{
		$this->doctor = new \App\Models\Doctor;		
	}
	protected function tearDown(): void
    {
        parent::tearDown();

        unset($this->doctor);
    }

	public function testAddDoctor(){

		$dbMock = $this->getMockBuilder(Database::class)
						->setMethods(['insert'])
						->getMock();

		$doctor = 'Fatima';

		$dbMock->method('insert')->willReturn($doctor);

		 $this->assertEquals($this->doctor->add('12345', 'Fatima', 'Rahman', 'fatima@gmail.com', '987654321', 'Female','admin'), "Doctor added");
		}
    
    public function testLoadDoctor(){

		$dbMock = $this->getMockBuilder(Database::class)
						->setMethods(['fetch'])
						->getMock();

		$doctor = 'Fatima';

		$dbMock->method('fetch')->willReturn($doctor);

		 $this->assertEquals($this->doctor->load('doctor', '', 'admin', '2', '9821', '',''),"");
		}
    
    public function testEditDoctor(){

		$dbMock = $this->getMockBuilder(Database::class)
						->setMethods(['fetch'])
						->getMock();

		$doctor = 'Fatima';

		$dbMock->method('fetch')->willReturn($doctor);

		 $this->assertEquals($this->doctor->load('3596', 'Nadeem', 'Rahman', 'nadeem@gmail.com', '96547813', 'doctor'), "");
		}
}
?>