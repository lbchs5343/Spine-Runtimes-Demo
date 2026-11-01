package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes3.dex */
public final class zzamy implements zzamm {

    /* renamed from: a, reason: collision with root package name */
    public int f4363a;

    /* renamed from: b, reason: collision with root package name */
    public long f4364b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4365c;

    /* renamed from: d, reason: collision with root package name */
    public int f4366d;

    /* renamed from: e, reason: collision with root package name */
    public zzadx f4367e;

    /* renamed from: f, reason: collision with root package name */
    public final zzed f4368f;

    /* renamed from: g, reason: collision with root package name */
    public String f4369g;
    public long h;
    public boolean i;
    public final zzadj j;
    public boolean k;
    public final String l;
    public int m;

    public zzamy() {
        throw null;
    }

    public zzamy(String str, int i) {
        this.m = 0;
        zzed zzedVar = new zzed(4);
        this.f4368f = zzedVar;
        zzedVar.zzN()[0] = -1;
        this.j = new zzadj();
        this.h = -9223372036854775807L;
        this.l = str;
        this.f4365c = i;
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zza(zzed zzedVar) {
        zzdb.zzb(this.f4367e);
        while (zzedVar.zzb() > 0) {
            int i = this.m;
            zzed zzedVar2 = this.f4368f;
            if (i == 0) {
                byte[] zzN = zzedVar.zzN();
                int zzd = zzedVar.zzd();
                int zze = zzedVar.zze();
                while (true) {
                    if (zzd >= zze) {
                        zzedVar.zzL(zze);
                        break;
                    }
                    int i2 = zzd + 1;
                    byte b2 = zzN[zzd];
                    boolean z = (b2 & 255) == 255;
                    boolean z2 = this.k && (b2 & 224) == 224;
                    this.k = z;
                    if (z2) {
                        zzedVar.zzL(i2);
                        this.k = false;
                        zzedVar2.zzN()[1] = zzN[zzd];
                        this.f4363a = 2;
                        this.m = 1;
                        break;
                    }
                    zzd = i2;
                }
            } else if (i != 1) {
                int min = Math.min(zzedVar.zzb(), this.f4366d - this.f4363a);
                this.f4367e.zzq(zzedVar, min);
                int i3 = this.f4363a + min;
                this.f4363a = i3;
                if (i3 >= this.f4366d) {
                    zzdb.zzf(this.h != -9223372036854775807L);
                    this.f4367e.zzs(this.h, 1, this.f4366d, 0, null);
                    this.h += this.f4364b;
                    this.f4363a = 0;
                    this.m = 0;
                }
            } else {
                int min2 = Math.min(zzedVar.zzb(), 4 - this.f4363a);
                zzedVar.zzH(zzedVar2.zzN(), this.f4363a, min2);
                int i4 = this.f4363a + min2;
                this.f4363a = i4;
                if (i4 >= 4) {
                    zzedVar2.zzL(0);
                    int zzg = zzedVar2.zzg();
                    zzadj zzadjVar = this.j;
                    if (zzadjVar.zza(zzg)) {
                        this.f4366d = zzadjVar.zzc;
                        if (!this.i) {
                            this.f4364b = (zzadjVar.zzg * C.MICROS_PER_SECOND) / zzadjVar.zzd;
                            zzab zzabVar = new zzab();
                            zzabVar.zzL(this.f4369g);
                            zzabVar.zzZ(zzadjVar.zzb);
                            zzabVar.zzQ(4096);
                            zzabVar.zzz(zzadjVar.zze);
                            zzabVar.zzaa(zzadjVar.zzd);
                            zzabVar.zzP(this.l);
                            zzabVar.zzX(this.f4365c);
                            this.f4367e.zzl(zzabVar.zzaf());
                            this.i = true;
                        }
                        zzedVar2.zzL(0);
                        this.f4367e.zzq(zzedVar2, 4);
                        this.m = 2;
                    } else {
                        this.f4363a = 0;
                        this.m = 1;
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzb(zzacu zzacuVar, zzaoa zzaoaVar) {
        zzaoaVar.zzc();
        this.f4369g = zzaoaVar.zzb();
        this.f4367e = zzacuVar.zzw(zzaoaVar.zza(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzc(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzd(long j, int i) {
        this.h = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zze() {
        this.m = 0;
        this.f4363a = 0;
        this.k = false;
        this.h = -9223372036854775807L;
    }
}
