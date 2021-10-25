package com.simondongmo.spring.learningspring.data.repository;

import com.simondongmo.spring.learningspring.data.entity.Room;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoomRepository extends CrudRepository<Room, Long> {


}
