package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzamh implements zzacr {

    /* renamed from: a, reason: collision with root package name */
    public boolean f4294a;

    /* renamed from: b, reason: collision with root package name */
    public final zzec f4295b;

    /* renamed from: c, reason: collision with root package name */
    public zzacu f4296c;

    /* renamed from: d, reason: collision with root package name */
    public final zzami f4297d;

    /* renamed from: e, reason: collision with root package name */
    public long f4298e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f4299f;

    /* renamed from: g, reason: collision with root package name */
    public final zzed f4300g;
    public final zzed h;
    public long i;

    public zzamh() {
        throw null;
    }

    public zzamh(int i) {
        this.f4297d = new zzami(true, null, 0);
        this.f4300g = new zzed(2048);
        this.i = -1L;
        zzed zzedVar = new zzed(10);
        this.h = zzedVar;
        byte[] zzN = zzedVar.zzN();
        this.f4295b = new zzec(zzN, zzN.length);
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final int zzb(zzacs zzacsVar, zzadn zzadnVar) throws IOException {
        zzdb.zzb(this.f4296c);
        zzed zzedVar = this.f4300g;
        int zza = zzacsVar.zza(zzedVar.zzN(), 0, 2048);
        if (!this.f4299f) {
            this.f4296c.zzO(new zzadp(-9223372036854775807L, 0L));
            this.f4299f = true;
        }
        if (zza == -1) {
            return -1;
        }
        zzedVar.zzL(0);
        zzedVar.zzK(zza);
        boolean z = this.f4294a;
        zzami zzamiVar = this.f4297d;
        if (!z) {
            zzamiVar.zzd(this.f4298e, 4);
            this.f4294a = true;
        }
        zzamiVar.zza(zzedVar);
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
        this.f4296c = zzacuVar;
        this.f4297d.zzb(zzacuVar, new zzaoa(Integer.MIN_VALUE, 0, 1));
        zzacuVar.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zzf(long j, long j2) {
        this.f4294a = false;
        this.f4297d.zze();
        this.f4298e = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final boolean zzi(zzacs zzacsVar) throws IOException {
        zzed zzedVar;
        int i = 0;
        while (true) {
            zzedVar = this.h;
            zzacg zzacgVar = (zzacg) zzacsVar;
            zzacgVar.zzm(zzedVar.zzN(), 0, 10, false);
            zzedVar.zzL(0);
            if (zzedVar.zzo() != 4801587) {
                break;
            }
            zzedVar.zzM(3);
            int zzl = zzedVar.zzl();
            i += zzl + 10;
            zzacgVar.zzl(zzl, false);
        }
        zzacsVar.zzj();
        zzacg zzacgVar2 = (zzacg) zzacsVar;
        zzacgVar2.zzl(i, false);
        if (this.i == -1) {
            this.i = i;
        }
        int i2 = i;
        int i3 = 0;
        int i4 = 0;
        do {
            zzacgVar2.zzm(zzedVar.zzN(), 0, 2, false);
            zzedVar.zzL(0);
            if (zzami.zzf(zzedVar.zzq())) {
                i3++;
                if (i3 >= 4 && i4 > 188) {
                    return true;
                }
                zzacgVar2.zzm(zzedVar.zzN(), 0, 4, false);
                zzec zzecVar = this.f4295b;
                zzecVar.zzl(14);
                int zzd = zzecVar.zzd(13);
                if (zzd <= 6) {
                    i2++;
                    zzacsVar.zzj();
                    zzacgVar2.zzl(i2, false);
                } else {
                    zzacgVar2.zzl(zzd - 6, false);
                    i4 += zzd;
                }
            } else {
                i2++;
                zzacsVar.zzj();
                zzacgVar2.zzl(i2, false);
            }
            i3 = 0;
            i4 = 0;
        } while (i2 - i < 8192);
        return false;
    }
}
