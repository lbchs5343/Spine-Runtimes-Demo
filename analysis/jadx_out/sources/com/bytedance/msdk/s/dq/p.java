package com.bytedance.msdk.s.dq;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.msdk.core.kk.kk;
import com.bytedance.msdk.ia.bl;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class p implements ox<kk> {
    private Context dq;

    public p(Context context) {
        if (context != null) {
            this.dq = context.getApplicationContext();
        }
    }

    private kk dq(String str, boolean z) {
        String str2;
        String str3;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String[] split = jSONObject.getString("unity_id").split("_");
            String str4 = split.length > 0 ? split[0] : "";
            String str5 = split.length > 1 ? split[1] : "";
            if (z) {
                str2 = "";
                str3 = str2;
            } else {
                String string = jSONObject.getString("waterfall_show_rules_version");
                str3 = jSONObject.getString("adn_rit_show_rules_version");
                str2 = string;
            }
            return new kk(str4, str5, str2, str3, jSONObject.getInt("timing_mode"), jSONObject.getString("show_pacing"), jSONObject.getString("show_pacing_rule_id"), jSONObject.getString("show_time"));
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.bytedance.msdk.s.dq.s
    public synchronized void delete(String str) {
        if (str.contains("_")) {
            throw new RuntimeException(" has slotId");
        }
        if (this.dq != null && !TextUtils.isEmpty(str)) {
            bl.dq("pacing_".concat(str), this.dq).iw(str);
        }
    }

    @Override // com.bytedance.msdk.s.dq.s
    public synchronized void delete(String str, String str2) {
        if (str.contains("_")) {
            throw new RuntimeException(" has slotId");
        }
        if (this.dq != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            bl.dq("pacing_".concat(str), this.dq).iw(str + "_" + str2);
        }
    }

    @Override // com.bytedance.msdk.s.dq.s
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public synchronized void d(kk kkVar) {
        try {
            if (this.dq != null && kkVar != null) {
                bl dq = bl.dq("pacing_" + kkVar.d(), this.dq);
                String p = kkVar.p();
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("unity_id", kkVar.p());
                    if (!kkVar.dq()) {
                        jSONObject.put("waterfall_show_rules_version", kkVar.s());
                        jSONObject.put("adn_rit_show_rules_version", kkVar.iw());
                    }
                    jSONObject.put("timing_mode", kkVar.mn());
                    StringBuilder sb = new StringBuilder();
                    sb.append(kkVar.kk());
                    jSONObject.put("show_pacing", sb.toString());
                    jSONObject.put("show_pacing_rule_id", kkVar.o());
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(kkVar.no());
                    jSONObject.put("show_time", sb2.toString());
                    dq.dq(p, jSONObject.toString());
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bytedance.msdk.s.dq.ox
    public synchronized void dq(String str, long j) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        kk query = query(str);
        if (query != null) {
            query.dq(j);
            d(query);
        }
    }

    @Override // com.bytedance.msdk.s.dq.ox
    public synchronized void dq(String str, String str2, long j) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            kk query = query(str, str2);
            if (query != null) {
                query.dq(j);
                d(query);
            }
        }
    }

    @Override // com.bytedance.msdk.s.dq.s
    public synchronized kk query(String str) {
        if (str.contains("_")) {
            throw new RuntimeException(" has slotId");
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return dq(bl.dq("pacing_".concat(str), this.dq).d(str, ""), false);
    }

    @Override // com.bytedance.msdk.s.dq.s
    public synchronized kk query(String str, String str2) {
        if (str.contains("_")) {
            throw new RuntimeException(" has slotId");
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return dq(bl.dq("pacing_".concat(str), this.dq).d(str + "_" + str2, ""), true);
    }
}
