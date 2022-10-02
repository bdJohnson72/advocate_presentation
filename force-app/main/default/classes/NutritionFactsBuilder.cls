/**
 * Created by brooks on 10/2/2022.
 */

public with sharing class NutritionFactsBuilder {
    public class NutritionFactsException extends Exception {
    }
    private Integer servingSize;
    private Integer servings;
    private Integer calories;
    private Integer fat;
    private Integer sodium;
    private Integer carbohydrate;
    private Date startDate;
    private Date endDate;

    private NutritionFactsBuilder(NutritionFacts_Builder.Builder builder) {
        this.servingSize = builder.servingSize;
        this.servings = builder.servings;
        this.calories = builder.calories;
        this.fat = builder.fat;
        this.sodium = builder.sodium;
        this.carbohydrate = builder.carbohydrate;
        this.startDate = builder.startDate;
    }


    public class Builder {

        private Integer servingSize;
        private Integer servings;
        private Integer calories;
        private Integer fat;
        private Integer sodium;
        private Integer carbohydrate;
        private Date startDate;
        private Date endDate;

        public NutritionFactsBuilder.Builder servingSize(Integer servingSize) {
            this.servingSize = servingSize;
            return this;
        }

        public NutritionFactsBuilder.Builder servings(Integer servingSize) {
            this.servingSize = servingSize;
            return this;
        }

        Public NutritionFactsBuilder.Builder calories(Integer calories) {
            this.calories = calories;
            return this;
        }

        public NutritionFactsBuilder.Builder fat(Integer fat) {
            this.fat = fat;
            return this;
        }

        public NutritionFactsBuilder.Builder sodium(Integer sodium) {
            this.sodium = sodium;
            return this;
        }

        public NutritionFactsBuilder.Builder carbohydrates(Integer carbohydrate) {
            this.carbohydrate = carbohydrate;
            return this;
        }

        public NutritionFactsBuilder.Builder startDate(Date startDate) {
            this.startDate = startDate;
            return this;
        }

        private void validateDate() {
            if (startDate != null && endDate == null) {
                throw new NutritionFactsException('Must have an end date if a start date is present');
            }
        }


        public NutritionFactsBuilder build() {
            validateDate();
            return new NutritionFactsBuilder(this);
        }
    }
}