package com.google.android.gms.internal.ads;

import android.os.Bundle;
import g.dcy;

/* loaded from: classes3.dex */
public final class zzeqk implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzfbr f7391a;

    public zzeqk(zzfbr zzfbrVar) {
        this.f7391a = zzfbrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 15;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        zzevy zzevyVar = null;
        zzfbr zzfbrVar = this.f7391a;
        if (zzfbrVar != null && zzfbrVar.zza() != null && !zzfbrVar.zza().isEmpty()) {
            zzevyVar = new zzevy() { // from class: com.google.android.gms.internal.ads.zzeqj
                @Override // com.google.android.gms.internal.ads.zzevy
                public final void zzj(Object obj) {
                    ((Bundle) obj).putString("key_schema", zzeqk.this.f7391a.zza());
                }
            };
        }
        return zzgei.zzh(zzevyVar);
    }
}
