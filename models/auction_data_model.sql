select 
make_timestamp (
date_part('year',current_date - interval (date_part('day', __time)) DAY), 
date_part('month',current_date - interval (date_part('day', __time)) DAY), 
date_part('day',current_date - interval (date_part('day', __time)) DAY), 
cast(round(24*random()) as bigint),0,00.00) as __time,
has_bid_floor_cnt,
bid_request_cnt,
bid_floor,
app_site_name,
app_site_domain,
pub_name, 
app_site_cat,
ad_size,
device_region,
device_osv,
bid_floor_bucket,
platform_browser,
device_os,
device_type,
ad_position,
video_max_duration_bucket,
video_min_duration_bucket,
placement_type,
auction_type,
app_or_site,
from auction_data_raw