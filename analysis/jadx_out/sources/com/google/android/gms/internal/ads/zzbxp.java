package com.google.android.gms.internal.ads;

import g.abz;
import g.byk;
import g.dth;

/* loaded from: classes3.dex */
public final class zzbxp extends zzbxi {

    /* renamed from: a, reason: collision with root package name */
    public final byk f5040a;

    /* renamed from: b, reason: collision with root package name */
    public final dth f5041b;

    public zzbxp(byk bykVar, dth dthVar) {
        this.f5040a = bykVar;
        this.f5041b = dthVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final void zze(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final void zzf(abz abzVar) {
        byk bykVar = this.f5040a;
        if (bykVar != null) {
            bykVar.c(abzVar.zzb());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxj
    public final void zzg() {
        byk bykVar = this.f5040a;
        if (bykVar != null) {
            bykVar.d(this.f5041b);
        }
    }
}
