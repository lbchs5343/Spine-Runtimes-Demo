package g;

import android.content.Context;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.tencent.bugly.BuglyStrategy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class gad {

    /* renamed from: a, reason: collision with root package name */
    public static final tw f17775a;
    public static final tw aa;

    /* renamed from: ab, reason: collision with root package name */
    public static final tw f17776ab;
    public static final tw ac;
    public static final tw ad;
    public static final tw ae;
    public static final tw af;
    public static final tw ag;
    public static final tw ah;
    public static final tw ai;
    public static final tw aj;
    public static final tw ak;
    public static final tw al;
    public static final tw am;
    public static final tw an;
    public static final tw ao;
    public static final tw ap;
    public static final tw aq;
    public static final tw ar;
    public static final tw as;
    public static final tw at;
    public static final tw au;
    public static final tw av;
    public static final tw aw;
    public static final tw ax;
    public static final tw ay;
    public static final tw az;

    /* renamed from: b, reason: collision with root package name */
    public static final tw f17777b;
    public static final tw ba;
    public static final tw bb;
    public static final tw bc;
    public static final tw bd;
    public static final tw be;
    public static final tw bf;
    public static final tw bg;
    public static final tw bh;
    public static final tw bi;
    public static final tw bj;
    public static final tw bk;
    public static final tw bl;
    public static final tw bm;
    public static final tw bn;
    public static final tw bo;
    public static final tw bp;
    public static final tw bq;
    public static final tw br;
    public static final tw bs;
    public static final tw bt;
    public static final tw bu;
    public static final tw bv;
    public static final tw bw;
    public static final tw bx;

    /* renamed from: c, reason: collision with root package name */
    public static final tw f17778c;

    /* renamed from: d, reason: collision with root package name */
    public static final tw f17779d;

    /* renamed from: e, reason: collision with root package name */
    public static final tw f17780e;

    /* renamed from: f, reason: collision with root package name */
    public static final tw f17781f;

    /* renamed from: g, reason: collision with root package name */
    public static final tw f17782g;
    public static final tw h;
    public static final tw i;
    public static final tw j;
    public static final tw k;
    public static final tw l;
    public static final tw m;
    public static final tw n;
    public static final tw o;
    public static final tw p;
    public static final tw q;
    public static final tw r;
    public static final tw s;
    public static final tw t;
    public static final tw u;
    public static final tw v;
    public static final tw w;
    public static final tw x;
    public static final tw y;
    public static final List z = Collections.synchronizedList(new ArrayList());

    static {
        Collections.synchronizedSet(new HashSet());
        Long valueOf = Long.valueOf(ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT);
        ax = by("measurement.ad_id_cache_time", valueOf, valueOf, dwm.i);
        Long valueOf2 = Long.valueOf(AdBaseConstants.DEFAULT_DELAY_TIMESTAMP);
        bj = by("measurement.monitoring.sample_period_millis", valueOf2, valueOf2, bfy.k);
        t = by("measurement.config.cache_time", valueOf2, 3600000L, ao.f10545c);
        x = by("measurement.config.url_scheme", "https", "https", acq.bb);
        al = by("measurement.config.url_authority", "app-measurement.com", "app-measurement.com", bmr.f11837b);
        bs = by("measurement.upload.max_bundles", 100, 100, dwm.q);
        f17779d = by("measurement.upload.max_batch_size", 65536, 65536, bfy.i);
        au = by("measurement.upload.max_bundle_size", 65536, 65536, dwm.f14949g);
        ba = by("measurement.upload.max_events_per_bundle", 1000, 1000, acq.v);
        Integer valueOf3 = Integer.valueOf(BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH);
        f17780e = by("measurement.upload.max_events_per_day", valueOf3, valueOf3, bfy.t);
        v = by("measurement.upload.max_error_events_per_day", 1000, 1000, acq.f9983b);
        aq = by("measurement.upload.max_public_events_per_day", 50000, 50000, bfy.f11483e);
        s = by("measurement.upload.max_conversions_per_day", 10000, 10000, bmr.w);
        k = by("measurement.upload.max_realtime_events_per_day", 10, 10, ao.w);
        ap = by("measurement.store.max_stored_events_per_app", valueOf3, valueOf3, dwm.m);
        bb = by("measurement.upload.url", "https://app-measurement.com/a", "https://app-measurement.com/a", bmr.v);
        bu = by("measurement.upload.backoff_period", 43200000L, 43200000L, ao.o);
        ao = by("measurement.upload.window_interval", 3600000L, 3600000L, dwm.v);
        bd = by("measurement.upload.interval", 3600000L, 3600000L, bmr.f11836a);
        aa = by("measurement.upload.realtime_upload_interval", valueOf, valueOf, acq.ar);
        ai = by("measurement.upload.debug_upload_interval", 1000L, 1000L, bmr.s);
        ak = by("measurement.upload.minimum_delay", 500L, 500L, ao.t);
        br = by("measurement.alarm_manager.minimum_interval", 60000L, 60000L, dwm.s);
        l = by("measurement.upload.stale_data_deletion_interval", valueOf2, valueOf2, acq.n);
        f17777b = by("measurement.upload.refresh_blacklisted_config_interval", 604800000L, 604800000L, bfy.n);
        bc = by("measurement.upload.initial_upload_delay_time", 15000L, 15000L, bmr.i);
        u = by("measurement.upload.retry_time", 1800000L, 1800000L, ao.p);
        ad = by("measurement.upload.retry_count", 6, 6, acq.au);
        f17776ab = by("measurement.upload.max_queue_time", 2419200000L, 2419200000L, bfy.m);
        bq = by("measurement.lifetimevalue.max_currency_tracked", 4, 4, bmr.l);
        be = by("measurement.audience.filter_result_max_count", 200, 200, dwm.l);
        p = by("measurement.upload.max_public_user_properties", 25, 25, null);
        f17782g = by("measurement.upload.max_event_name_cardinality", 500, 500, null);
        bp = by("measurement.upload.max_public_event_params", 25, 25, null);
        Long valueOf4 = Long.valueOf(PushUIConfig.dismissTime);
        an = by("measurement.service_client.idle_disconnect_millis", valueOf4, valueOf4, acq.bg);
        Boolean bool = Boolean.FALSE;
        ag = by("measurement.test.boolean_flag", bool, bool, bfy.z);
        h = by("measurement.test.string_flag", "---", "---", bmr.k);
        ae = by("measurement.test.long_flag", -1L, -1L, ao.n);
        n = by("measurement.test.int_flag", -2, -2, dwm.k);
        Double valueOf5 = Double.valueOf(-3.0d);
        bf = by("measurement.test.double_flag", valueOf5, valueOf5, bfy.w);
        at = by("measurement.experiment.max_ids", 50, 50, bmr.x);
        m = by("measurement.max_bundles_per_iteration", 100, 100, ao.f10548f);
        as = by("measurement.sdk.attribution.cache.ttl", 604800000L, 604800000L, dwm.y);
        bi = by("measurement.redaction.app_instance_id.ttl", 7200000L, 7200000L, bfy.j);
        Boolean bool2 = Boolean.TRUE;
        by("measurement.collection.log_event_and_bundle_v2", bool2, bool2, bmr.u);
        ay = by("measurement.quality.checksum", bool, bool, null);
        y = by("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", bool, bool, ao.aa);
        r = by("measurement.audience.refresh_event_count_filters_timestamp", bool, bool, dwm.u);
        aj = by("measurement.audience.use_bundle_timestamp_for_event_count_filters", bool, bool, acq.ac);
        af = by("measurement.sdk.collection.retrieve_deeplink_from_bow_2", bool2, bool2, bmr.h);
        bw = by("measurement.sdk.collection.last_deep_link_referrer_campaign2", bool, bool, ao.v);
        bo = by("measurement.lifecycle.app_in_background_parameter", bool, bool, dwm.h);
        ar = by("measurement.integration.disable_firebase_instance_id", bool, bool, acq.bl);
        ac = by("measurement.collection.service.update_with_analytics_fix", bool, bool, bfy.y);
        q = by("measurement.client.firebase_feature_rollout.v1.enable", bool2, bool2, ao.f10547e);
        j = by("measurement.client.sessions.check_on_reset_and_enable2", bool2, bool2, dwm.f14946c);
        by("measurement.collection.synthetic_data_mitigation", bool, bool, acq.bo);
        bg = by("measurement.service.storage_consent_support_version", 203600, 203600, bfy.s);
        by("measurement.client.click_identifier_control.dev", bool, bool, ao.u);
        by("measurement.service.click_identifier_control", bool, bool, dwm.w);
        bl = by("measurement.service.store_null_safelist", bool2, bool2, acq.as);
        w = by("measurement.service.store_safelist", bool2, bool2, bfy.p);
        f17781f = by("measurement.redaction.no_aiid_in_config_request", bool2, bool2, bmr.q);
        f17778c = by("measurement.redaction.config_redacted_fields", bool2, bool2, ao.f10543ab);
        bk = by("measurement.redaction.upload_redacted_fields", bool2, bool2, acq.bm);
        am = by("measurement.redaction.upload_subdomain_override", bool2, bool2, bfy.f11484f);
        bm = by("measurement.redaction.device_info", bool2, bool2, bmr.n);
        i = by("measurement.redaction.user_id", bool2, bool2, dwm.n);
        av = by("measurement.redaction.google_signals", bool2, bool2, acq.ah);
        o = by("measurement.collection.enable_session_stitching_token.service", bool, bool, bfy.o);
        az = by("measurement.collection.enable_session_stitching_token.client.dev", bool, bool, bmr.f11838d);
        bn = by("measurement.redaction.app_instance_id", bool2, bool2, ao.j);
        f17775a = by("measurement.redaction.populate_ephemeral_app_instance_id", bool2, bool2, dwm.f14947d);
        bh = by("measurement.redaction.enhanced_uid", bool2, bool2, acq.ba);
        ah = by("measurement.redaction.e_tag", bool2, bool2, bmr.m);
        bt = by("measurement.redaction.client_ephemeral_aiid_generation", bool2, bool2, ao.h);
        bx = by("measurement.redaction.retain_major_os_version", bool2, bool2, acq.ag);
        by("measurement.redaction.scion_payload_generator", bool2, bool2, bfy.x);
        aw = by("measurement.audience.dynamic_filters.oob_fix", bool2, bool2, bmr.f11840g);
        bv = by("measurement.service.clear_global_params_on_uninstall", bool2, bool2, ao.r);
    }

    public static tw by(String str, Object obj, Object obj2, aii aiiVar) {
        tw twVar = new tw(str, obj, obj2, aiiVar);
        z.add(twVar);
        return twVar;
    }

    public static Map bz(Context context) {
        fod j2 = fod.j(context.getContentResolver(), gbd.b(), foq.f17152b);
        return j2 == null ? Collections.EMPTY_MAP : j2.l();
    }
}
