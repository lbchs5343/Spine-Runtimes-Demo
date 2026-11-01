package com.google.android.gms.internal.ads;

import android.content.Context;
import g.dcy;
import g.eyt;

/* loaded from: classes3.dex */
public final class zzenq implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7291a;

    public zzenq(Context context) {
        this.f7291a = context;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return zzgei.zzh(new zzenr(eyt.am(this.f7291a, "com.google.android.gms.permission.AD_ID") == 0));
    }
}
