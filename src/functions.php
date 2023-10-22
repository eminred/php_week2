<?php

const NAMES = ['Vova', 'Katya', 'Andrew', 'Olya', 'Sasha'];

function createUser($id) 
{
  $user = [
    'id' => $id,
    'name' => NAMES[array_rand(NAMES)],
    'age' => mt_rand(18, 45)
  ];

  return $user;
}

function createArray()
{
  for ($i = 1; $i <= 50; $i++) {
    $users[] = createUser($i);
  }
  return $users;
}

function saveUsers()
{
  file_put_contents('users.json', json_encode(createArray()));
}

function usersFromJson()
{
  $data = file_get_contents('users.json');
  $users = json_decode($data, true);
  return $users;
}

function calcUsername()
{
  $name = array_column(usersFromJson(), 'name');
  $nameList = array_count_values($name);
  echo '<pre>';
  var_dump($nameList);
}

function averageAge() {
  $sumAge = array_sum(array_column(usersFromJson(), 'age'));
  $average = $sumAge / sizeof(usersFromJson());
  var_dump($average);
}