package com.bytedance.msdk.core.s.d;

/* loaded from: classes.dex */
public class ig implements Comparable<ig> {

    /* renamed from: d, reason: collision with root package name */
    private long f1016d;
    public com.bytedance.msdk.d.s dq;
    private boolean ox = false;
    private com.bytedance.msdk.api.dq.d p;

    public ig(com.bytedance.msdk.d.s sVar, long j, com.bytedance.msdk.api.dq.d dVar) {
        this.dq = sVar;
        this.f1016d = j;
        this.p = dVar;
    }

    public boolean d() {
        return this.ox;
    }

    @Override // java.lang.Comparable
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public int compareTo(ig igVar) {
        return this.dq.compareTo(igVar.dq);
    }

    public long dq() {
        return this.f1016d;
    }

    public void dq(boolean z) {
        this.ox = z;
    }

    public com.bytedance.msdk.api.dq.d ox() {
        return this.p;
    }
}
