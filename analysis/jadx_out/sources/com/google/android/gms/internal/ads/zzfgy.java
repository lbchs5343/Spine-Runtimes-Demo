package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzfgy {

    /* renamed from: a, reason: collision with root package name */
    public zzfht f7894a = null;

    public final void zza() {
        zzfht zzfhtVar = this.f7894a;
        if (zzfhtVar != null) {
            zzfhy zzfhyVar = zzfhtVar.zza;
            synchronized (zzfhyVar) {
                zzfhyVar.f7900b = 1;
                zzfhyVar.f();
            }
        }
    }

    public final void zzb(zzfht zzfhtVar) {
        this.f7894a = zzfhtVar;
    }
}
