package test.spring.jun.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name="overseer_assign")
public class Overseer_assign {
    @Id
    @GeneratedValue
    public String overseer_assign_id;

    public String overseer_id;
    public String exam_place_id;
    public String exam_id;
}
