USE abc
ALTER TABLE vendor --or dbo.vendor
ADD CONSTRAINT pk_vendor PRIMARY KEY CLUSTERED(ven_id)--cannot do coz 'ven_id' is not notnull field
					    	      --it has to make not null.
						      --CLUSTERED is optional