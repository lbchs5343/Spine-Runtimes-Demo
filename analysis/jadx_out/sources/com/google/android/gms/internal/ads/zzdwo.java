package com.google.android.gms.internal.ads;

import android.content.Context;
import g.ti;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzdwo implements Runnable {
    public final /* synthetic */ zzdwp zza;
    public final /* synthetic */ Context zzb;

    public /* synthetic */ zzdwo(zzdwp zzdwpVar, Context context) {
        this.zza = zzdwpVar;
        this.zzb = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdwp zzdwpVar = this.zza;
        ti.f20033a.s.zzb(this.zzb, zzdwpVar.f6616b);
    }
}
