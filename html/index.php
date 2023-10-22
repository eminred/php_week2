<?php
require '../src/TariffInterface.php';
require '../src/ServiceInerface.php';
require '../src/TariffAbstract.php';
require '../src/TariffBasic.php';
require '../src/ServiceGPS.php';
require '../src/ServiceDriver.php';
require '../src/TariffHour.php';
require '../src/TariffStudent.php';

/** @var TariffInterface $tariff */
$tariff = new TariffBasic(5, 60);
$tariff = new TariffStudent(5, 60);
$tariff = new TariffHour(5, 61);
$tariff->addService(new ServiceGPS(15));
$tariff->addService(new ServiceDriver(100));

echo '<pre>';
echo 'Тариф базовый <br>';
echo 'Расстояние: ' . $tariff->getDistance() .'<br>';
echo 'Время: ' . $tariff->getMinutes() . '<br>';
echo 'Сервисы: ' . $tariff->getServices() . '<br>';
echo 'Общая сумма: ' . $tariff->countPrice() . '<br>';

echo '<br>';

$student = new TariffStudent(5, 60);
$student->addService(new ServiceDriver(100));

echo 'Тариф студенческий <br>';
echo 'Расстояние: ' . $student->getDistance() .'<br>';
echo 'Время: ' . $student->getMinutes() . '<br>';
echo 'Сервисы: ' . $student->getServices() . '<br>';
echo 'Общая сумма: ' . $student->countPrice() . '<br>';

echo '<br>';

$hour = new TariffHour(5, 59);
$hour->addService(new ServiceGPS(15));

echo 'Тариф почасовой <br>';
echo 'Расстояние: ' . $hour->getDistance() .'<br>';
echo 'Время: ' . $hour->getMinutes() . '<br>';
echo 'Сервисы: ' . $hour->getServices() . '<br>';
echo 'Общая сумма: ' . $hour->countPrice() . '<br>';

?>