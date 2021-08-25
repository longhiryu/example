<?php

namespace Database\Factories;

use App\Models\Article;
use Illuminate\Database\Eloquent\Factories\Factory;

class ArticleFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Article::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'sku' => $this->faker->ean8(),
            'name' => $this->faker->name(),
            'cate_id' => rand(0,100),
            'img' => $this->faker->imageUrl($width = 640,$height = 480),
            'desc' => $this->faker->text($maxNbChars = 200) ,
            'enable' => true,
            'feature' => false,
            'title' => $this->faker->sentence($nbWords = 6, $variableNbWords = true),
            'keyword' => 'keywords',
            'sum' => $this->faker->sentence($nbWords = 6, $variableNbWords = true),
        ];
    }
}
