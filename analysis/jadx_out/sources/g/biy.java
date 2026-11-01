package g;

import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.ss.android.downloadad.api.constant.AdBaseConstants;

/* loaded from: classes3.dex */
public final class biy implements bbz {

    /* renamed from: a, reason: collision with root package name */
    public static final duh f11671a;
    public static final duh aa;

    /* renamed from: ab, reason: collision with root package name */
    public static final duh f11672ab;
    public static final duh ac;
    public static final duh ad;
    public static final duh ae;
    public static final duh af;
    public static final duh ag;
    public static final duh ah;
    public static final duh ai;
    public static final duh aj;

    /* renamed from: b, reason: collision with root package name */
    public static final duh f11673b;

    /* renamed from: c, reason: collision with root package name */
    public static final duh f11674c;

    /* renamed from: d, reason: collision with root package name */
    public static final duh f11675d;

    /* renamed from: e, reason: collision with root package name */
    public static final duh f11676e;

    /* renamed from: f, reason: collision with root package name */
    public static final duh f11677f;

    /* renamed from: g, reason: collision with root package name */
    public static final duh f11678g;
    public static final duh h;
    public static final duh i;
    public static final duh j;
    public static final duh k;
    public static final duh l;
    public static final duh m;
    public static final duh n;
    public static final duh o;
    public static final duh p;
    public static final duh q;
    public static final duh r;
    public static final duh s;
    public static final duh t;
    public static final duh u;
    public static final duh v;
    public static final duh w;
    public static final duh x;
    public static final duh y;
    public static final duh z;

    static {
        gez gezVar = new gez(gbd.b(), false, true);
        m = gezVar.m(ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT, "measurement.ad_id_cache_time");
        y = gezVar.m(100L, "measurement.max_bundles_per_iteration");
        ae = gezVar.m(AdBaseConstants.DEFAULT_DELAY_TIMESTAMP, "measurement.config.cache_time");
        gezVar.o("measurement.log_tag", "FA");
        i = new duh(gezVar, "measurement.config.url_authority", "app-measurement.com", 3);
        l = new duh(gezVar, "measurement.config.url_scheme", "https", 3);
        s = gezVar.m(1000L, "measurement.upload.debug_upload_interval");
        ai = gezVar.m(4L, "measurement.lifetimevalue.max_currency_tracked");
        f11673b = gezVar.m(100000L, "measurement.store.max_stored_events_per_app");
        x = gezVar.m(50L, "measurement.experiment.max_ids");
        z = gezVar.m(200L, "measurement.audience.filter_result_max_count");
        f11674c = gezVar.m(60000L, "measurement.alarm_manager.minimum_interval");
        k = gezVar.m(500L, "measurement.upload.minimum_delay");
        w = gezVar.m(AdBaseConstants.DEFAULT_DELAY_TIMESTAMP, "measurement.monitoring.sample_period_millis");
        h = gezVar.m(ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT, "measurement.upload.realtime_upload_interval");
        f11676e = gezVar.m(604800000L, "measurement.upload.refresh_blacklisted_config_interval");
        gezVar.m(3600000L, "measurement.config.cache_time.service");
        v = gezVar.m(PushUIConfig.dismissTime, "measurement.service_client.idle_disconnect_millis");
        gezVar.o("measurement.log_tag.service", "FA-SVC");
        aa = gezVar.m(AdBaseConstants.DEFAULT_DELAY_TIMESTAMP, "measurement.upload.stale_data_deletion_interval");
        aj = gezVar.m(604800000L, "measurement.sdk.attribution.cache.ttl");
        u = gezVar.m(7200000L, "measurement.redaction.app_instance_id.ttl");
        ac = gezVar.m(43200000L, "measurement.upload.backoff_period");
        n = gezVar.m(15000L, "measurement.upload.initial_upload_delay_time");
        q = gezVar.m(3600000L, "measurement.upload.interval");
        r = gezVar.m(65536L, "measurement.upload.max_bundle_size");
        ah = gezVar.m(100L, "measurement.upload.max_bundles");
        f11677f = gezVar.m(500L, "measurement.upload.max_conversions_per_day");
        f11671a = gezVar.m(1000L, "measurement.upload.max_error_events_per_day");
        f11672ab = gezVar.m(1000L, "measurement.upload.max_events_per_bundle");
        j = gezVar.m(100000L, "measurement.upload.max_events_per_day");
        p = gezVar.m(50000L, "measurement.upload.max_public_events_per_day");
        o = gezVar.m(2419200000L, "measurement.upload.max_queue_time");
        ag = gezVar.m(10L, "measurement.upload.max_realtime_events_per_day");
        ad = gezVar.m(65536L, "measurement.upload.max_batch_size");
        f11678g = gezVar.m(6L, "measurement.upload.retry_count");
        f11675d = gezVar.m(1800000L, "measurement.upload.retry_time");
        af = new duh(gezVar, "measurement.upload.url", "https://app-measurement.com/a", 3);
        t = gezVar.m(3600000L, "measurement.upload.window_interval");
    }
}
