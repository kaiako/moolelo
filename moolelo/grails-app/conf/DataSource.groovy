dataSource {
    pooled = true
    jmxExport = true
    driverClassName = "org.h2.Driver"
	logSql = true
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
//    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
    singleSession = true // configure OSIV singleSession mode
    flush.mode = 'manual' // OSIV session flush mode outside of transactional context
}

// environment specific settings
environments {
	devLocal{
		
	}
    development {
        dataSource {
            dbCreate = "create" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:mysql://localhost:3306/moolelo"
			driverClassName = "com.mysql.jdbc.Driver"
			dialect = org.hibernate.dialect.MySQL5InnoDBDialect
		    username = "root"
		    password = "dev1"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
        }
    }
    production {
		dataSource {
		 username = "moolelo"
		 password = "jordankl"
		 pooled = true
		 dbCreate = "create"
		 driverClassName = "com.mysql.jdbc.Driver"
		 url = "jdbc:mysql://localhost:3306/moolelo?user={user}&password={password}"
		 dialect = org.hibernate.dialect.MySQL5InnoDBDialect
		 properties {
		  validationQuery = "SELECT 1"
		  testOnBorrow = true
		  testOnReturn = true
		  testWhileIdle = true
		  timeBetweenEvictionRunsMillis = 1800000
		  numTestsPerEvictionRun = 3
		  minEvictableIdleTimeMillis = 1800000
		  }
		}
	   }
}
