package com.bytedance.sdk.openadsdk.core.wp.ox;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.component.kk.p.iw;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.ox.p;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.core.wp.d;
import com.bytedance.sdk.openadsdk.core.wp.ia;
import com.bytedance.sdk.openadsdk.core.wp.kk;
import g.awf;
import java.util.Calendar;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq extends kk implements d {
    private static volatile dq dq;

    /* renamed from: d, reason: collision with root package name */
    private AtomicBoolean f3727d = new AtomicBoolean(false);
    private long ox;

    private dq() {
    }

    private int dq(String str, int i, int i2, int i3, String str2) {
        int dq2 = iw.dq(str, i, i2, i3);
        float dq3 = iw.dq(str, i2, i3);
        int i4 = (dq2 <= 0 || dq2 >= 50) ? dq2 >= 100 ? dq3 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? 3 : 1 : dq3 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? 2 : 4 : 0;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("identifier", str2);
            jSONObject.put("network_quality", i4);
            jSONObject.put("rtt", dq2);
            jSONObject.put("lost", dq3);
            jSONObject.put("timeZone", p());
        } catch (JSONException e2) {
            e2.printStackTrace();
            Log.e("NetStateStrategy", "getNetworkState failed" + e2.getMessage());
        }
        ig.dq().d(jSONObject);
        return i4;
    }

    private void dq(int i) {
        if (i == -1) {
            return;
        }
        this.ox = System.currentTimeMillis();
        String p = p();
        dq(p, String.valueOf(i));
        try {
            String wn = p.dq().wn();
            JSONObject jSONObject = TextUtils.isEmpty(wn) ? new JSONObject() : new JSONObject(wn);
            int optInt = jSONObject.optInt(p, -1);
            jSONObject.put(p, i);
            p.dq().bl(jSONObject.toString());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("time", p);
            jSONObject2.put("newQty", i);
            jSONObject2.put("oldQty", optInt);
            jSONObject2.put("splRegion", com.bytedance.sdk.openadsdk.core.wp.p.dq.iw());
            ig.dq().ox(jSONObject2);
        } catch (Exception e2) {
            e2.printStackTrace();
            Log.e("NetStateStrategy", "updateNetQuality failed: " + e2.getMessage());
        }
    }

    public static dq ox() {
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

    public static String p() {
        return awf.b(Calendar.getInstance().get(11), "q_", q.p(wp.getContext()) ? "w" : "c");
    }

    @Override // com.bytedance.sdk.openadsdk.core.wp.kk
    public JSONObject d(Context context) {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.wp.kk
    public boolean d() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.wp.d
    public String dq() {
        return "network";
    }

    @Override // com.bytedance.sdk.openadsdk.core.wp.d
    public String dq(String str) {
        return com.bytedance.sdk.component.mn.ox.d.d.dq(dq(), wp.getContext()).d(p(), "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.wp.kk
    public void dq(int i, ia iaVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.wp.d
    public void dq(String str, String str2) {
        com.bytedance.sdk.component.mn.ox.d.d.dq(dq(), wp.getContext()).dq(str, str2);
    }

    public void dq(JSONObject jSONObject) {
        JSONObject optJSONObject;
        if (jSONObject == null) {
            return;
        }
        int i = -1;
        if (q.p(wp.getContext())) {
            try {
                JSONObject optJSONObject2 = jSONObject.optJSONObject("wifi");
                if (optJSONObject2 == null) {
                    return;
                }
                JSONArray optJSONArray = optJSONObject2.optJSONArray("steps");
                if (optJSONArray != null && optJSONArray.length() > 0) {
                    JSONObject jSONObject2 = optJSONArray.getJSONObject(0);
                    String string = jSONObject2.getString("target");
                    int i2 = jSONObject2.getInt("count");
                    int i3 = jSONObject2.getInt("timeout") * 1000;
                    WifiInfo d2 = i.d();
                    i = dq(string, 2, i2, i3, "wifi_".concat(String.valueOf(d2 != null ? d2.getBSSID() : "")));
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
                Log.e("NetStateStrategy", "get net state wifi failed: " + e2.getMessage());
            }
        } else if (q.s(wp.getContext()) || q.iw(wp.getContext())) {
            try {
                optJSONObject = jSONObject.optJSONObject("cellular");
            } catch (JSONException e3) {
                e = e3;
            }
            if (optJSONObject == null) {
                return;
            }
            JSONArray optJSONArray2 = optJSONObject.optJSONArray("steps");
            if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                JSONObject jSONObject3 = optJSONArray2.getJSONObject(0);
                try {
                    i = dq(jSONObject3.getString("target"), 2, jSONObject3.getInt("count"), jSONObject3.getInt("timeout") * 1000, q.mn(wp.getContext()) + i.cd());
                } catch (JSONException e4) {
                    e = e4;
                    JSONException jSONException = e;
                    jSONException.printStackTrace();
                    Log.e("NetStateStrategy", "get net state mobile failed: " + jSONException.getMessage());
                    dq(i);
                }
                dq(i);
            }
        }
        dq(i);
    }

    public void s() {
        AtomicBoolean atomicBoolean;
        if (System.currentTimeMillis() - this.ox < 60000 || (atomicBoolean = this.f3727d) == null || atomicBoolean.get()) {
            return;
        }
        this.f3727d.set(true);
        try {
            if (wp.d().jb()) {
                dq(wp.d().ps());
            }
        } catch (Throwable th) {
            th.printStackTrace();
            Log.e("NetStateStrategy", "runEvaluateTask failed" + th.getMessage());
        }
        this.f3727d.set(false);
    }
}
