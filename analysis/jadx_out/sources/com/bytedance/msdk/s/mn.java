package com.bytedance.msdk.s;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.msdk.ia.bl;
import com.bytedance.msdk.ia.e;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class mn extends dq {
    private static final SimpleDateFormat p = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);

    public mn(String str, JSONObject jSONObject) {
        super(str, jSONObject);
    }

    private static JSONObject d(Context context, p pVar, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt("event", pVar.dq);
            jSONObject2.putOpt("params", jSONObject);
            jSONObject2.putOpt("nt", Integer.valueOf(e.s()));
            jSONObject2.putOpt("datetime", p.format(new Date()));
            return jSONObject2;
        } catch (Exception e2) {
            try {
                JSONObject optJSONObject = jSONObject2.optJSONObject("params");
                if (optJSONObject != null) {
                    String optString = optJSONObject.optString("event_extra");
                    if (!TextUtils.isEmpty(optString)) {
                        JSONObject jSONObject3 = new JSONObject(optString);
                        jSONObject3.putOpt("v3_err_msg", e2.toString());
                        optJSONObject.putOpt("event_extra", jSONObject3.toString());
                    }
                }
                if (pVar != null) {
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.putOpt("v3_eventId", pVar.le.get("event_id"));
                    jSONObject4.putOpt("v3_err_msg", e2.toString());
                    bl.dq(jSONObject4);
                }
            } catch (Throwable unused) {
            }
            return jSONObject2;
        }
    }

    public static mn dq(Context context, p pVar, JSONObject jSONObject) {
        return new mn(UUID.randomUUID().toString(), d(context, pVar, jSONObject));
    }

    @Override // com.bytedance.msdk.s.dq
    public String toString() {
        return "AdEventV3{localId='" + this.dq + "', event=" + this.f1246d + '}';
    }
}
