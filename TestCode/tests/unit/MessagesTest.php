<?php



class MessageTest extends \PHPUnit\Framework\TestCase
{
	protected $messages;
    
	public function setUp():void
	{
		$this->messages = new \App\Models\Messages;		
	}
    
	protected function tearDown(): void
    {
        parent::tearDown();

        unset($this->messages);
    }

	public function testsend()
	{

		$this->assertEquals($this->messages->success("Maliha"), 1);
	}
	public function testInfo()
	{

		$this->assertEquals($this->messages->info("Maliha"), 1);
	}
	public function testerror()
	{

		$this->assertEquals($this->messages->error("Maliha"), 1);
	}
}
?>