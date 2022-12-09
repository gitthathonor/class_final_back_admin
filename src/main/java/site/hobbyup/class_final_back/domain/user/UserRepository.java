package site.hobbyup.class_final_back.domain.user;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface UserRepository extends JpaRepository<User, Long> {
    @Query("select u from User u where username = :username")
    Optional<User> findByUsername(@Param("username") String username);

    @Query("select u from User u where u.isInactive = true order by u.createdAt desc")
    List<User> findAllLatestUser();

    @Query("select u from User u where u.isInactive = false order by u.createdAt desc")
    List<User> findAllDeleteUser();
}
