<?php

use PHPUnit\Framework\TestCase;

class UserTest extends TestCase
{
    /**
     * A basic unit test example.
     *
     * @return void
     */
   
    public function test_that_we_can_get_first_name()
    {

        $user = new App\Models\User;
  
        $user->setFirstName('Teody');

        $this->assertEquals($user->getFirstName(), 'Teody');
        
    }
    
    public function test_that_we_can_get_last_name()
    {

        $user = new App\Models\User;
  
        $user->setLastName('Yana');

        $this->assertEquals($user->getLastName(),'Yana');
        
    }
    
    public function test_that_we_can_get_full_name()
    {

        $user = new App\Models\User;
        $user->setFirstName('Teody');
        $user->setLastName('Yana');

        $this->assertEquals($user->getFullName(), 'Teody Yana');
        
    }
    
    public function test_that_first_and_last_name_are_trimmed()
    {

        $user = new App\Models\User;
        $user->setFirstName('   Teody   ');
        $user->setLastName('  Yana   ');

        $this->assertEquals($user->getFirstName(), 'Teody');
        $this->assertEquals($user->getLastName(),'Yana');
        
    }

    public function test_that_we_can_get_email_address()
    {

        $user = new App\Models\User; 

        $user->setEmailAddress('teodyyana@gmail.com');
        
        $this->assertEquals($user->getEmailAddress(), 'teodyyana@gmail.com');
        
    }

    public function test_that_email_contain_correct_values()
    {

        $user = new App\Models\User; 
        $user->setFirstName('Teody');
        $user->setLastName('Yana');
        $user->setEmailAddress('teodyyana@gmail.com');

        $getEmailVariables = $user->getEmailVariables();

        $this->assertArrayHasKey('full_name',  $getEmailVariables);
        $this->assertArrayHasKey('email',  $getEmailVariables);

        
        $this->assertEquals($getEmailVariables['full_name'], 'Teody Yana');
        $this->assertEquals($getEmailVariables['email'], 'teodyyana@gmail.com');
        
    }

}
