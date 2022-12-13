package site.hobbyup.class_final_back.web;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.hobbyup.class_final_back.config.exception.CustomApiException;
import site.hobbyup.class_final_back.domain.category.Category;
import site.hobbyup.class_final_back.domain.category.CategoryRepository;
import site.hobbyup.class_final_back.domain.claim.Claim;
import site.hobbyup.class_final_back.domain.claim.ClaimRepository;
import site.hobbyup.class_final_back.domain.expert.Expert;
import site.hobbyup.class_final_back.domain.expert.ExpertRepository;
import site.hobbyup.class_final_back.domain.lesson.Lesson;
import site.hobbyup.class_final_back.domain.lesson.LessonRepository;
import site.hobbyup.class_final_back.domain.profile.Profile;
import site.hobbyup.class_final_back.domain.profile.ProfileRepository;
import site.hobbyup.class_final_back.domain.user.User;
import site.hobbyup.class_final_back.domain.user.UserRepository;
import site.hobbyup.class_final_back.dto.ResponseDto;
import site.hobbyup.class_final_back.dto.category.CategoryReqDto.CategorySaveReqDto;
import site.hobbyup.class_final_back.dto.category.CategoryRespDto.CategorySaveRespDto;

@RequiredArgsConstructor
@Controller
public class AdminController {
    private final Logger log = LoggerFactory.getLogger(getClass());
    private final ProfileRepository profileRepository;
    private final UserRepository userRepository;
    private final LessonRepository lessonRepository;
    private final CategoryRepository categoryRepository;
    private final ClaimRepository claimRepository;
    private final ExpertRepository expertRepository;

    @GetMapping(value = { "/", "/api/admin/main" })
    public String main(Model model) {
        List<User> userList = userRepository.findTop5Users();
        List<Lesson> lessonList = lessonRepository.findTop5Lessons();

        model.addAttribute("userList", userList);
        model.addAttribute("lessonList", lessonList);
        // 주문 list 추가해야됨

        return "/main";
    }

    @GetMapping("/statistics")
    public String statistics() {
        return "/statistics";
    }

    @GetMapping("/user_info")
    public String userInfo(Model model) {
        List<User> userList = userRepository.findAllLatestUser();

        List<Profile> profileList = profileRepository.findAllLatestProfile();

        List<User> deleteUserList = userRepository.findAllDeleteUser();
        model.addAttribute("userList", userList);
        model.addAttribute("profileList", profileList);
        model.addAttribute("deleteUserList", deleteUserList);
        return "/user_info";
    }

    @PutMapping("/user/{userId}/role")
    public @ResponseBody ResponseEntity<?> updateRole(@PathVariable Long userId) {
        User userPS = userRepository.findById(userId)
                .orElseThrow(() -> new CustomApiException("가입되지 않은 유저입니다.", HttpStatus.FORBIDDEN));

        userPS.updateRole();
        userRepository.save(userPS);
        return new ResponseEntity<>(new ResponseDto<>("role 변경", userPS.getRole()), HttpStatus.OK);
    }

    @GetMapping("/class")
    public String classList(Model model) {
        List<Lesson> lessonList = lessonRepository.findAll();
        model.addAttribute("lessonList", lessonList);
        return "/class";
    }

    @GetMapping("/category")
    public String category(Model model) {
        List<Category> categoryList = categoryRepository.findAll();
        model.addAttribute("categoryList", categoryList);
        return "/category";
    }

    @PostMapping("/category")
    public @ResponseBody ResponseEntity<?> saveCategory(@RequestBody CategorySaveReqDto categorySaveReqDto) {
        Category category = categoryRepository.save(categorySaveReqDto.toEntity());
        return new ResponseEntity<>(new ResponseDto<>("카테고리 추가", new CategorySaveRespDto(category)), HttpStatus.OK);
    }

    @GetMapping("/claim")
    public String getClaimList(Model model) {
        List<Claim> claimList = claimRepository.findAll();

        model.addAttribute("claimList", claimList);
        return "/claim";
    }

    @PutMapping("/expert/{expertId}/claim")
    public @ResponseBody ResponseEntity<?> update(@PathVariable Long expertId) {
        Expert expertPS = expertRepository.findById(expertId)
                .orElseThrow(() -> new CustomApiException("존재하지 않는 전문가입니다.", HttpStatus.FORBIDDEN));

        expertPS.update();
        expertRepository.save(expertPS);
        return new ResponseEntity<>(new ResponseDto<>("권한 변경", expertPS.getId()), HttpStatus.OK);
    }

    @GetMapping("/order")
    public String order() {
        return "/order";
    }

    @GetMapping("/payment")
    public String payment() {
        return "/payment";
    }

    @GetMapping("/api/admin/inquire")
    public String inquire() {
        return "/inquire";
    }

    @GetMapping("/api/admin/notice")
    public String notice() {
        return "/notice";
    }

    @GetMapping("/api/admin/coupon")
    public String coupon() {
        return "/coupon";
    }
}
