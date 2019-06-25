<?php

use Faker\Generator as Faker;

$factory->define(App\FeedRss::class, function (Faker $faker) {
    return [
        'idfeed' => $faker->unique()->sentence,
        'title' => $faker->sentence,
        'description' => "<p>" . implode("</p>\n\n<p>", $faker->paragraphs(rand(3, 6))) . "</p>",
        'author' => $faker->name,
        'topic' => $faker->numberBetween($min = 2, $max = 3),
        'link' => $faker -> url,
        'timestamp' =>$faker ->dateTime(),
    ];
});
