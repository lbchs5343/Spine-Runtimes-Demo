package com.bytedance.embedapplog;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class vf extends ji {
    private final u iw;
    private final Context s;

    public vf(Context context, u uVar) {
        super(true, false);
        this.s = context;
        this.iw = uVar;
    }

    @Override // com.bytedance.embedapplog.ji
    public boolean dq(JSONObject jSONObject) {
        SharedPreferences p = this.iw.p();
        if (!dq.f712d) {
            return true;
        }
        Map<String, String> dq = bx.dq(this.s, p);
        if (dq == null) {
            return false;
        }
        jSONObject.put("oaid", new JSONObject(dq));
        return true;
    }
}
