package vn.DinhQuangDuc.mobileshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.DinhQuangDuc.mobileshop.domain.Cart;
import vn.DinhQuangDuc.mobileshop.domain.User;

@Repository
public interface CartRepository extends JpaRepository<Cart, Long> {
    Cart findByUser(User user);
}
