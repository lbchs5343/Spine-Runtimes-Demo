package com.bytedance.sdk.openadsdk.core.ig;

import android.text.TextUtils;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.openadsdk.core.gh.mp;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.Iterator;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq implements com.bytedance.sdk.component.ia.d.p.dq.d {
    private static final AtomicLong ox = new AtomicLong(0);

    /* renamed from: d, reason: collision with root package name */
    protected final JSONObject f2976d;
    public final String dq;
    private String ia;
    private long ig;
    private String iw;
    private String kk;
    private String mn;
    private long mp;
    private String no;
    private com.bytedance.sdk.openadsdk.iw.dq.dq o;
    private JSONObject p;
    private AtomicBoolean q = new AtomicBoolean(false);
    private String s;

    /* renamed from: com.bytedance.sdk.openadsdk.core.ig.dq$dq, reason: collision with other inner class name */
    public static final class C0163dq {

        /* renamed from: d, reason: collision with root package name */
        private String f2977d;
        private String dq;
        private JSONObject ia;
        private String iw;
        private com.bytedance.sdk.openadsdk.iw.dq.d kk;
        private String mn;
        private com.bytedance.sdk.openadsdk.iw.dq.dq o;
        private String ox;
        private String p;
        private String s;

        public C0163dq d(String str) {
            this.ox = str;
            return this;
        }

        public C0163dq dq(String str) {
            this.f2977d = str;
            return this;
        }

        public C0163dq dq(JSONObject jSONObject) {
            if (jSONObject == null) {
                return this;
            }
            this.ia = jSONObject;
            return this;
        }

        public void dq(com.bytedance.sdk.openadsdk.iw.dq.dq dqVar) {
            if (mp.dq(this.ox, 1.0d)) {
                this.o = dqVar;
                dq dqVar2 = new dq(this);
                try {
                    com.bytedance.sdk.openadsdk.iw.dq.d dVar = this.kk;
                    if (dVar != null) {
                        dVar.dq(dqVar2.f2976d);
                    } else {
                        new com.bytedance.sdk.openadsdk.iw.dq.ox().dq(dqVar2.f2976d);
                    }
                } catch (Throwable th) {
                    ig.d("AdEvent", th);
                }
                com.bytedance.sdk.openadsdk.core.gh.d.dq(dqVar2, this.ox);
            }
        }

        public C0163dq iw(String str) {
            this.mn = str;
            return this;
        }

        public C0163dq ox(String str) {
            this.p = str;
            return this;
        }

        public C0163dq p(String str) {
            this.s = str;
            return this;
        }

        public C0163dq s(String str) {
            this.iw = str;
            return this;
        }
    }

    public dq(C0163dq c0163dq) {
        this.p = new JSONObject();
        this.dq = TextUtils.isEmpty(c0163dq.dq) ? UUID.randomUUID().toString() : c0163dq.dq;
        this.o = c0163dq.o;
        this.no = c0163dq.s;
        this.s = c0163dq.f2977d;
        this.iw = c0163dq.ox;
        if (TextUtils.isEmpty(c0163dq.p)) {
            this.mn = "app_union";
        } else {
            this.mn = c0163dq.p;
        }
        this.ia = c0163dq.iw;
        this.kk = c0163dq.mn;
        this.p = c0163dq.ia = c0163dq.ia != null ? c0163dq.ia : new JSONObject();
        this.mp = System.currentTimeMillis();
        this.f2976d = new JSONObject();
        try {
            mn();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void dq(JSONObject jSONObject) {
        try {
            if (this.ig != 0) {
                String optString = jSONObject.optString("ad_extra_data");
                if (TextUtils.isEmpty(optString)) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("sdk_event_index", this.ig);
                    jSONObject2.put("sdk_event_self_count", com.bytedance.sdk.component.ia.d.ox.dq.dq(this.iw));
                    jSONObject2.put("sdk_session_id", com.bytedance.sdk.openadsdk.core.gh.d.dq);
                    jSONObject2.put("csj_type", no.ia().n() ? 1 : 0);
                    jSONObject2.put("sdk_boost_type", com.bytedance.sdk.openadsdk.core.ox.s.ox());
                    if (!TextUtils.isEmpty(c.kk)) {
                        jSONObject2.put("wrong_stats_url", c.kk);
                    }
                    if (!TextUtils.isEmpty(c.o)) {
                        jSONObject2.put("wrong_applog_url", c.o);
                    }
                    com.bytedance.sdk.openadsdk.core.u.dq.dq().dq(jSONObject2);
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                    return;
                }
                JSONObject jSONObject3 = new JSONObject(optString);
                if (jSONObject3.optInt("sdk_event_index") == 0) {
                    jSONObject3.put("sdk_event_index", this.ig);
                }
                if (jSONObject3.optInt("sdk_event_self_count") == 0) {
                    jSONObject3.put("sdk_event_self_count", com.bytedance.sdk.component.ia.d.ox.dq.dq(this.iw));
                }
                jSONObject3.put("csj_type", no.ia().n() ? 1 : 0);
                jSONObject3.put("sdk_boost_type", com.bytedance.sdk.openadsdk.core.ox.s.ox());
                jSONObject3.put("sdk_session_id", com.bytedance.sdk.openadsdk.core.gh.d.dq);
                if (!TextUtils.isEmpty(c.kk)) {
                    jSONObject3.put("wrong_stats_url", c.kk);
                }
                if (!TextUtils.isEmpty(c.o)) {
                    jSONObject3.put("wrong_applog_url", c.o);
                }
                com.bytedance.sdk.openadsdk.core.u.dq.dq().dq(jSONObject3);
                jSONObject.put("ad_extra_data", jSONObject3.toString());
            }
        } catch (Exception unused) {
        }
    }

    private void ia() throws JSONException {
        this.f2976d.putOpt(TTDownloadField.TT_TAG, this.s);
        this.f2976d.putOpt(TTDownloadField.TT_LABEL, this.iw);
        this.f2976d.putOpt("category", this.mn);
        if (!TextUtils.isEmpty(this.ia)) {
            try {
                this.f2976d.putOpt("value", Long.valueOf(Long.parseLong(this.ia)));
            } catch (NumberFormatException unused) {
                this.f2976d.putOpt("value", 0L);
            }
        }
        if (!TextUtils.isEmpty(this.kk)) {
            this.f2976d.putOpt("ext_value", this.kk);
        }
        if (!TextUtils.isEmpty(this.no)) {
            this.f2976d.putOpt("log_extra", this.no);
        }
        if (!TextUtils.equals(this.iw, "pangle_live_sdk_monitor")) {
            this.f2976d.putOpt("is_ad_event", "1");
        }
        this.f2976d.putOpt("nt", Integer.valueOf(q.ox(wp.getContext())));
        this.f2976d.putOpt("tob_ab_sdk_version", no.ia().u());
        Iterator<String> keys = this.p.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            this.f2976d.putOpt(next, this.p.opt(next));
        }
    }

    private void mn() {
        this.ig = ox.incrementAndGet();
    }

    @Override // com.bytedance.sdk.component.ia.d.p.dq.d
    public long d() {
        return this.ig;
    }

    @Override // com.bytedance.sdk.component.ia.d.p.dq.d
    public long dq() {
        return this.mp;
    }

    @Override // com.bytedance.sdk.component.ia.d.p.dq.d
    public JSONObject dq(String str) {
        JSONObject jSONObject;
        JSONObject s = s();
        try {
            String optString = s.optString("ad_extra_data");
            if (TextUtils.isEmpty(optString)) {
                jSONObject = new JSONObject();
                if (wp.d().fw() && !TextUtils.isEmpty(str)) {
                    jSONObject.put("will_save_labels", str);
                }
            } else {
                JSONObject jSONObject2 = new JSONObject(optString);
                if (wp.d().fw() && TextUtils.isEmpty(jSONObject2.optString("will_save_labels")) && !TextUtils.isEmpty(str)) {
                    jSONObject2.put("will_save_labels", str);
                }
                jSONObject = jSONObject2;
            }
            String mn = com.bytedance.sdk.openadsdk.core.live.d.dq().mn();
            if (mn != null) {
                jSONObject.putOpt("live_plugin_version", mn.replaceAll("\\.", ""));
            }
            s.put("ad_extra_data", jSONObject.toString());
            return s;
        } catch (Exception e2) {
            e2.printStackTrace();
            return s;
        }
    }

    public boolean iw() {
        JSONObject jSONObject = this.f2976d;
        if (jSONObject == null) {
            return false;
        }
        String optString = jSONObject.optString(TTDownloadField.TT_LABEL);
        if (!TextUtils.isEmpty(optString)) {
            return d.dq.contains(optString);
        }
        if (TextUtils.isEmpty(this.iw)) {
            return false;
        }
        return d.dq.contains(this.iw);
    }

    public String ox() {
        if (!TextUtils.isEmpty(this.iw)) {
            return this.iw;
        }
        JSONObject jSONObject = this.f2976d;
        return jSONObject != null ? jSONObject.optString(TTDownloadField.TT_LABEL) : "";
    }

    public String p() {
        return this.dq;
    }

    public JSONObject s() {
        if (this.q.get()) {
            return this.f2976d;
        }
        try {
            ia();
            com.bytedance.sdk.openadsdk.iw.dq.dq dqVar = this.o;
            if (dqVar != null) {
                dqVar.dq(this.f2976d);
            }
            dq(this.f2976d);
            this.q.set(true);
        } catch (Throwable th) {
            ig.d("AdEvent", th);
        }
        return this.f2976d;
    }
}
