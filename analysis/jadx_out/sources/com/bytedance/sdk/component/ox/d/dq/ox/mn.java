package com.bytedance.sdk.component.ox.d.dq.ox;

import com.bytedance.sdk.component.ox.d.bl;
import com.bytedance.sdk.component.ox.d.f;
import com.bytedance.sdk.component.ox.d.kx;
import com.bytedance.sdk.component.ox.d.r;
import java.io.IOException;
import java.util.List;

/* loaded from: classes.dex */
public final class mn implements r.dq {

    /* renamed from: d, reason: collision with root package name */
    private final com.bytedance.sdk.component.ox.d.dq.d.mn f2076d;
    private final List<r> dq;
    private final f ia;
    private int ig;
    private final kx iw;
    private final int kk;
    private final com.bytedance.sdk.component.ox.d.s mn;
    private final int no;
    private final int o;
    private final ox ox;
    private final com.bytedance.sdk.component.ox.d.dq.d.ox p;
    private final int s;

    public mn(List<r> list, com.bytedance.sdk.component.ox.d.dq.d.mn mnVar, ox oxVar, com.bytedance.sdk.component.ox.d.dq.d.ox oxVar2, int i, kx kxVar, com.bytedance.sdk.component.ox.d.s sVar, f fVar, int i2, int i3, int i4) {
        this.dq = list;
        this.p = oxVar2;
        this.f2076d = mnVar;
        this.ox = oxVar;
        this.s = i;
        this.iw = kxVar;
        this.mn = sVar;
        this.ia = fVar;
        this.kk = i2;
        this.o = i3;
        this.no = i4;
    }

    @Override // com.bytedance.sdk.component.ox.d.r.dq
    public com.bytedance.sdk.component.ox.d.s call() {
        return this.mn;
    }

    @Override // com.bytedance.sdk.component.ox.d.r.dq
    public int d() {
        return this.kk;
    }

    @Override // com.bytedance.sdk.component.ox.d.r.dq
    public bl dq(kx kxVar) throws IOException {
        return dq(kxVar, this.f2076d, this.ox, this.p);
    }

    public bl dq(kx kxVar, com.bytedance.sdk.component.ox.d.dq.d.mn mnVar, ox oxVar, com.bytedance.sdk.component.ox.d.dq.d.ox oxVar2) throws IOException {
        if (this.s >= this.dq.size()) {
            throw new AssertionError();
        }
        this.ig++;
        if (this.ox != null && !this.p.dq(kxVar.dq())) {
            throw new IllegalStateException("network interceptor " + this.dq.get(this.s - 1) + " must retain the same host and port");
        }
        if (this.ox != null && this.ig > 1) {
            throw new IllegalStateException("network interceptor " + this.dq.get(this.s - 1) + " must call proceed() exactly once");
        }
        mn mnVar2 = new mn(this.dq, mnVar, oxVar, oxVar2, this.s + 1, kxVar, this.mn, this.ia, this.kk, this.o, this.no);
        r rVar = this.dq.get(this.s);
        bl dq = rVar.dq(mnVar2);
        if (oxVar != null && this.s + 1 < this.dq.size() && mnVar2.ig != 1) {
            throw new IllegalStateException("network interceptor " + rVar + " must call proceed() exactly once");
        }
        if (dq == null) {
            throw new NullPointerException("interceptor " + rVar + " returned a null response");
        }
        if (dq.ia() != null) {
            return dq;
        }
        throw new IllegalStateException("interceptor " + rVar + " returned a response with no body");
    }

    @Override // com.bytedance.sdk.component.ox.d.r.dq
    public kx dq() {
        return this.iw;
    }

    public f ia() {
        return this.ia;
    }

    public com.bytedance.sdk.component.ox.d.dq.d.mn iw() {
        return this.f2076d;
    }

    public ox mn() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.component.ox.d.r.dq
    public int ox() {
        return this.o;
    }

    @Override // com.bytedance.sdk.component.ox.d.r.dq
    public int p() {
        return this.no;
    }

    public com.bytedance.sdk.component.ox.d.kk s() {
        return this.p;
    }
}
