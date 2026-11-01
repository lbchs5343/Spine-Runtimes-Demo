package com.google.android.gms.internal.ads;

import g.adv;

/* loaded from: classes3.dex */
public final class zzafk implements zzacu {

    /* renamed from: a, reason: collision with root package name */
    public final long f4170a;

    /* renamed from: b, reason: collision with root package name */
    public final zzacu f4171b;

    public zzafk(long j, zzacu zzacuVar) {
        this.f4170a = j;
        this.f4171b = zzacuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzD() {
        this.f4171b.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzO(zzadq zzadqVar) {
        this.f4171b.zzO(new adv(this, zzadqVar, zzadqVar));
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final zzadx zzw(int i, int i2) {
        return this.f4171b.zzw(i, i2);
    }
}
