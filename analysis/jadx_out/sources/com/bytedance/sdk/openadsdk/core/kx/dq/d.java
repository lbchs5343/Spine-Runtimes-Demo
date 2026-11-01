package com.bytedance.sdk.openadsdk.core.kx.dq;

import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.i;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.h.mn;
import g.ekq;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d extends dq {
    /* JADX INFO: Access modifiers changed from: private */
    public i dq() {
        i iVar = new i(wp.getContext(), 1, no.ia().s());
        boolean dq = iVar.dq();
        ig.d("csj_sen", "reg res:".concat(String.valueOf(dq)));
        if (dq) {
            return iVar;
        }
        dq(0, System.currentTimeMillis(), 0L);
        iVar.d();
        return null;
    }

    private void dq(final JSONObject jSONObject, long j, long j2) {
        if (System.currentTimeMillis() - j > j2) {
            mn.dq(new kk("reg_sensor") { // from class: com.bytedance.sdk.openadsdk.core.kx.dq.d.1
                @Override // java.lang.Runnable
                public void run() {
                    i dq = d.this.dq();
                    if (dq == null) {
                        return;
                    }
                    final CountDownLatch countDownLatch = new CountDownLatch(1);
                    final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                    dq.dq(new i.ox() { // from class: com.bytedance.sdk.openadsdk.core.kx.dq.d.1.1
                        @Override // com.bytedance.sdk.component.utils.i.ox
                        public void dq() {
                            d.this.dq(1, System.currentTimeMillis(), 0L);
                            atomicBoolean.set(true);
                            countDownLatch.countDown();
                        }
                    });
                    try {
                        countDownLatch.await(d.this.dq(jSONObject), TimeUnit.MILLISECONDS);
                    } catch (InterruptedException e2) {
                        ig.p("xgc_sen", "wait time itException" + e2.getMessage());
                    }
                    dq.d();
                    if (atomicBoolean.get()) {
                        return;
                    }
                    d.this.dq(3, 0L, System.currentTimeMillis());
                }
            });
        } else {
            ig.d("xgc_sen", ekq.PERMISSION_RESULT_CANCEL);
        }
    }

    public void dq(JSONObject jSONObject, int i) {
        int dq = dq(i);
        if (d(i)) {
            dq(jSONObject, com.bytedance.sdk.openadsdk.core.kx.dq.dq().d(), dq);
        } else if (ox(i)) {
            dq(jSONObject, com.bytedance.sdk.openadsdk.core.kx.dq.dq().ox(), dq);
        }
    }
}
