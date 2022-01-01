package test.spring.jun.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name="exam")
public class Exam {
    @Id
    @GeneratedValue
    public String exam_id;

    public String exam_name;
    public Date exam_time;

}
