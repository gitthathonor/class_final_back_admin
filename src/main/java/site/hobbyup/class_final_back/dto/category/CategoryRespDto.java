package site.hobbyup.class_final_back.dto.category;

import lombok.Getter;
import lombok.Setter;
import site.hobbyup.class_final_back.domain.category.Category;

public class CategoryRespDto {

    @Setter
    @Getter
    public static class CategorySaveRespDto {
        private Long id;
        private String name;

        public CategorySaveRespDto(Category category) {
            this.id = category.getId();
            this.name = category.getName();
        }

    }
}
