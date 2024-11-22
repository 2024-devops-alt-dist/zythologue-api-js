create table brewery (                                                                                                                        
    id serial primary key,                                                                                                                    
    name varchar(100) not null,                                                                                                               
    country varchar(100)                                                                                                                      
);                                                                                                                                            
                                                                                                                                              
create table category (                                                                                                                       
    id serial primary key,                                                                                                                    
    name varchar(100) not null                                                                                                                
);                                                                                                                                            
                                                                                                                                              
create table beer (                                                                                                                           
	 id serial primary key,                                                                                                                   
	 name varchar(100) not null,                                                                                                              
	 description varchar(500),                                                                                                                
	 abv int,                                                                                                                                 
	 id_brewery int not null,                                                                                                                 
	 id_category int not null,                                                                                                                
	 constraint fk_brewery foreign key(id_brewery) references brewery(id)                                                                     
	 ON DELETE cascade,                                                                                                                       
	 constraint fk_category foreign key(id_category) references category(id)                                                                  
	 ON DELETE cascade                                                                                                                        
 );                                                                                                                                           
                                                                                                                                              
create table photo (                                                                                                                          
	id serial primary key,                                                                                                                    
	url varchar(255),                                                                                                                         
	id_beer int not null,                                                                                                                     
	constraint fk_beer foreign key(id_beer) references beer(id)                                                                               
	on delete cascade                                                                                                                         
);                                                                                                                                            
                                                                                                                                              
create table ingredient (                                                                                                                     
	id serial primary key,                                                                                                                    
	name varchar(100),                                                                                                                        
	type varchar(100)                                                                                                                         
	);                                                                                                                                        
                                                                                                                                              
create table beer_ingredient (                                                                                                                
	id_beer int not null,                                                                                                                     
	id_ingredient int not null,                                                                                                               
	constraint fk_beer foreign key(id_beer) references beer(id)                                                                               
	on delete cascade,                                                                                                                        
	constraint fk_ingredient foreign key(id_ingredient) references ingredient(id)                                                             
	on delete cascade                                                                                                                         
);                                                                                                                                            
                                                                                                                                              
create table "user" (                                                                                                                         
	id serial primary key,                                                                                                                    
	first_name varchar(100) not null,                                                                                                         
	last_name varchar(100) not null,                                                                                                          
	email varchar(100) not null,                                                                                                              
	password varchar(100) not null                                                                                                            
);                                                                                                                                            
                                                                                                                                              
create table favorite (                                                                                                                       
	id_beer int not null,                                                                                                                     
	id_user int not null,                                                                                                                     
	constraint fk_beer foreign key(id_beer) references beer(id)                                                                               
	on delete cascade,                                                                                                                        
	constraint fk_user foreign key(id_user) references "user"(id)                                                                             
	on delete cascade                                                                                                                         
);                                                                                                                                            
                                                                                                                                              
create table review (                                                                                                                        
	id serial primary key,                                                                                                                    
	rating int,                                                                                                                               
	comment varchar(500),                                                                                                                     
	id_beer int not null,                                                                                                                     
	id_user int not null,                                                                                                                     
	constraint fk_beer foreign key(id_beer) references beer(id)                                                                               
	on delete cascade,                                                                                                                        
	constraint fk_user foreign key(id_user) references "user"(id)                                                                             
	on delete cascade                                                                                                                                                                                                                                                                            
);     
