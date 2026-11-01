package com.bytedance.msdk.core.mp;

import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.core.no;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {
    private static volatile dq dq;
    private Bridge iw;
    private d p;

    /* renamed from: d, reason: collision with root package name */
    private boolean f982d = false;
    private boolean ox = false;
    private boolean s = false;

    private dq() {
    }

    public static dq dq() {
        if (dq == null) {
            synchronized (dq.class) {
                try {
                    if (dq == null) {
                        dq = new dq();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0011  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0016 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String d(String str) {
        JSONObject jSONObject;
        JSONObject dq2;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException unused) {
            }
            dq2 = dq(jSONObject);
            if (dq2 == null) {
                return dq2.toString();
            }
            return null;
        }
        jSONObject = null;
        dq2 = dq(jSONObject);
        if (dq2 == null) {
        }
    }

    public JSONObject d(JSONObject jSONObject) {
        String gx = no.ia().gx();
        if (TextUtils.isEmpty(gx)) {
            return jSONObject;
        }
        if (jSONObject == null) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("waterfall_ab_version", gx);
                return jSONObject2;
            } catch (JSONException unused) {
                return null;
            }
        }
        if (!jSONObject.has("waterfall_ab_version")) {
            jSONObject.put("waterfall_ab_version", gx);
            return jSONObject;
        }
        String optString = jSONObject.optString("waterfall_ab_version");
        if (TextUtils.isEmpty(optString)) {
            jSONObject.put("waterfall_ab_version", gx);
            return jSONObject;
        }
        jSONObject.put("waterfall_ab_version", optString + "," + gx);
        return jSONObject;
    }

    public void d() {
        this.f982d = true;
    }

    public JSONObject dq(JSONObject jSONObject) {
        String gx = no.ia().gx();
        if (TextUtils.isEmpty(gx)) {
            return jSONObject;
        }
        if (jSONObject == null) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("app_ab_version", gx);
                return jSONObject2;
            } catch (JSONException unused) {
                return null;
            }
        }
        if (!jSONObject.has("app_ab_version")) {
            jSONObject.put("app_ab_version", gx);
            return jSONObject;
        }
        String optString = jSONObject.optString("app_ab_version");
        if (TextUtils.isEmpty(optString)) {
            jSONObject.put("app_ab_version", gx);
            return jSONObject;
        }
        jSONObject.put("app_ab_version", optString + "," + gx);
        return jSONObject;
    }

    public void dq(int i, String str) {
        d dVar = this.p;
        if (dVar != null) {
            dVar.dq(i, str);
        }
    }

    public void dq(Bridge bridge) {
        this.iw = bridge;
    }

    public void dq(d dVar) {
        this.p = dVar;
    }

    public void dq(boolean z) {
        this.ox = z;
    }

    public boolean dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if ("200000000".equals(str)) {
            return true;
        }
        return str.matches("^1[0-9]{8}$");
    }

    public boolean dq(String str, int i) {
        return dq(str) || com.bytedance.msdk.core.dq.d().dq(str, i, 101) != null;
    }

    public void iw() {
        this.s = true;
    }

    public Bridge mn() {
        return this.iw;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0011  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0016 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String ox(String str) {
        JSONObject jSONObject;
        JSONObject d2;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException unused) {
            }
            d2 = d(jSONObject);
            if (d2 == null) {
                return d2.toString();
            }
            return null;
        }
        jSONObject = null;
        d2 = d(jSONObject);
        if (d2 == null) {
        }
    }

    public boolean ox() {
        return this.f982d;
    }

    public boolean p() {
        return this.ox;
    }

    public void s() {
        d dVar = this.p;
        if (dVar != null) {
            dVar.dq();
        }
    }
}
