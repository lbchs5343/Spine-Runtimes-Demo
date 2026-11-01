package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzads implements zzacr {

    /* renamed from: a, reason: collision with root package name */
    public int f4116a;

    /* renamed from: b, reason: collision with root package name */
    public int f4117b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4118c;

    /* renamed from: d, reason: collision with root package name */
    public zzacu f4119d;

    /* renamed from: e, reason: collision with root package name */
    public final int f4120e;

    /* renamed from: f, reason: collision with root package name */
    public final String f4121f;

    /* renamed from: g, reason: collision with root package name */
    public zzadx f4122g;

    public zzads(int i, int i2, String str) {
        this.f4118c = i;
        this.f4120e = i2;
        this.f4121f = str;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final int zzb(zzacs zzacsVar, zzadn zzadnVar) throws IOException {
        int i = this.f4117b;
        if (i != 1) {
            if (i == 2) {
                return -1;
            }
            throw new IllegalStateException();
        }
        zzadx zzadxVar = this.f4122g;
        zzadxVar.getClass();
        int zzf = zzadxVar.zzf(zzacsVar, 1024, true);
        if (zzf != -1) {
            this.f4116a += zzf;
            return 0;
        }
        this.f4117b = 2;
        this.f4122g.zzs(0L, 1, this.f4116a, 0, null);
        this.f4116a = 0;
        return 0;
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
        this.f4119d = zzacuVar;
        zzadx zzw = zzacuVar.zzw(1024, 4);
        this.f4122g = zzw;
        zzab zzabVar = new zzab();
        zzabVar.zzZ(this.f4121f);
        zzw.zzl(zzabVar.zzaf());
        this.f4119d.zzD();
        this.f4119d.zzO(new zzadt(-9223372036854775807L));
        this.f4117b = 1;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zzf(long j, long j2) {
        if (j == 0 || this.f4117b == 1) {
            this.f4117b = 1;
            this.f4116a = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final boolean zzi(zzacs zzacsVar) throws IOException {
        int i = this.f4120e;
        int i2 = this.f4118c;
        zzdb.zzf((i2 == -1 || i == -1) ? false : true);
        zzed zzedVar = new zzed(i);
        ((zzacg) zzacsVar).zzm(zzedVar.zzN(), 0, i, false);
        return zzedVar.zzq() == i2;
    }
}
