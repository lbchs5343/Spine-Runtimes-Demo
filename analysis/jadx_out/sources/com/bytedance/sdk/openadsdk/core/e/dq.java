package com.bytedance.sdk.openadsdk.core.e;

import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.ia;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.core.live.p.d;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.h.mn;
import com.bytedance.sdk.openadsdk.h.no;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq {
    private final int dq;

    public dq(int i) {
        this.dq = i;
    }

    public dq(int i, boolean z) {
        this.dq = i;
        ia.dq().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.e.dq.1
            @Override // java.lang.Runnable
            public void run() {
                dq.this.iw();
            }
        }, PushUIConfig.dismissTime);
    }

    private void dq(JSONObject jSONObject, String str, int i, boolean z) {
        JSONObject optJSONObject = jSONObject.optJSONObject(str);
        if (optJSONObject == null) {
            return;
        }
        int optInt = optJSONObject.optInt("state", 2);
        if (optInt != 5) {
            if (optInt == -1 && dq(i) == 5 && no.ox(str) > no.p(str)) {
                no.dq(str);
                return;
            }
            return;
        }
        int d2 = no.d(str);
        int ox = no.ox(str);
        int p = no.p(str);
        if (z || ox > p) {
            String optString = optJSONObject.optString("api_rule", "=");
            String optString2 = optJSONObject.optString("plugin_rule", "=");
            int optInt2 = optJSONObject.optInt("api_v", 0);
            int optInt3 = optJSONObject.optInt("plugin_v", 0);
            if (dq(d2, optInt2, optString) && dq(ox, optInt3, optString2)) {
                no.dq(str);
            }
        }
    }

    private boolean dq(int i, int i2, String str) {
        str.getClass();
        switch (str) {
            case "<":
                return i < i2;
            case "=":
            case "==":
                return i == i2;
            case ">":
                return i > i2;
            case "<=":
                return i <= i2;
            case ">=":
                return i >= i2;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void iw() {
        mn.dq(new kk("csj-plugin-check") { // from class: com.bytedance.sdk.openadsdk.core.e.dq.2
            @Override // java.lang.Runnable
            public void run() {
                if (dq.this.d() == 5) {
                    d.dq();
                }
            }
        });
    }

    public int d() {
        return dq(4);
    }

    public int dq() {
        return dq(0);
    }

    public int dq(int i) {
        int i2 = this.dq >> i;
        int i3 = i2 & 7;
        return i3 == 0 ? p() : ((i2 & 8) >> 3) == 1 ? -i3 : i3;
    }

    public int dq(String str) {
        if (!"com.byted.live.lite".equals(str)) {
            return "com.byted.csj.ext".equals(str) ? ox() : "com.byted.pangle".equals(str) ? dq() : p();
        }
        if (wp.d().el()) {
            return d();
        }
        return 4;
    }

    public int ox() {
        return dq(8);
    }

    public int p() {
        return 2;
    }

    public void s() {
        JSONObject hg = wp.d().hg();
        if (hg == null) {
            return;
        }
        try {
            dq(hg, "com.byted.live.lite", 4, true);
            dq(hg, "com.byted.csj.ext", 8, true);
            dq(hg, TTAdSdk.PLUGIN_ADAPTER_PACKAGE_NAME, 0, true);
            dq(hg, "com.byted.pangle", 0, false);
        } catch (Throwable th) {
            ig.d("onReceiveServerStatus", th);
        }
    }

    public String toString() {
        return String.valueOf(this.dq);
    }
}
