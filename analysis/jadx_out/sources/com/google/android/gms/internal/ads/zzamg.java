package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes3.dex */
public final class zzamg implements zzamm {

    /* renamed from: a, reason: collision with root package name */
    public int f4287a;

    /* renamed from: b, reason: collision with root package name */
    public zzad f4288b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4289c;

    /* renamed from: d, reason: collision with root package name */
    public int f4290d;

    /* renamed from: e, reason: collision with root package name */
    public String f4291e;

    /* renamed from: f, reason: collision with root package name */
    public final zzec f4292f;

    /* renamed from: g, reason: collision with root package name */
    public zzadx f4293g;
    public long h;
    public boolean i;
    public final zzed j;
    public long k;
    public final String l;
    public int m;

    public zzamg() {
        throw null;
    }

    public zzamg(String str, int i) {
        zzec zzecVar = new zzec(new byte[16], 16);
        this.f4292f = zzecVar;
        this.j = new zzed(zzecVar.zza);
        this.m = 0;
        this.f4287a = 0;
        this.i = false;
        this.h = -9223372036854775807L;
        this.l = str;
        this.f4289c = i;
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zza(zzed zzedVar) {
        zzdb.zzb(this.f4293g);
        while (zzedVar.zzb() > 0) {
            int i = this.m;
            zzed zzedVar2 = this.j;
            if (i == 0) {
                while (zzedVar.zzb() > 0) {
                    if (this.i) {
                        int zzm = zzedVar.zzm();
                        this.i = zzm == 172;
                        if (zzm != 64) {
                            if (zzm == 65) {
                                zzm = 65;
                            }
                        }
                        this.m = 1;
                        zzedVar2.zzN()[0] = -84;
                        zzedVar2.zzN()[1] = zzm == 65 ? (byte) 65 : (byte) 64;
                        this.f4287a = 2;
                    } else {
                        this.i = zzedVar.zzm() == 172;
                    }
                }
            } else if (i != 1) {
                int min = Math.min(zzedVar.zzb(), this.f4290d - this.f4287a);
                this.f4293g.zzq(zzedVar, min);
                int i2 = this.f4287a + min;
                this.f4287a = i2;
                if (i2 == this.f4290d) {
                    zzdb.zzf(this.h != -9223372036854775807L);
                    this.f4293g.zzs(this.h, 1, this.f4290d, 0, null);
                    this.h += this.k;
                    this.m = 0;
                }
            } else {
                byte[] zzN = zzedVar2.zzN();
                int min2 = Math.min(zzedVar.zzb(), 16 - this.f4287a);
                zzedVar.zzH(zzN, this.f4287a, min2);
                int i3 = this.f4287a + min2;
                this.f4287a = i3;
                if (i3 == 16) {
                    zzec zzecVar = this.f4292f;
                    zzecVar.zzl(0);
                    zzabs zza = zzabu.zza(zzecVar);
                    zzad zzadVar = this.f4288b;
                    if (zzadVar == null || zzadVar.zzC != 2 || zza.zza != zzadVar.zzD || !"audio/ac4".equals(zzadVar.zzo)) {
                        zzab zzabVar = new zzab();
                        zzabVar.zzL(this.f4291e);
                        zzabVar.zzZ("audio/ac4");
                        zzabVar.zzz(2);
                        zzabVar.zzaa(zza.zza);
                        zzabVar.zzP(this.l);
                        zzabVar.zzX(this.f4289c);
                        zzad zzaf = zzabVar.zzaf();
                        this.f4288b = zzaf;
                        this.f4293g.zzl(zzaf);
                    }
                    this.f4290d = zza.zzb;
                    this.k = (zza.zzc * C.MICROS_PER_SECOND) / this.f4288b.zzD;
                    zzedVar2.zzL(0);
                    this.f4293g.zzq(zzedVar2, 16);
                    this.m = 2;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzb(zzacu zzacuVar, zzaoa zzaoaVar) {
        zzaoaVar.zzc();
        this.f4291e = zzaoaVar.zzb();
        this.f4293g = zzacuVar.zzw(zzaoaVar.zza(), 1);
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
        this.f4287a = 0;
        this.i = false;
        this.h = -9223372036854775807L;
    }
}
