package com.bytedance.sdk.component.d.dq.dq.d;

import com.bytedance.sdk.component.d.dq.f;
import com.bytedance.sdk.component.d.dq.kk;
import com.bytedance.sdk.component.d.dq.q;
import java.io.IOException;
import java.util.List;

/* loaded from: classes.dex */
public class d implements kk.dq {

    /* renamed from: d, reason: collision with root package name */
    q f1836d;
    List<kk> dq;
    int ox = 0;

    public d(List<kk> list, q qVar) {
        this.dq = list;
        this.f1836d = qVar;
    }

    @Override // com.bytedance.sdk.component.d.dq.kk.dq
    public f dq(q qVar) throws IOException {
        this.f1836d = qVar;
        int i = this.ox + 1;
        this.ox = i;
        return this.dq.get(i).dq(this);
    }

    @Override // com.bytedance.sdk.component.d.dq.kk.dq
    public q dq() {
        return this.f1836d;
    }
}
