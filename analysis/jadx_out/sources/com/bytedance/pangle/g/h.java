package com.bytedance.pangle.g;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
final class h implements k {

    /* renamed from: a, reason: collision with root package name */
    private final ByteBuffer f1440a;

    public h(ByteBuffer byteBuffer) {
        this.f1440a = byteBuffer.slice();
    }

    @Override // com.bytedance.pangle.g.k
    public final long a() {
        return this.f1440a.capacity();
    }

    @Override // com.bytedance.pangle.g.k
    public final void a(j jVar, long j, int i) {
        ByteBuffer slice;
        synchronized (this.f1440a) {
            this.f1440a.position(0);
            int i2 = (int) j;
            this.f1440a.limit(i + i2);
            this.f1440a.position(i2);
            slice = this.f1440a.slice();
        }
        jVar.a(slice);
    }
}
