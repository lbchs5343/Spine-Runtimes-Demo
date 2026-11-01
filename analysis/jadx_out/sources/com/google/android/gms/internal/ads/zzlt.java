package com.google.android.gms.internal.ads;

import android.content.Context;

@Deprecated
/* loaded from: classes3.dex */
public final class zzlt {

    /* renamed from: a, reason: collision with root package name */
    public final zzip f8791a;

    @Deprecated
    public zzlt(Context context, zzcep zzcepVar) {
        this.f8791a = new zzip(context, zzcepVar);
    }

    @Deprecated
    public final zzlt zza(final zzkl zzklVar) {
        zzip zzipVar = this.f8791a;
        zzdb.zzf(!zzipVar.t);
        zzklVar.getClass();
        zzipVar.i = new zzfxg() { // from class: com.google.android.gms.internal.ads.zzih
            @Override // com.google.android.gms.internal.ads.zzfxg
            public final Object zza() {
                return zzkl.this;
            }
        };
        return this;
    }

    @Deprecated
    public final zzlt zzb(final zzyj zzyjVar) {
        zzip zzipVar = this.f8791a;
        zzdb.zzf(!zzipVar.t);
        zzyjVar.getClass();
        zzipVar.f8773g = new zzfxg() { // from class: com.google.android.gms.internal.ads.zzio
            @Override // com.google.android.gms.internal.ads.zzfxg
            public final Object zza() {
                return zzyj.this;
            }
        };
        return this;
    }

    @Deprecated
    public final zzlu zzc() {
        zzip zzipVar = this.f8791a;
        zzdb.zzf(!zzipVar.t);
        zzipVar.t = true;
        return new zzlu(zzipVar);
    }
}
