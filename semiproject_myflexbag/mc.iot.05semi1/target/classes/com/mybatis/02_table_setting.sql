--window+R >> cmd >>
SQLPLUS db/db;
--CONN db/db;

###################
TABLE_CREATION
###################
>> 03_insert_records.sql


###################
VIEW_CREATION
###################




###################
PRIMARY_KEY_SETTING
###################
ALTER TABLE 'Luser' ADD CONSTRAINT 'PK_LUSER' PRIMARY KEY (
	'uid'
);

ALTER TABLE 'Lorder' ADD CONSTRAINT 'PK_LORDER' PRIMARY KEY (
	'orderno',
	'uid',
	'payid',
	'deliid'
);

ALTER TABLE 'Ldetail' ADD CONSTRAINT 'PK_LDETAIL' PRIMARY KEY (
	'orderdetailno',
	'orderno',
	'pid'
);

ALTER TABLE 'Lproduct' ADD CONSTRAINT 'PK_LPRODUCT' PRIMARY KEY (
	'pid',
	'cateid',
	'sizeid',
	'colorid',
	'brandid',
	'matid'
);

ALTER TABLE 'Lcart' ADD CONSTRAINT 'PK_LCART' PRIMARY KEY (
	'cartno',
	'uid',
	'pid'
);

ALTER TABLE 'Lboard' ADD CONSTRAINT 'PK_LBOARD' PRIMARY KEY (
	'bno',
	'uid',
	'bkind'
);

ALTER TABLE 'Lcode' ADD CONSTRAINT 'PK_LCODE' PRIMARY KEY (
	'code'
);

###################
FOREIGN_KEY_SETTING
###################
ALTER TABLE 'Lorder' ADD CONSTRAINT 'FK_Luser_TO_Lorder_1' FOREIGN KEY (
	'uid'
)
REFERENCES 'Luser' (
	'uid'
);

ALTER TABLE 'Lorder' ADD CONSTRAINT 'FK_Lcode_TO_Lorder_1' FOREIGN KEY (
	'payid'
)
REFERENCES 'Lcode' (
	'code'
);

ALTER TABLE 'Lorder' ADD CONSTRAINT 'FK_Lcode_TO_Lorder_2' FOREIGN KEY (
	'deliid'
)
REFERENCES 'Lcode' (
	'code'
);

ALTER TABLE 'Ldetail' ADD CONSTRAINT 'FK_Lorder_TO_Ldetail_1' FOREIGN KEY (
	'orderno'
)
REFERENCES 'Lorder' (
	'orderno'
);

ALTER TABLE 'Ldetail' ADD CONSTRAINT 'FK_Lproduct_TO_Ldetail_1' FOREIGN KEY (
	'pid'
)
REFERENCES 'Lproduct' (
	'pid'
);

ALTER TABLE 'Lproduct' ADD CONSTRAINT 'FK_Lcode_TO_Lproduct_1' FOREIGN KEY (
	'cateid'
)
REFERENCES 'Lcode' (
	'code'
);

ALTER TABLE 'Lproduct' ADD CONSTRAINT 'FK_Lcode_TO_Lproduct_2' FOREIGN KEY (
	'sizeid'
)
REFERENCES 'Lcode' (
	'code'
);

ALTER TABLE 'Lproduct' ADD CONSTRAINT 'FK_Lcode_TO_Lproduct_3' FOREIGN KEY (
	'colorid'
)
REFERENCES 'Lcode' (
	'code'
);

ALTER TABLE 'Lproduct' ADD CONSTRAINT 'FK_Lcode_TO_Lproduct_4' FOREIGN KEY (
	'brandid'
)
REFERENCES 'Lcode' (
	'code'
);

ALTER TABLE 'Lproduct' ADD CONSTRAINT 'FK_Lcode_TO_Lproduct_5' FOREIGN KEY (
	'matid'
)
REFERENCES 'Lcode' (
	'code'
);

ALTER TABLE 'Lcart' ADD CONSTRAINT 'FK_Luser_TO_Lcart_1' FOREIGN KEY (
	'uid'
)
REFERENCES 'Luser' (
	'uid'
);

ALTER TABLE 'Lcart' ADD CONSTRAINT 'FK_Lproduct_TO_Lcart_1' FOREIGN KEY (
	'pid'
)
REFERENCES 'Lproduct' (
	'pid'
);

ALTER TABLE 'Lboard' ADD CONSTRAINT 'FK_Luser_TO_Lboard_1' FOREIGN KEY (
	'uid'
)
REFERENCES 'Luser' (
	'uid'
);

ALTER TABLE 'Lboard' ADD CONSTRAINT 'FK_Lcode_TO_Lboard_1' FOREIGN KEY (
	'bkind'
)
REFERENCES 'Lcode' (
	'code'
);



