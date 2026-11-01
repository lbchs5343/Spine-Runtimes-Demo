package com.bytedance.embedapplog;

import android.content.Context;
import android.telephony.TelephonyManager;
import org.json.JSONObject;

/* loaded from: classes.dex */
class uh extends ji {
    private final Context s;

    public uh(Context context) {
        super(true, false);
        this.s = context;
    }

    @Override // com.bytedance.embedapplog.ji
    public boolean dq(JSONObject jSONObject) {
        c.dq(jSONObject, "sim_region", ((TelephonyManager) this.s.getSystemService("phone")).getSimCountryIso());
        return true;
    }
}
