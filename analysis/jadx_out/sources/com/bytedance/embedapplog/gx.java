package com.bytedance.embedapplog;

import android.content.SharedPreferences;
import org.json.JSONObject;

/* loaded from: classes.dex */
class gx extends ji {
    private final u s;

    public gx(u uVar) {
        super(true, false, false);
        this.s = uVar;
    }

    @Override // com.bytedance.embedapplog.ji
    public boolean dq(JSONObject jSONObject) {
        SharedPreferences p = this.s.p();
        String string = p.getString("install_id", null);
        String string2 = p.getString("device_id", null);
        String string3 = p.getString("ssid", null);
        c.dq(jSONObject, "install_id", string);
        c.dq(jSONObject, "device_id", string2);
        c.dq(jSONObject, "ssid", string3);
        long j = 0;
        long j2 = p.getLong("register_time", 0L);
        if ((c.d(string) && c.d(string2)) || j2 == 0) {
            j = j2;
        } else {
            p.edit().putLong("register_time", 0L).apply();
        }
        jSONObject.put("register_time", j);
        return true;
    }
}
