package test.spring.jun.entity;


import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import javax.persistence.*;
import java.util.Date;


@Entity
@Data
@Table(name="candidate")
public class Candidate {


    @Column(name="candidate_id")
    private String candidate_id;

    @Column(name="candidate_type")
    private String candidate_type;

    @Column(name="candidate_recruit")
    private String candidate_recruit;

    @Column(name="candidate_birth")
    private int candidate_birth;

    @Column(name="candidate_attend")
    private String candidate_attend;

    @Column(name="candidate_ticket_photo")
    private String candidate_ticket_photo;

    @Column(name="candidate_photo")
    private String candidate_photo;

    @Column(name="candidate_issue")
    private String candidate_issue;

    @Column(name="exam_id")
    private String exam_id;

    @Column(name="exam_place_id")
    private String exam_place_id;

    @Id
    @Column(name="candidate_exam_num")
    private String candidate_exam_num;
}
