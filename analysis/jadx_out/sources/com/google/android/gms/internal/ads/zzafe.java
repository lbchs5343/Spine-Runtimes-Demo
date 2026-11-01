package com.google.android.gms.internal.ads;

import g.grf;
import java.io.IOException;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzafe implements zzacr {

    /* renamed from: a, reason: collision with root package name */
    public final grf f4169a;

    public zzafe() {
        this(0);
    }

    public zzafe(int i) {
        this.f4169a = new grf();
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final int zzb(zzacs zzacsVar, zzadn zzadnVar) throws IOException {
        return this.f4169a.zzb(zzacsVar, zzadnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final /* synthetic */ zzacr zzc() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final /* synthetic */ List zzd() {
        return zzfzo.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zze(zzacu zzacuVar) {
        this.f4169a.f18637g = zzacuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zzf(long j, long j2) {
        this.f4169a.zzf(j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final boolean zzi(zzacs zzacsVar) throws IOException {
        return this.f4169a.zzi(zzacsVar);
    }
}
