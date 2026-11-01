package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import g.dbu;

/* loaded from: classes3.dex */
public final class zzakj implements zzacu {

    /* renamed from: a, reason: collision with root package name */
    public final SparseArray f4221a = new SparseArray();

    /* renamed from: b, reason: collision with root package name */
    public final zzacu f4222b;

    /* renamed from: c, reason: collision with root package name */
    public final zzakg f4223c;

    public zzakj(zzacu zzacuVar, zzakg zzakgVar) {
        this.f4222b = zzacuVar;
        this.f4223c = zzakgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzD() {
        this.f4222b.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzO(zzadq zzadqVar) {
        this.f4222b.zzO(zzadqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final zzadx zzw(int i, int i2) {
        zzacu zzacuVar = this.f4222b;
        if (i2 != 3) {
            return zzacuVar.zzw(i, i2);
        }
        SparseArray sparseArray = this.f4221a;
        dbu dbuVar = (dbu) sparseArray.get(i);
        if (dbuVar != null) {
            return dbuVar;
        }
        dbu dbuVar2 = new dbu(zzacuVar.zzw(i, 3), this.f4223c);
        sparseArray.put(i, dbuVar2);
        return dbuVar2;
    }
}
