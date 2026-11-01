package com.bytedance.sdk.openadsdk.core.gh;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.ir.c;
import java.util.UUID;
import org.json.JSONObject;

/* loaded from: classes3.dex */
class no implements com.bytedance.sdk.openadsdk.core.gh.ox.dq {
    public static final no dq = new no();

    private no() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.openadsdk.no.dq.dq dqVar, boolean z) {
        try {
            JSONObject dq2 = dqVar.dq().dq();
            if (dq2 != null) {
                String optString = dq2.optString("event_extra");
                JSONObject jSONObject = TextUtils.isEmpty(optString) ? new JSONObject() : new JSONObject(optString);
                int incrementAndGet = d.f2868d.incrementAndGet();
                jSONObject.put("stats_index", incrementAndGet);
                jSONObject.put("sdk_session_id", d.dq);
                jSONObject.put("csj_type", com.bytedance.sdk.openadsdk.core.no.ia().n() ? 1 : 0);
                if (!TextUtils.isEmpty(c.kk)) {
                    jSONObject.put("wrong_stats_url", c.kk);
                }
                if (!TextUtils.isEmpty(c.o)) {
                    jSONObject.put("wrong_applog_url", c.o);
                }
                dq2.put("event_extra", jSONObject.toString());
                com.bytedance.sdk.component.ia.d.p.dq.dq dqVar2 = new com.bytedance.sdk.component.ia.d.p.dq.dq(UUID.randomUUID().toString(), dq2);
                dqVar2.ox((byte) 0);
                dqVar2.d((byte) 3);
                dqVar2.dq((byte) 1);
                d.dq(dqVar2, dq2.optString("type"), incrementAndGet);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.gh.ox.dq
    public void dq(final com.bytedance.sdk.openadsdk.no.dq.dq dqVar, final String str, final boolean z) {
        com.bytedance.sdk.openadsdk.h.mn.d(new com.bytedance.sdk.component.o.kk("uploadLogEvent") { // from class: com.bytedance.sdk.openadsdk.core.gh.no.1
            @Override // java.lang.Runnable
            public void run() {
                if (mp.dq(str, 1.0d) || !z) {
                    no.this.dq(dqVar, z);
                }
            }
        });
    }
}
