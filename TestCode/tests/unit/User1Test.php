<?php

class User1Test extends \PHPUnit\Framework\TestCase
{
	protected $user;

	public function setUp():void {
		$this->user = new \App\Models\User1;
	}


	public function testThatWeCanGetTheFirstName()
	{
		$this->user->setFirstName('Zafreen');

		$this->assertEquals($this->user->getFirstName(), 'Zafreen');
	}

	public function testThatWeCanGetTheLastName()
	{
		$this->user->setLastName('Mehreen');

		$this->assertEquals($this->user->getLastName(), 'Mehreen');
	}

	public function testFullNameIsReturned()
	{
		$user = new \App\Models\User1;

		$user->setFirstName('Afreen');

		$user->setLastName('Mehreen');

		$this->assertEquals($user->getFullName(), 'Afreen Mehreen');
	}

	public function testFirstAndLastNameAreTrimmed()
	{
		$user = new \App\Models\User1;

		$user->setFirstName('Afreen     ');

		$user->setLastName('     Mehreen');

		$this->assertEquals($user->getFirstName(), 'Afreen');

		$this->assertEquals($user->getLastName(), 'Mehreen');
	}

	public function testEmailAddressCanBeSet()
	{
		$user = new \App\Models\User1;

		$user->setEmail('affi@codecourse.com');

		$this->assertEquals($user->getEmail(), 'affi@codecourse.com');
	}

	public function testEmailVariablesContainCorrectValues()
	{
		$user = new \App\Models\User1;

		$user->setFirstName('Mehreen');

		$user->setLastName('Zafreen');

		$user->setEmail('mahi@codecourse.com');

		$emailVariables = $user->getEmailVariables();

		$this->assertArrayHasKey('full_name', $emailVariables);
		$this->assertArrayHasKey('email', $emailVariables);

		$this->assertEquals($emailVariables['full_name'], 'Mehreen Zafreen');
		$this->assertEquals($emailVariables['email'], 'mahi@codecourse.com');
	}
}