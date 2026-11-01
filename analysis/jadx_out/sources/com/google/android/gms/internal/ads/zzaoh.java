package com.google.android.gms.internal.ads;

import android.util.Pair;
import g.aky;
import g.awf;
import g.cgn;
import g.dax;
import g.dul;
import g.ew;
import g.gme;
import java.io.IOException;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzaoh implements zzacr {

    /* renamed from: b, reason: collision with root package name */
    public ew f4419b;

    /* renamed from: c, reason: collision with root package name */
    public zzacu f4420c;

    /* renamed from: e, reason: collision with root package name */
    public zzadx f4422e;

    /* renamed from: f, reason: collision with root package name */
    public int f4423f = 0;

    /* renamed from: a, reason: collision with root package name */
    public long f4418a = -1;

    /* renamed from: d, reason: collision with root package name */
    public int f4421d = -1;

    /* renamed from: g, reason: collision with root package name */
    public long f4424g = -1;

    /* JADX WARN: Code restructure failed: missing block: B:49:0x016b, code lost:
    
        if (r13 != 65534) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:52:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0195  */
    @Override // com.google.android.gms.internal.ads.zzacr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzb(zzacs zzacsVar, zzadn zzadnVar) throws IOException {
        byte[] bArr;
        int zzn;
        zzdb.zzb(this.f4422e);
        int i = zzen.zza;
        int i2 = this.f4423f;
        if (i2 == 0) {
            zzdb.zzf(zzacsVar.zzf() == 0);
            int i3 = this.f4421d;
            if (i3 != -1) {
                zzacsVar.zzk(i3);
                this.f4423f = 4;
                return 0;
            }
            if (!aky.y(zzacsVar)) {
                throw zzbh.zza("Unsupported or unrecognized wav file type.", null);
            }
            zzacsVar.zzk((int) (zzacsVar.zze() - zzacsVar.zzf()));
            this.f4423f = 1;
            return 0;
        }
        long j = -1;
        if (i2 == 1) {
            zzed zzedVar = new zzed(8);
            cgn c2 = cgn.c(zzacsVar, zzedVar);
            if (c2.f12846a != 1685272116) {
                zzacsVar.zzj();
            } else {
                zzacsVar.zzg(8);
                zzedVar.zzL(0);
                zzacsVar.zzh(zzedVar.zzN(), 0, 8);
                j = zzedVar.zzr();
                zzacsVar.zzk(((int) c2.f12847b) + 8);
            }
            this.f4418a = j;
            this.f4423f = 2;
            return 0;
        }
        if (i2 != 2) {
            if (i2 != 3) {
                zzdb.zzf(this.f4424g != -1);
                long zzf = this.f4424g - zzacsVar.zzf();
                ew ewVar = this.f4419b;
                ewVar.getClass();
                return ewVar.a(zzacsVar, zzf) ? -1 : 0;
            }
            zzacsVar.zzj();
            cgn u = aky.u(1684108385, zzacsVar, new zzed(8));
            zzacsVar.zzk(8);
            Pair create = Pair.create(Long.valueOf(zzacsVar.zzf()), Long.valueOf(u.f12847b));
            this.f4421d = ((Long) create.first).intValue();
            long longValue = ((Long) create.second).longValue();
            long j2 = this.f4418a;
            if (j2 != -1 && longValue == 4294967295L) {
                longValue = j2;
            }
            long j3 = this.f4421d + longValue;
            this.f4424g = j3;
            long zzd = zzacsVar.zzd();
            if (zzd != -1 && j3 > zzd) {
                StringBuilder l = awf.l(j3, "Data exceeds input length: ", ", ");
                l.append(zzd);
                zzdt.zzf("WavExtractor", l.toString());
                this.f4424g = zzd;
                j3 = zzd;
            }
            ew ewVar2 = this.f4419b;
            ewVar2.getClass();
            ewVar2.zza(this.f4421d, j3);
            this.f4423f = 4;
            return 0;
        }
        zzed zzedVar2 = new zzed(16);
        long j4 = aky.u(1718449184, zzacsVar, zzedVar2).f12847b;
        zzdb.zzf(j4 >= 16);
        zzacsVar.zzh(zzedVar2.zzN(), 0, 16);
        zzedVar2.zzL(0);
        int zzk = zzedVar2.zzk();
        int zzk2 = zzedVar2.zzk();
        int zzj = zzedVar2.zzj();
        zzedVar2.zzj();
        int zzk3 = zzedVar2.zzk();
        int zzk4 = zzedVar2.zzk();
        int i4 = ((int) j4) - 16;
        if (i4 > 0) {
            bArr = new byte[i4];
            zzacsVar.zzh(bArr, 0, i4);
        } else {
            bArr = zzen.zzf;
        }
        byte[] bArr2 = bArr;
        zzacsVar.zzk((int) (zzacsVar.zze() - zzacsVar.zzf()));
        gme gmeVar = new gme(zzk, zzk2, zzj, zzk3, zzk4, bArr2);
        if (zzk == 17) {
            this.f4419b = new dax(this.f4420c, this.f4422e, gmeVar);
        } else if (zzk == 6) {
            this.f4419b = new dul(this.f4420c, this.f4422e, gmeVar, "audio/g711-alaw", -1);
        } else if (zzk == 7) {
            this.f4419b = new dul(this.f4420c, this.f4422e, gmeVar, "audio/g711-mlaw", -1);
        } else {
            if (zzk != 1) {
                if (zzk == 3) {
                    if (zzk4 == 32) {
                        zzn = 4;
                        if (zzn == 0) {
                            throw zzbh.zzc("Unsupported WAV format type: " + zzk);
                        }
                        this.f4419b = new dul(this.f4420c, this.f4422e, gmeVar, "audio/raw", zzn);
                    }
                }
                zzn = 0;
                if (zzn == 0) {
                }
            }
            zzn = zzen.zzn(zzk4);
            if (zzn == 0) {
            }
        }
        this.f4423f = 3;
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
        this.f4420c = zzacuVar;
        this.f4422e = zzacuVar.zzw(0, 1);
        zzacuVar.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zzf(long j, long j2) {
        this.f4423f = j == 0 ? 0 : 4;
        ew ewVar = this.f4419b;
        if (ewVar != null) {
            ewVar.zzb(j2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final boolean zzi(zzacs zzacsVar) throws IOException {
        return aky.y(zzacsVar);
    }
}
