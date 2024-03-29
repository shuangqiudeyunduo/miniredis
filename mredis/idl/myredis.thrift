namespace rs myredis

enum RequestType {
    Get,
    Set,
    Ping,
    Subscribe,
    Del,
    publish,
}

struct RedisRequest {
    1: optional string key,
    2: optional string value,
    3: optional i32 expire_time,
    4: required RequestType request_type,
}

enum ResponseType {
    Trap,
    Print,
}

struct RedisResponse {
    1: required ResponseType response_type,
    2: optional string value,
}

service RedisService {
    RedisResponse RedisCommand(1: RedisRequest req),
}