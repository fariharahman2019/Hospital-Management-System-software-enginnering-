<?php

class DashboardUiTest extends \PHPUnit\Framework\TestCase
{
	protected $DashboardUi;

	public function setUp():void
	{
		$this->DashboardUi = new \App\Models\DashboardUi;
	}

	public function testdraw()
	{

		$this->assertEquals($this->DashboardUi->draw("Hello World", 5, "www.xyz.com"), "true");
	}
}
?>