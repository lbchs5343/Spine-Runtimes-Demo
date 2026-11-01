package com.bytedance.sdk.openadsdk.core.component.reward.s;

import com.bytedance.sdk.openadsdk.core.ir.dq;
import com.bytedance.sdk.openadsdk.core.no;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class p implements dq.d {

    /* renamed from: d, reason: collision with root package name */
    private long f2651d;
    long dq;
    private long ox;

    public p() {
        no.ia().dq(this);
    }

    @Override // com.bytedance.sdk.openadsdk.core.ir.dq.d
    public void d() {
        ox();
    }

    public long dq(TimeUnit timeUnit) {
        return timeUnit != null ? timeUnit.convert(this.dq, TimeUnit.MILLISECONDS) : this.dq;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ir.dq.d
    public void dq() {
        p();
    }

    public void ox() {
        long currentTimeMillis = System.currentTimeMillis();
        long j = this.f2651d;
        if (j != 0) {
            this.dq = (currentTimeMillis - j) + this.dq;
        }
        this.f2651d = currentTimeMillis;
    }

    public void p() {
        if (this.f2651d == 0) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        this.dq = (currentTimeMillis - this.f2651d) + this.dq;
        this.f2651d = 0L;
        this.ox = 0L;
    }

    public void s() {
        this.f2651d = 0L;
        this.ox = 0L;
        this.dq = 0L;
    }
}
