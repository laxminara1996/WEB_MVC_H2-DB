package in.laxmi.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import in.laxmi.entity.ProductEntity;

public interface ProductRepository extends JpaRepository<ProductEntity, Integer> {

}
