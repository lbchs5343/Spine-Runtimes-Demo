package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class zzfw implements zzgd {
    public zzgi s;
    public final boolean t;
    public final ArrayList u = new ArrayList(1);
    public int v;

    public zzfw(boolean z) {
        this.t = z;
    }

    public final void w() {
        zzgi zzgiVar = this.s;
        int i = zzen.zza;
        for (int i2 = 0; i2 < this.v; i2++) {
            ((zzhd) this.u.get(i2)).zzb(this, zzgiVar, this.t);
        }
        this.s = null;
    }

    public final void x(zzgi zzgiVar) {
        for (int i = 0; i < this.v; i++) {
            ((zzhd) this.u.get(i)).zzc(this, zzgiVar, this.t);
        }
    }

    public final void y(zzgi zzgiVar) {
        this.s = zzgiVar;
        for (int i = 0; i < this.v; i++) {
            ((zzhd) this.u.get(i)).zzd(this, zzgiVar, this.t);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public /* synthetic */ Map zze() {
        return Collections.EMPTY_MAP;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final void zzf(zzhd zzhdVar) {
        zzhdVar.getClass();
        ArrayList arrayList = this.u;
        if (arrayList.contains(zzhdVar)) {
            return;
        }
        arrayList.add(zzhdVar);
        this.v++;
    }

    public final void zzg(int i) {
        zzgi zzgiVar = this.s;
        int i2 = zzen.zza;
        for (int i3 = 0; i3 < this.v; i3++) {
            ((zzhd) this.u.get(i3)).zza(this, zzgiVar, this.t, i);
        }
    }
}
