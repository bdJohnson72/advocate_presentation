/**
 * Created by brooks on 10/1/2022.
 */

public with sharing class NutritionalFacts {

    private Integer servingSize;
    private Integer servings;
    private Integer calories;
    private Integer fat;
    private Integer sodium;
    private Integer carbohydrate;

    public NutritionalFacts(Integer servingSize, Integer servings) {
        this(servingSize, servings, 0);
    }

    public NutritionalFacts(Integer servingSize, Integer servings, Integer calories) {
        this(servingSize, servings, calories, 0);
    }

    public NutritionalFacts(Integer servingSize, Integer servings, Integer calories, Integer fat) {
        this(servingSize, servings, calories, fat, 0);
    }

    public NutritionalFacts(Integer servingSize, Integer servings, Integer calories, Integer fat, Integer sodium){
        this(servingSize, servings, calories, fat, sodium, 0);
    }

    public NutritionalFacts(Integer servingSize, Integer servings, Integer calories, Integer fat, Integer sodium, Integer carbohydrate) {
        this.servingSize = servingSize;
        this.servings = servings;
        this.calories = calories;
        this.fat = fat;
        this.sodium = sodium;
        this.carbohydrate = carbohydrate;
    }

}
