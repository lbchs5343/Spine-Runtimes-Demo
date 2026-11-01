package com.google.android.gms.internal.ads;

import android.os.Bundle;
import g.dcy;

/* loaded from: classes3.dex */
public final class zzevs implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f7618a;

    public zzevs(zzfco zzfcoVar) {
        this.f7618a = zzfcoVar != null;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 36;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return zzgei.zzh(this.f7618a ? new zzevy() { // from class: com.google.android.gms.internal.ads.zzevr
            @Override // com.google.android.gms.internal.ads.zzevy
            public final void zzj(Object obj) {
                ((Bundle) obj).putBoolean("sdk_prefetch", true);
            }
        } : null);
    }
}
