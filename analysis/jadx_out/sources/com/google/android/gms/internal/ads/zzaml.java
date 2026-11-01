package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzaml implements zzamm {

    /* renamed from: a, reason: collision with root package name */
    public int f4316a;

    /* renamed from: b, reason: collision with root package name */
    public int f4317b;

    /* renamed from: c, reason: collision with root package name */
    public final List f4318c;

    /* renamed from: d, reason: collision with root package name */
    public long f4319d = -9223372036854775807L;

    /* renamed from: e, reason: collision with root package name */
    public final zzadx[] f4320e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f4321f;

    public zzaml(List list) {
        this.f4318c = list;
        this.f4320e = new zzadx[list.size()];
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zza(zzed zzedVar) {
        boolean z;
        boolean z2;
        if (!this.f4321f) {
            return;
        }
        int i = 0;
        if (this.f4316a == 2) {
            if (zzedVar.zzb() == 0) {
                z2 = false;
            } else {
                if (zzedVar.zzm() != 32) {
                    this.f4321f = false;
                }
                this.f4316a--;
                z2 = this.f4321f;
            }
            if (!z2) {
                return;
            }
        }
        if (this.f4316a == 1) {
            if (zzedVar.zzb() == 0) {
                z = false;
            } else {
                if (zzedVar.zzm() != 0) {
                    this.f4321f = false;
                }
                this.f4316a--;
                z = this.f4321f;
            }
            if (!z) {
                return;
            }
        }
        int zzd = zzedVar.zzd();
        int zzb = zzedVar.zzb();
        while (true) {
            zzadx[] zzadxVarArr = this.f4320e;
            if (i >= zzadxVarArr.length) {
                this.f4317b += zzb;
                return;
            }
            zzadx zzadxVar = zzadxVarArr[i];
            zzedVar.zzL(zzd);
            zzadxVar.zzq(zzedVar, zzb);
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzb(zzacu zzacuVar, zzaoa zzaoaVar) {
        int i = 0;
        while (true) {
            zzadx[] zzadxVarArr = this.f4320e;
            if (i >= zzadxVarArr.length) {
                return;
            }
            zzanx zzanxVar = (zzanx) this.f4318c.get(i);
            zzaoaVar.zzc();
            zzadx zzw = zzacuVar.zzw(zzaoaVar.zza(), 3);
            zzab zzabVar = new zzab();
            zzabVar.zzL(zzaoaVar.zzb());
            zzabVar.zzZ("application/dvbsubs");
            zzabVar.zzM(Collections.singletonList(zzanxVar.zzb));
            zzabVar.zzP(zzanxVar.zza);
            zzw.zzl(zzabVar.zzaf());
            zzadxVarArr[i] = zzw;
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzc(boolean z) {
        if (!this.f4321f) {
            return;
        }
        zzdb.zzf(this.f4319d != -9223372036854775807L);
        int i = 0;
        while (true) {
            zzadx[] zzadxVarArr = this.f4320e;
            if (i >= zzadxVarArr.length) {
                this.f4321f = false;
                return;
            } else {
                zzadxVarArr[i].zzs(this.f4319d, 1, this.f4317b, 0, null);
                i++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzd(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.f4321f = true;
        this.f4319d = j;
        this.f4317b = 0;
        this.f4316a = 2;
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zze() {
        this.f4321f = false;
        this.f4319d = -9223372036854775807L;
    }
}
