package com.bytedance.sdk.openadsdk.core.multipro.aidl.d;

import android.os.Bundle;
import com.bytedance.sdk.openadsdk.core.cd;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class p extends cd.dq {
    private final com.bytedance.sdk.openadsdk.kx.dq.d.dq.d dq;

    public p(com.bytedance.sdk.openadsdk.kx.dq.d.dq.d dVar) {
        this.dq = dVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.cd
    public Bundle dq(int i) {
        com.bytedance.sdk.openadsdk.kx.dq.d.dq.d dVar = this.dq;
        final Bundle bundle = new Bundle();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        if (dVar != null) {
            dVar.dq(i, new com.bytedance.sdk.openadsdk.fw.dq.dq.d.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.p.1
                @Override // com.bytedance.sdk.openadsdk.fw.dq.dq.d.dq.dq
                public void dq(Bundle bundle2) {
                    bundle.putAll(bundle2);
                    countDownLatch.countDown();
                }
            });
        }
        try {
            countDownLatch.await(10L, TimeUnit.SECONDS);
            return bundle;
        } catch (InterruptedException e2) {
            e2.printStackTrace();
            return bundle;
        }
    }
}
