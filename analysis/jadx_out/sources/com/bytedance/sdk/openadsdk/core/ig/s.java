package com.bytedance.sdk.openadsdk.core.ig;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.ugeno.kk;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class s {

    /* renamed from: d, reason: collision with root package name */
    private final j f3029d;
    private volatile boolean dq = false;
    private String ox = "landingpage";
    private long p = 0;
    private long s = 0;
    private long iw = 0;
    private long mn = 0;
    private long ia = 0;
    private long kk = 0;
    private AtomicInteger o = new AtomicInteger(0);
    private boolean no = false;
    private AtomicBoolean ig = new AtomicBoolean(false);

    public s(j jVar) {
        this.f3029d = jVar;
    }

    private void dq(String str, JSONObject jSONObject) {
        dq(str, jSONObject, -1L);
    }

    private void dq(String str, JSONObject jSONObject, long j) {
        JSONObject jSONObject2;
        if (!this.no || this.f3029d == null || TextUtils.isEmpty(str)) {
            return;
        }
        JSONObject jSONObject3 = null;
        if (jSONObject != null) {
            try {
                jSONObject.put("is_playable", i.ox(this.f3029d) ? 1 : 0);
                jSONObject.put("usecache", com.bytedance.sdk.openadsdk.core.playable.dq.dq().dq(this.f3029d) ? 1 : 0);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            try {
                jSONObject2 = new JSONObject();
            } catch (JSONException e3) {
                e = e3;
            }
            try {
                jSONObject2.put("ad_extra_data", jSONObject.toString());
                if (j > 0) {
                    jSONObject2.put(MediationConstant.EXTRA_DURATION, j);
                }
                jSONObject3 = jSONObject2;
            } catch (JSONException e4) {
                e = e4;
                jSONObject3 = jSONObject2;
                e.printStackTrace();
                ox.ox(this.f3029d, this.ox, str, jSONObject3);
            }
        }
        ox.ox(this.f3029d, this.ox, str, jSONObject3);
    }

    public void d() {
        if (this.dq) {
            return;
        }
        this.mn = System.currentTimeMillis();
        this.kk = System.currentTimeMillis();
        this.dq = true;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("render_type", "ugen");
            j jVar = this.f3029d;
            if (jVar != null && kk.ia(jVar)) {
                jSONObject.putOpt("native_lp_tpl_id", Integer.valueOf(this.f3029d.no()));
            }
        } catch (Exception unused) {
        }
        dq("load_start", jSONObject);
    }

    public s dq(boolean z) {
        this.no = z;
        return this;
    }

    public void dq() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("render_type", "ugen");
            j jVar = this.f3029d;
            if (jVar != null && kk.ia(jVar)) {
                jSONObject.putOpt("native_lp_tpl_id", Integer.valueOf(this.f3029d.no()));
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        dq("open_url_h5", jSONObject);
    }

    public void dq(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        this.s = currentTimeMillis;
        long max = currentTimeMillis - Math.max(this.p, this.iw);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("load_status", 2);
            jSONObject.put("max_scroll_percent", this.o.get());
            jSONObject.put("is_slide", i);
            jSONObject.putOpt("render_type", "ugen");
            j jVar = this.f3029d;
            if (jVar != null && kk.ia(jVar)) {
                jSONObject.putOpt("native_lp_tpl_id", Integer.valueOf(this.f3029d.no()));
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        dq("stay_page", jSONObject, Math.min(max, 600000L));
    }

    public void dq(int i, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("render_type", "ugen");
            j jVar = this.f3029d;
            if (jVar != null && kk.ia(jVar)) {
                jSONObject.putOpt("native_lp_tpl_id", Integer.valueOf(this.f3029d.no()));
            }
            jSONObject.putOpt(PluginConstants.KEY_ERROR_CODE, Integer.valueOf(i));
            jSONObject.putOpt("msg", str);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        dq("load_fail", jSONObject);
    }

    public void dq(long j) {
        if (this.ig.get()) {
            return;
        }
        this.ig.set(true);
        this.ia = System.currentTimeMillis();
        JSONObject jSONObject = new JSONObject();
        long j2 = this.ia - this.mn;
        try {
            jSONObject.putOpt("render_type", "ugen");
            jSONObject.put("net_work_duration", j);
            j jVar = this.f3029d;
            if (jVar != null && kk.ia(jVar)) {
                jSONObject.putOpt("native_lp_tpl_id", Integer.valueOf(this.f3029d.no()));
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        dq("load_finish", jSONObject, Math.min(j2, 600000L));
    }

    public void ox() {
        this.iw = System.currentTimeMillis();
        this.p = System.currentTimeMillis();
    }

    public void p() {
        if (this.ig.get() || !this.dq) {
            return;
        }
        ox.dq(this.f3029d, this.ox, "load", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.s.1
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("render_type", "ugen");
                if (s.this.f3029d != null && kk.ia(s.this.f3029d)) {
                    jSONObject.putOpt("native_lp_tpl_id", Integer.valueOf(s.this.f3029d.no()));
                }
                com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject2, s.this.f3029d);
                jSONObject.putOpt("ad_extra_data", jSONObject2);
                jSONObject.put(MediationConstant.EXTRA_DURATION, Math.min(System.currentTimeMillis() - s.this.kk, 600000L));
            }
        });
    }
}
