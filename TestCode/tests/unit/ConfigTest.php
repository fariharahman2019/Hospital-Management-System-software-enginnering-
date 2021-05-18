<?php

class ConfigTest extends \PHPUnit\Framework\TestCase
{
	protected $config;

	public function setUp():void
	{
		$this->config = new \App\Models\Config;
	}

	public function testGetMonth()
	{
		$this->assertEquals($this->config->getMonth(), 18052021);
	}
	public function testGetWeek()
	{
		$this->assertEquals($this->config->getWeek(), 052021);
	}
}
?>