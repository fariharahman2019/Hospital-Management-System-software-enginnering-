<?php 

namespace App\Models;

class Config{

	const DB_HOST = "localhost"; 
	const DB_NAME = "hospital"; 
	const DB_USER = "root"; 
	const DB_PASSWORD = ""; 


	const SYSTEM_NAME = "HMS470";
	const SLOGAN = "EMR";

	public static function redir($page){
		header("Location: $page"); 
	}

	public static function includeD(){

	}

	public static function getMonth(){

		return 18052021;
	}

	public static function getWeek(){

		return 052021;
	}
}