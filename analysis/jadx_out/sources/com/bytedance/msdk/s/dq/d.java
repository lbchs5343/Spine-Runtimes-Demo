package com.bytedance.msdk.s.dq;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.msdk.ia.bl;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d implements dq<com.bytedance.msdk.core.kk.mn> {
    private Context dq;

    public d(Context context) {
        if (context != null) {
            this.dq = context.getApplicationContext();
        }
    }

    private com.bytedance.msdk.core.kk.mn dq(String str, boolean z) {
        String string;
        String str2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String[] split = jSONObject.getString("unity_id").split("_");
            String str3 = split.length > 0 ? split[0] : "";
            String str4 = split.length > 1 ? split[1] : "";
            if (z) {
                str2 = jSONObject.getString("adn_rit_show_rules_version");
                string = "";
            } else {
                string = jSONObject.getString("waterfall_show_rules_version");
                str2 = "";
            }
            return new com.bytedance.msdk.core.kk.mn(str3, str4, string, str2, jSONObject.getInt("timing_mode"), jSONObject.getString("show_freqctl_rules"));
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private JSONObject dq(com.bytedance.msdk.core.kk.mn mnVar, boolean z) {
        if (mnVar == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("unity_id", mnVar.p());
            if (mnVar.dq()) {
                jSONObject.put("adn_rit_show_rules_version", mnVar.iw());
            } else {
                jSONObject.put("waterfall_show_rules_version", mnVar.s());
            }
            jSONObject.put("timing_mode", mnVar.mn());
            jSONObject.put("show_freqctl_rules", z ? mnVar.kk() : mnVar.o());
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private void ox(com.bytedance.msdk.core.kk.mn mnVar) {
        if (this.dq == null || mnVar == null) {
            return;
        }
        bl dq = bl.dq("freqctl_" + mnVar.d(), this.dq);
        JSONObject dq2 = dq(mnVar, false);
        if (dq2 != null) {
            dq.dq(mnVar.p(), dq2.toString());
        }
    }

    @Override // com.bytedance.msdk.s.dq.dq
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public synchronized void dq(com.bytedance.msdk.core.kk.mn mnVar) {
        if (mnVar != null) {
            ox(mnVar);
        }
    }

    @Override // com.bytedance.msdk.s.dq.s
    public synchronized void delete(String str) {
        if (this.dq != null && !TextUtils.isEmpty(str)) {
            bl.dq("freqctl_".concat(String.valueOf(str)), this.dq).iw(str);
        }
    }

    @Override // com.bytedance.msdk.s.dq.s
    public synchronized void delete(String str, String str2) {
        if (this.dq != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            bl.dq("freqctl_".concat(String.valueOf(str)), this.dq).iw(str + "_" + str2);
        }
    }

    @Override // com.bytedance.msdk.s.dq.s
    /* renamed from: dq, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public synchronized void d(com.bytedance.msdk.core.kk.mn mnVar) {
        if (this.dq != null && mnVar != null) {
            bl dq = bl.dq("freqctl_" + mnVar.d(), this.dq);
            String p = mnVar.p();
            JSONObject dq2 = dq(mnVar, true);
            if (dq2 != null) {
                dq.dq(p, dq2.toString());
            }
        }
    }

    @Override // com.bytedance.msdk.s.dq.s
    public synchronized com.bytedance.msdk.core.kk.mn query(String str) {
        if (this.dq == null) {
            return null;
        }
        return dq(bl.dq("freqctl_".concat(String.valueOf(str)), this.dq).d(str, ""), false);
    }

    @Override // com.bytedance.msdk.s.dq.s
    public synchronized com.bytedance.msdk.core.kk.mn query(String str, String str2) {
        if (this.dq == null) {
            return null;
        }
        return dq(bl.dq("freqctl_".concat(String.valueOf(str)), this.dq).d(str + "_" + str2, ""), true);
    }
}
