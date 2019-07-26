CREATE TABLE NTA_DB.DNS_LOG(log_date Date, plugin_id UInt64, type_id UInt32, guid UInt64, flow_id UInt64, sensor_id UInt32, log_time UInt64, flow_time UInt64, ip_ver UInt8, src_ip UInt32, dst_ip UInt32, src_port UInt16 , dst_port UInt16, src_mac UInt64, dst_mac UInt64, proto String, app_proto String, app_type String, s_iso_code String, s_country String, s_city String, d_iso_code String, d_country String, d_city String, trans_id UInt16, recode UInt8, qt_num UInt16, an_num UInt16, ns_num UInt16, ar_num UInt16, q_domain String, q_type UInt16, q_class UInt16, answer Nested(domain String, type UInt16, class UInt16, ttl UInt32,data String),rtt Float64) ENGINE= MergeTree PARTITION BY log_date Order By guid;
CREATE TABLE NTA_DB.SESSION_TCP_LOG(log_date Date, plugin_id UInt64, type_id UInt32, guid UInt64, flow_id UInt64, sensor_id UInt32, log_time UInt64, flow_time UInt64, ip_ver UInt8, src_ip UInt32, dst_ip UInt32, src_port UInt16 , dst_port UInt16, src_mac UInt64, dst_mac UInt64, proto String, app_proto String, app_type String, s_iso_code String, s_country String, s_city String, d_iso_code String, d_country String, d_city String, session_time_total UInt32, packet_count_total UInt64, session_packets_up UInt64, session_packets_down UInt64,  session_packets_total UInt64, session_is_connect UInt8 ,session_pcap_info String, session_info Nested(pkt_len  UInt16, pkt_direct UInt8 , pkt_interval UInt16)) ENGINE= MergeTree PARTITION BY log_date Order By guid;
CREATE TABLE NTA_DB.SESSION_UDP_LOG(log_date Date, plugin_id UInt64, type_id UInt32, guid UInt64, flow_id UInt64, sensor_id UInt32, log_time UInt64, flow_time UInt64, ip_ver UInt8, src_ip UInt32, dst_ip UInt32, src_port UInt16 , dst_port UInt16, src_mac UInt64, dst_mac UInt64, proto String, app_proto String, app_type String, s_iso_code String, s_country String, s_city String, d_iso_code String, d_country String, d_city String, session_time_total UInt32, packet_count_total UInt64, session_packets_up UInt64, session_packets_down UInt64,  session_packets_total UInt64, session_is_connect UInt8 ,session_pcap_info String, session_info Nested(pkt_len  UInt16, pkt_direct UInt8 , pkt_interval UInt16)) ENGINE= MergeTree PARTITION BY log_date Order By guid;
CREATE TABLE NTA_DB.EML_LOGIN_LOG(log_date Date, plugin_id UInt64, type_id UInt32, guid UInt64, flow_id UInt64, sensor_id UInt32, log_time UInt64, flow_time UInt64, ip_ver UInt8, src_ip UInt32, dst_ip UInt32, src_port UInt16 , dst_port UInt16, src_mac UInt64, dst_mac UInt64, proto String, app_proto String, app_type String, s_iso_code String, s_country String, s_city String, d_iso_code String, d_country String, d_city String, server String, client String, user String, password String, login UInt8, auth_type String) ENGINE= MergeTree PARTITION BY log_date Order By guid;
CREATE TABLE NTA_DB.EML_LOG(log_date Date, plugin_id UInt64, type_id UInt32, guid UInt64, flow_id UInt64, sensor_id UInt32, log_time UInt64, flow_time UInt64, ip_ver UInt8, src_ip UInt32, dst_ip UInt32, src_port UInt16 , dst_port UInt16, src_mac UInt64, dst_mac UInt64, proto String, app_proto String, app_type String, s_iso_code String, s_country String, s_city String, d_iso_code String, d_country String, d_city String, from String, to String, cc String, bcc String, subject String, content String, attach Nested(attach_name String, attach_file_id String, attach_size UInt32)) ENGINE= MergeTree PARTITION BY log_date Order By guid;
CREATE TABLE NTA_DB.SSH_LOG(log_date Date, plugin_id UInt64, type_id UInt32, guid UInt64, flow_id UInt64, sensor_id UInt32, log_time UInt64, flow_time UInt64, ip_ver UInt8, src_ip UInt32, dst_ip UInt32, src_port UInt16 , dst_port UInt16, src_mac UInt64, dst_mac UInt64, proto String, app_proto String, app_type String, s_iso_code String, s_country String, s_city String, d_iso_code String, d_country String, d_city String, ssh_ver UInt8, c_app String, s_app String) ENGINE= MergeTree PARTITION BY log_date Order By guid;
CREATE TABLE NTA_DB.HTTP_LOG(log_date Date, plugin_id UInt64, type_id UInt32, guid UInt64, flow_id UInt64, sensor_id UInt32, log_time UInt64, flow_time UInt64, ip_ver UInt8, src_ip UInt32, dst_ip UInt32, src_port UInt16 , dst_port UInt16, src_mac UInt64, dst_mac UInt64, proto String, app_proto String, app_type String, s_iso_code String, s_country String, s_city String, d_iso_code String, d_country String, d_city String, method String, url String, uri String, host String, u_agnet String, req_c_type String, referrer String, _post_data String, _request_head String, server String, res_c_type String, x_cache String, via String, x_powered_by String, download_fileid String, _response_head String, code UInt16, files Nested(file_uuid String, file_name String, file_len UInt64, file_type String)) ENGINE= MergeTree PARTITION BY log_date Order By guid;
CREATE TABLE NTA_DB.RDP_LOG(log_date Date, plugin_id UInt64, type_id UInt32, guid UInt64, flow_id UInt64, sensor_id UInt32, log_time UInt64, flow_time UInt64, ip_ver UInt8, src_ip UInt32, dst_ip UInt32, src_port UInt16 , dst_port UInt16, src_mac UInt64, dst_mac UInt64, proto String, app_proto String, app_type String, s_iso_code String, s_country String, s_city String, d_iso_code String, d_country String, d_city String, connect_name String, host_name String, user_name String, stream_info Nested(pkt_len UInt16, pkt_interval UInt8, pkt_direct UInt8)) ENGINE= MergeTree PARTITION BY log_date Order By guid;
CREATE TABLE NTA_DB.FTP_CMD_LOG(log_date Date, plugin_id UInt64, type_id UInt32, guid UInt64, flow_id UInt64, sensor_id UInt32, log_time UInt64, flow_time UInt64, ip_ver UInt8, src_ip UInt32, dst_ip UInt32, src_port UInt16 , dst_port UInt16, src_mac UInt64, dst_mac UInt64, proto String, app_proto String, app_type String, s_iso_code String, s_country String, s_city String, d_iso_code String, d_country String, d_city String, server_info String, user String, password String, login UInt8, command Nested(client String, server String, file_no UInt32)) ENGINE= MergeTree PARTITION BY log_date Order By guid;
CREATE TABLE NTA_DB.FTP_DATA_LOG(log_date Date, plugin_id UInt64, type_id UInt32, guid UInt64, flow_id UInt64, sensor_id UInt32, log_time UInt64, flow_time UInt64, ip_ver UInt8, src_ip UInt32, dst_ip UInt32, src_port UInt16 , dst_port UInt16, src_mac UInt64, dst_mac UInt64, proto String, app_proto String, app_type String, s_iso_code String, s_country String, s_city String, d_iso_code String, d_country String, d_city String, user String, password String, is_pasv UInt8, file_type String, file_no UInt32, file_name String, file_id String) ENGINE= MergeTree PARTITION BY log_date Order By guid;
CREATE TABLE NTA_DB.TELNET_LOG(log_date Date, plugin_id UInt64, type_id UInt32, guid UInt64, flow_id UInt64, sensor_id UInt32, log_time UInt64, flow_time UInt64, ip_ver UInt8, src_ip UInt32, dst_ip UInt32, src_port UInt16 , dst_port UInt16, src_mac UInt64, dst_mac UInt64, proto String, app_proto String, app_type String, s_iso_code String, s_country String, s_city String, d_iso_code String, d_country String, d_city String, UserName String, UserPassword String, UserState UInt8, ServerOperation Nested(ClientOperation String, ServerResponse String)) ENGINE= MergeTree PARTITION BY log_date Order By guid;
CREATE TABLE NTA_DB.SSL_LOG(log_date Date, plugin_id UInt64, type_id UInt32, guid UInt64, flow_id UInt64, sensor_id UInt32, log_time UInt64, flow_time UInt64, ip_ver UInt8, src_ip UInt32, dst_ip UInt32, src_port UInt16 , dst_port UInt16, src_mac UInt64, dst_mac UInt64, proto String, app_proto String, app_type String, s_iso_code String, s_country String, s_city String, d_iso_code String, d_country String, d_city String, ssl_ver UInt16, host_name String, commn_name String, full_subject String, sha1 String, verify_state UInt8, issuer String) ENGINE= MergeTree PARTITION BY log_date Order By guid;