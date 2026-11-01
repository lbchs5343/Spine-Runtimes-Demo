package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzame implements zzamm {

    /* renamed from: a, reason: collision with root package name */
    public int f4277a;

    /* renamed from: b, reason: collision with root package name */
    public zzad f4278b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4279c;

    /* renamed from: d, reason: collision with root package name */
    public int f4280d;

    /* renamed from: e, reason: collision with root package name */
    public String f4281e;

    /* renamed from: f, reason: collision with root package name */
    public final zzec f4282f;

    /* renamed from: g, reason: collision with root package name */
    public zzadx f4283g;
    public long h;
    public boolean i;
    public final zzed j;
    public long k;
    public final String l;
    public int m;

    public zzame() {
        throw null;
    }

    public zzame(String str, int i) {
        zzec zzecVar = new zzec(new byte[TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME], TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        this.f4282f = zzecVar;
        this.j = new zzed(zzecVar.zza);
        this.m = 0;
        this.h = -9223372036854775807L;
        this.l = str;
        this.f4279c = i;
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zza(zzed zzedVar) {
        zzdb.zzb(this.f4283g);
        while (zzedVar.zzb() > 0) {
            int i = this.m;
            zzed zzedVar2 = this.j;
            if (i == 0) {
                while (true) {
                    if (zzedVar.zzb() <= 0) {
                        break;
                    }
                    if (this.i) {
                        int zzm = zzedVar.zzm();
                        if (zzm == 119) {
                            this.i = false;
                            this.m = 1;
                            zzedVar2.zzN()[0] = 11;
                            zzedVar2.zzN()[1] = 119;
                            this.f4277a = 2;
                            break;
                        }
                        this.i = zzm == 11;
                    } else {
                        this.i = zzedVar.zzm() == 11;
                    }
                }
            } else if (i != 1) {
                int min = Math.min(zzedVar.zzb(), this.f4280d - this.f4277a);
                this.f4283g.zzq(zzedVar, min);
                int i2 = this.f4277a + min;
                this.f4277a = i2;
                if (i2 == this.f4280d) {
                    zzdb.zzf(this.h != -9223372036854775807L);
                    this.f4283g.zzs(this.h, 1, this.f4280d, 0, null);
                    this.h += this.k;
                    this.m = 0;
                }
            } else {
                byte[] zzN = zzedVar2.zzN();
                int min2 = Math.min(zzedVar.zzb(), 128 - this.f4277a);
                zzedVar.zzH(zzN, this.f4277a, min2);
                int i3 = this.f4277a + min2;
                this.f4277a = i3;
                if (i3 == 128) {
                    zzec zzecVar = this.f4282f;
                    zzecVar.zzl(0);
                    zzabp zze = zzabr.zze(zzecVar);
                    zzad zzadVar = this.f4278b;
                    if (zzadVar == null || zze.zzc != zzadVar.zzC || zze.zzb != zzadVar.zzD || !Objects.equals(zze.zza, zzadVar.zzo)) {
                        zzab zzabVar = new zzab();
                        zzabVar.zzL(this.f4281e);
                        zzabVar.zzZ(zze.zza);
                        zzabVar.zzz(zze.zzc);
                        zzabVar.zzaa(zze.zzb);
                        zzabVar.zzP(this.l);
                        zzabVar.zzX(this.f4279c);
                        zzabVar.zzU(zze.zzf);
                        if ("audio/ac3".equals(zze.zza)) {
                            zzabVar.zzy(zze.zzf);
                        }
                        zzad zzaf = zzabVar.zzaf();
                        this.f4278b = zzaf;
                        this.f4283g.zzl(zzaf);
                    }
                    this.f4280d = zze.zzd;
                    this.k = (zze.zze * C.MICROS_PER_SECOND) / this.f4278b.zzD;
                    zzedVar2.zzL(0);
                    this.f4283g.zzq(zzedVar2, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                    this.m = 2;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzb(zzacu zzacuVar, zzaoa zzaoaVar) {
        zzaoaVar.zzc();
        this.f4281e = zzaoaVar.zzb();
        this.f4283g = zzacuVar.zzw(zzaoaVar.zza(), 1);
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
        this.f4277a = 0;
        this.i = false;
        this.h = -9223372036854775807L;
    }
}
