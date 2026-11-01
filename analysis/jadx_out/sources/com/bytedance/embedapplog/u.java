package com.bytedance.embedapplog;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class u {

    /* renamed from: d, reason: collision with root package name */
    private final ia f744d;
    private final Context dq;
    private volatile JSONObject iw;
    private volatile JSONObject mn;
    private final SharedPreferences ox;
    private final SharedPreferences p;
    private final SharedPreferences s;

    public u(Context context, ia iaVar) {
        this.dq = context;
        this.f744d = iaVar;
        this.s = com.bytedance.sdk.openadsdk.api.plugin.d.d(context, "embed_applog_stats", 0);
        this.ox = com.bytedance.sdk.openadsdk.api.plugin.d.d(context, "embed_header_custom", 0);
        this.p = com.bytedance.sdk.openadsdk.api.plugin.d.d(context, "embed_last_sp_session", 0);
    }

    public int bl() {
        return this.f744d.jy();
    }

    public String c() {
        return this.f744d.cd();
    }

    public long cd() {
        return this.s.getLong("abtest_fetch_interval", 0L);
    }

    public String ce() {
        return this.f744d.r();
    }

    public String d() {
        return this.p.getString("session_last_day", "");
    }

    public void d(JSONObject jSONObject) {
        this.ox.edit().putString("header_custom_info", jSONObject != null ? jSONObject.toString() : "").apply();
    }

    public String dq() {
        return this.f744d.ia();
    }

    public void dq(String str, int i) {
        this.p.edit().putString("session_last_day", str).putInt("session_order", i).apply();
    }

    public void dq(JSONObject jSONObject) {
        if (jo.f730d) {
            jo.dq("setConfig, " + jSONObject.toString(), null);
        }
        this.mn = jSONObject;
        long currentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor edit = this.s.edit();
        long optInt = jSONObject.optInt("session_interval", 0);
        if (optInt <= 0 || optInt > 604800) {
            edit.remove("session_interval");
        } else {
            edit.putLong("session_interval", optInt * 1000);
        }
        long optInt2 = jSONObject.optInt("batch_event_interval", 0);
        if (optInt2 <= 0 || optInt2 > 604800) {
            edit.remove("batch_event_interval");
        } else {
            edit.putLong("batch_event_interval", optInt2 * 1000);
        }
        int optInt3 = jSONObject.optInt("send_launch_timely", 0);
        if (optInt3 <= 0 || optInt3 > 604800) {
            edit.remove("send_launch_timely");
        } else {
            edit.putInt("send_launch_timely", optInt3);
        }
        long optInt4 = jSONObject.optInt("abtest_fetch_interval", 0);
        if (optInt4 <= 20 || optInt4 > 604800) {
            edit.remove("abtest_fetch_interval");
        } else {
            edit.putLong("abtest_fetch_interval", optInt4 * 1000);
        }
        boolean optBoolean = jSONObject.optBoolean("bav_log_collect", true);
        if (optBoolean) {
            edit.putBoolean("bav_log_collect", true);
        } else {
            edit.remove("bav_log_collect");
        }
        jo.dq = optBoolean;
        if (jSONObject.optBoolean("bav_ab_config", false)) {
            edit.putBoolean("bav_ab_config", true);
        } else {
            edit.remove("bav_ab_config");
        }
        int optInt5 = jSONObject.optInt("bav_monitor_rate", 0);
        if (optInt5 <= 0 || optInt5 > 100) {
            edit.remove("bav_monitor_rate");
            wi.dq(false);
        } else {
            edit.putInt("bav_monitor_rate", optInt5);
            wi.dq(true);
        }
        edit.putLong("app_log_last_config_time", currentTimeMillis);
        edit.apply();
    }

    public boolean dq(ArrayList<ds> arrayList) {
        return true;
    }

    public String e() {
        return null;
    }

    public String er() {
        return this.f744d.i();
    }

    public String f() {
        return this.ox.getString("user_unique_id", null);
    }

    public boolean fw() {
        if (this.f744d.kk() == 0) {
            String dq = yo.dq(this.dq);
            if (TextUtils.isEmpty(dq)) {
                this.f744d.dq(0);
            } else {
                this.f744d.dq(dq.contains(":") ? 2 : 1);
            }
        }
        return this.f744d.kk() == 1;
    }

    public String gh() {
        return !TextUtils.isEmpty(this.f744d.gh()) ? this.f744d.gh() : this.ox.getString("ab_version", null);
    }

    public CharSequence gx() {
        return this.f744d.k();
    }

    public String h() {
        return this.s.getString("user_agent", null);
    }

    public boolean i() {
        return this.s.getBoolean("bav_ab_config", false);
    }

    public int ia() {
        return this.s.getInt("bav_monitor_rate", 0);
    }

    public String ig() {
        return this.f744d.iw();
    }

    public String ir() {
        return this.f744d.mp();
    }

    public JSONObject iw() {
        return this.mn;
    }

    public String j() {
        return this.f744d.ji() == null ? "" : this.f744d.ji();
    }

    public String ji() {
        return this.f744d.ig();
    }

    public String jy() {
        return this.ox.getString("ab_sdk_version", "");
    }

    public long k() {
        return this.s.getLong("session_interval", 30000L);
    }

    public String kk() {
        return this.f744d.ox();
    }

    public String kx() {
        return this.f744d.dq();
    }

    public String l() {
        return this.f744d.h();
    }

    public boolean le() {
        return this.s.getBoolean("bav_log_collect", false);
    }

    public long mn() {
        return this.s.getLong("app_log_last_config_time", 0L);
    }

    public String mp() {
        return this.f744d.mn();
    }

    public int n() {
        return this.f744d.f();
    }

    public String nh() {
        return this.f744d.bl() == null ? "" : this.f744d.bl();
    }

    public String no() {
        return this.f744d.s();
    }

    public String o() {
        return this.f744d.p();
    }

    public boolean ob() {
        return this.f744d.e();
    }

    public int op() {
        return this.f744d.fw();
    }

    public int ox() {
        return this.p.getInt("session_order", 0);
    }

    public void ox(JSONObject jSONObject) {
        jo.dq("setAbConfig, " + jSONObject.toString(), null);
        this.ox.edit().putString("ab_configure", jSONObject.toString()).apply();
        this.iw = null;
    }

    public SharedPreferences p() {
        return this.s;
    }

    public String q() {
        return this.ox.getString("header_custom_info", null);
    }

    public JSONObject r() {
        JSONObject jSONObject = this.iw;
        if (jSONObject != null) {
            return jSONObject;
        }
        synchronized (this) {
            try {
                if (i()) {
                    jSONObject = new JSONObject(this.ox.getString("ab_configure", ""));
                }
            } catch (JSONException unused) {
            }
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            this.iw = jSONObject;
        }
        return jSONObject;
    }

    public boolean s() {
        return this.f744d.d();
    }

    public ia t() {
        return this.f744d;
    }

    public String u() {
        return this.f744d.q();
    }

    public boolean vf() {
        return this.f744d.wp();
    }

    public String wn() {
        return this.f744d.le();
    }

    public long wp() {
        return this.s.getLong("batch_event_interval", 30000L);
    }
}
