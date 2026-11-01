package com.bytedance.embedapplog;

import android.content.Context;
import android.telephony.TelephonyManager;
import org.json.JSONObject;

/* loaded from: classes.dex */
class xz extends ji {
    private final u iw;
    private final Context s;

    public xz(Context context, u uVar) {
        super(true, false);
        this.s = context;
        this.iw = uVar;
    }

    @Override // com.bytedance.embedapplog.ji
    public boolean dq(JSONObject jSONObject) {
        TelephonyManager telephonyManager = (TelephonyManager) this.s.getSystemService("phone");
        if (telephonyManager != null) {
            try {
                c.dq(jSONObject, "carrier", telephonyManager.getNetworkOperatorName());
                c.dq(jSONObject, "mcc_mnc", telephonyManager.getNetworkOperator());
                c.dq(jSONObject, "udid", this.iw.vf() ? xv.dq(telephonyManager) : this.iw.j());
                return true;
            } catch (Exception e2) {
                jo.d(e2);
            }
        }
        return false;
    }
}
