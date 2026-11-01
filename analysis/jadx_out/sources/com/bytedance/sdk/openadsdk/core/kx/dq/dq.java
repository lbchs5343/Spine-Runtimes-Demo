package com.bytedance.sdk.openadsdk.core.kx.dq;

import com.bytedance.sdk.openadsdk.core.wp;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class dq {
    public boolean d(int i) {
        return i == 0 || i == 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002b A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int dq(int i) {
        int i2;
        JSONObject ws = wp.d().ws();
        if (ws != null) {
            if (d(i)) {
                i2 = ws.optInt("explicit_interval", 0);
            } else if (d(i)) {
                i2 = ws.optInt("ambiguous_interval", 0);
            }
            if (i2 <= 86400000) {
                return 86400000;
            }
            return i2;
        }
        i2 = -1;
        if (i2 <= 86400000) {
        }
    }

    public int dq(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optInt("delay", 200);
        }
        return 200;
    }

    public void dq(int i, long j, long j2) {
        com.bytedance.sdk.openadsdk.core.kx.dq dq = com.bytedance.sdk.openadsdk.core.kx.dq.dq();
        dq.dq(i);
        dq.dq(j, j2);
    }

    public boolean ox(int i) {
        return i == 2 || i == 3;
    }
}
