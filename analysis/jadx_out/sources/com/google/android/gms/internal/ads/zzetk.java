package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import g.agd;
import g.dcy;
import g.edt;
import g.ti;

/* loaded from: classes3.dex */
public final class zzetk implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7530a;

    /* renamed from: b, reason: collision with root package name */
    public final Intent f7531b;

    public zzetk(Context context, Intent intent) {
        this.f7530a = context;
        this.f7531b = intent;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 60;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        agd.e("HsdpMigrationSignal.produce");
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzmx)).booleanValue()) {
            return zzgei.zzh(new zzetl(null));
        }
        boolean z = false;
        try {
            if (this.f7531b.resolveActivity(this.f7530a.getPackageManager()) != null) {
                z = true;
            }
        } catch (Exception e2) {
            ti.f20033a.f20034ab.zzw(e2, "HsdpMigrationSignal.isHsdpMigrationSupported");
        }
        return zzgei.zzh(new zzetl(Boolean.valueOf(z)));
    }
}
