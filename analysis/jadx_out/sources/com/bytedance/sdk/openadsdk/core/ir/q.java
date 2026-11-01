package com.bytedance.sdk.openadsdk.core.ir;

import android.content.Intent;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class q {
    private static volatile q dq;

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.component.mn.dq f3076d;

    /* JADX INFO: Access modifiers changed from: private */
    public com.bytedance.sdk.component.mn.dq d() {
        if (this.f3076d == null) {
            this.f3076d = n.dq("hide_recent_activity_recorder");
        }
        return this.f3076d;
    }

    public static q dq() {
        if (dq == null) {
            synchronized (q.class) {
                try {
                    if (dq == null) {
                        dq = new q();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final int i) {
        try {
            com.bytedance.sdk.openadsdk.core.gh.ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ir.q.2
                @Override // com.bytedance.sdk.openadsdk.no.dq.dq
                public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("ac", i);
                    return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("hide_activity_record").d(jSONObject.toString());
                }
            }, "hide_activity_record");
        } catch (Throwable unused) {
        }
    }

    public void dq(Intent intent) {
        final boolean z = (intent.getFlags() & 8388608) == 8388608;
        com.bytedance.sdk.component.utils.ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ir.q.1
            @Override // java.lang.Runnable
            public void run() {
                int i = 0;
                int d2 = q.this.d().d("all_activity_count", 0) + 1;
                if (z) {
                    int d3 = q.this.d().d("hide_activity_count", 0) + 1;
                    if (d3 >= 10) {
                        q.this.dq(d2);
                        d2 = 0;
                    } else {
                        i = d3;
                    }
                    q.this.d().dq("hide_activity_count", i);
                }
                q.this.d().dq("all_activity_count", d2);
            }
        });
    }
}
