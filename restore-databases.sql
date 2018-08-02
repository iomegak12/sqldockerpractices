RESTORE DATABASE ProductsDB
	FROM DISK = N'/data/ProductsDB.bak'
	WITH 
		MOVE ( Name='ProductsDB', FILENAME = '/data/ProductsDB.mdf' ),
		MOVE (Name='ProductsDB_Log', FILENAME = '/data/ProductsDB.ldf' ),
		RECOVERY