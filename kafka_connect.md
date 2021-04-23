- sink
```
{
	"name":"my-sink-connect",
	"config":{
		"connector.class":"io.confluent.connect.jdbc.JdbcSinkConnector",
		"connection.url":"jdbc:mysql://127.0.0.1:23306/mydb",
		"connection.user":"root",
		"auto.create":"true",
		"auto.evolve":"true",
		"delete.enabled":"false",
		"tasks.max":"1",
		"topics":"my_topic_users, my_topic_store, my_topic_orders, my_topic_order_detail, my_topic_menu, my_topic_festival"
	}
}
```

-source 1
```
{
	"name" : "my-source-connect-user",
	"config" : {
		"connector.class" : "io.confluent.connect.jdbc.JdbcSourceConnector",
		"connection.url":"jdbc:mysql://127.0.0.1:13306/mydb",
		"connection.user":"root",
		"mode": "timestamp+incrementing",
        "incrementing.column.name": "user_no",
        "timestamp.column.name": "last_modify",
        "table.whitelist": "users, festival",
        "validate.non.null": "false",
		"topic.prefix": "my_topic_",
		"tasks.max": "1"
	}
}
```

- source 2
```
{
	"name" : "my-source-connect-order",
	"config" : {
		"connector.class" : "io.confluent.connect.jdbc.JdbcSourceConnector",
		"connection.url":"jdbc:mysql://127.0.0.1:13306/mydb",
		"connection.user":"root",
		"mode": "timestamp+incrementing",
        "incrementing.column.name": "order_id",
        "timestamp.column.name": "last_modify",
		"topic.prefix": "my_topic_",
        "validate.non.null": "false",
		"tasks.max": "1"
	}
}
```

- source 3
```
{
	"name" : "my-source-connect-store",
	"config" : {
		"connector.class" : "io.confluent.connect.jdbc.JdbcSourceConnector",
		"connection.url":"jdbc:mysql://127.0.0.1:13306/mydb",
		"connection.user":"root",
		"mode": "timestamp+incrementing",
        "incrementing.column.name": "store_id",
        "timestamp.column.name": "last_modify",
        "table.whitelist":"store, menu",
		"topic.prefix": "my_topic_",
        "validate.non.null": "false",
		"tasks.max": "1"
	}
}
```
