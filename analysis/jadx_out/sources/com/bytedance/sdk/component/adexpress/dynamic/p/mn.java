package com.bytedance.sdk.component.adexpress.dynamic.p;

import com.bytedance.sdk.component.adexpress.d.mp;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class mn implements ia {
    private com.bytedance.sdk.component.adexpress.dynamic.s.d dq;

    /* JADX INFO: Access modifiers changed from: private */
    public void d(mp mpVar) {
        try {
            JSONObject ox = mpVar.ox();
            JSONObject jSONObject = new JSONObject(ox.optString("template_Plugin"));
            JSONObject optJSONObject = ox.optJSONObject("creative");
            com.bytedance.sdk.component.adexpress.dynamic.ox.ia dq = new iw(jSONObject, optJSONObject, ox.optJSONObject("AdSize"), new JSONObject(ox.optString("diff_template_Plugin"))).dq(mpVar.d(), mpVar.no(), optJSONObject.optDouble("score_exact_i18n"), optJSONObject.optString("comment_num_i18n"), mpVar);
            try {
                JSONObject jSONObject2 = new JSONObject(optJSONObject.optString("dynamic_creative"));
                dq.dq(jSONObject2.optString("color"));
                dq.dq(jSONObject2.optJSONArray("material_center"));
            } catch (Throwable unused) {
            }
            this.dq.dq(dq);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.p.ia
    public void dq(final mp mpVar) {
        if (mpVar.mp() == 1) {
            d(mpVar);
        } else {
            com.bytedance.sdk.component.adexpress.p.p.dq(new com.bytedance.sdk.component.o.kk("dynamicparse") { // from class: com.bytedance.sdk.component.adexpress.dynamic.p.mn.1
                @Override // java.lang.Runnable
                public void run() {
                    mn.this.d(mpVar);
                }
            }, 5);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.p.ia
    public void dq(com.bytedance.sdk.component.adexpress.dynamic.s.d dVar) {
        this.dq = dVar;
    }
}
