(declare-const get0 Int)
(declare-const get1 Int)
(declare-const put3_0 Int)
(declare-const put2_1 Int)
(declare-const put2_0 Int)
(declare-const put1_1 Int)
(declare-const put5_0 Int)
(declare-const put4_1 Int)
(declare-const put4_0 Int)
(declare-const put3_1 Int)
(declare-const put1_0 Int)
(declare-const put0_0 Int)
(declare-const put0_1 Int)
(declare-const put6_1 Int)
(declare-const put6_0 Int)
(declare-const put5_1 Int)

(assert (and (and (and (and (and (and (and (and (and (and (and (and (and (and  ( ==  0 ( %  ( +  put0_1 put0_0) 7))  ( ==  0 ( %  ( +  put1_1 put1_0) 7)))  ( ==  0 ( %  ( +  put2_1 put2_0) 7)))  ( ==  0 ( %  ( +  put3_1 put3_0) 7)))  ( ==  0 ( %  ( +  put4_1 put4_0) 7)))  ( ==  0 ( %  ( +  put5_1 put5_0) 7)))  ( ==  0 ( %  ( +  put6_1 put6_0) 7)))  ( ==  0 ( %  ( +  get1 get0) 7))) (not ( = put0_0 get0))) (not ( = put1_0 get0))) (not ( = put2_0 get0))) (not ( = put3_0 get0))) (not ( = put4_0 get0))) (not ( = put5_0 get0))) (not ( = put6_0 get0))))

(check-sat)
(get-model)