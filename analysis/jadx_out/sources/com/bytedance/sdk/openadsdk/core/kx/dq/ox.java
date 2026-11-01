package com.bytedance.sdk.openadsdk.core.kx.dq;

import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.i;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.h.mn;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox extends dq {
    /* JADX INFO: Access modifiers changed from: private */
    public i dq() {
        i iVar = new i(wp.getContext(), 1, no.ia().s());
        boolean dq = iVar.dq();
        dq(dq ? 1 : 0, System.currentTimeMillis(), 0L);
        iVar.d();
        return null;
    }

    public void dq(JSONObject jSONObject, int i) {
        if (System.currentTimeMillis() - com.bytedance.sdk.openadsdk.core.kx.dq.dq().d() > dq(i)) {
            mn.dq(new kk("reg_sensor") { // from class: com.bytedance.sdk.openadsdk.core.kx.dq.ox.1
                @Override // java.lang.Runnable
                public void run() {
                    ox.this.dq();
                }
            });
        }
    }
}
