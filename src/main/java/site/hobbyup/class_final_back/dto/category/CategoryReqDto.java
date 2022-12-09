package site.hobbyup.class_final_back.dto.category;

import lombok.Getter;
import lombok.Setter;
import site.hobbyup.class_final_back.domain.category.Category;

public class CategoryReqDto {

    @Setter
    @Getter
    public static class CategorySaveReqDto {
        private String name;

        public Category toEntity() {
            return Category.builder().name(name).build();
        }
    }
}
