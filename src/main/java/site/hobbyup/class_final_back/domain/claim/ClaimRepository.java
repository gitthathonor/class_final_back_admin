package site.hobbyup.class_final_back.domain.claim;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ClaimRepository extends JpaRepository<Claim, Long> {

    @Query(value = "SELECT * FROM claim LEFT JOIN expert ON claim.expert_id=expert.id WHERE expert.is_approval=false", nativeQuery = true)
    List<Claim> findAllfalse();

}
