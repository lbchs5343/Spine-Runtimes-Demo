package com.bytedance.sdk.openadsdk.core.le;

import android.annotation.SuppressLint;
import android.content.Context;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bytedance.sdk.component.kk.dq;
import com.bytedance.sdk.openadsdk.core.le.dq;
import com.bytedance.sdk.openadsdk.core.r.n;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class s {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile s dq;

    /* renamed from: d, reason: collision with root package name */
    private Context f3153d;
    private com.bytedance.sdk.openadsdk.mp.dq.dq ox;
    private final com.bytedance.sdk.component.kk.dq p;

    private s(Context context) {
        this.f3153d = context == null ? wp.getContext() : context.getApplicationContext();
        dq.C0121dq c0121dq = new dq.C0121dq();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        com.bytedance.sdk.component.kk.dq dq2 = c0121dq.dq(ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT, timeUnit).d(ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT, timeUnit).ox(ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT, timeUnit).dq(new dq.C0170dq()).dq(n.dq()).dq(n.d()).dq(true).dq();
        this.p = dq2;
        com.bytedance.sdk.component.d.dq.p dq3 = dq2.iw().dq();
        if (dq3 != null) {
            dq3.dq(32);
            dq3.d(com.bytedance.sdk.openadsdk.core.ox.ox.dq().s());
        }
    }

    public static s dq() {
        if (dq == null) {
            synchronized (s.class) {
                try {
                    if (dq == null) {
                        com.bytedance.sdk.component.d.dq.dq.dq.dq().dq(com.bytedance.sdk.openadsdk.core.ox.ox.dq().iw() != 2);
                        dq = new s(wp.getContext());
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    private void p() {
        if (this.ox == null) {
            this.ox = new com.bytedance.sdk.openadsdk.mp.dq.dq();
        }
    }

    public com.bytedance.sdk.component.kk.dq d() {
        return this.p;
    }

    public com.bytedance.sdk.openadsdk.mp.dq.dq ox() {
        p();
        return this.ox;
    }
}
