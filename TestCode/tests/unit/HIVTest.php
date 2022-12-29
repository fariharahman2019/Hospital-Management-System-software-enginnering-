<?php



class HIVTest extends \PHPUnit\Framework\TestCase
{
	//protected function getUserModel(){}

	protected $hiv;


	public function setUp():void
	{

		$this->hiv = new \App\Models\HIV;
		
	}
	protected function tearDown(): void
    {
        parent::tearDown();

        unset($this->hiv);
    }


	public function testAddHIV(){

		$dbMock = $this->getMockBuilder(Database::class)
						->setMethods(['insert'])
						->getMock();

		$hiv = 'Fariha';

		$dbMock->method('insert')->willReturn($hiv);

		 $this->assertEquals($this->hiv->add('Fariha', '22', 'Riyadh', 'Serious','Treating'), "");
		}
}
?>