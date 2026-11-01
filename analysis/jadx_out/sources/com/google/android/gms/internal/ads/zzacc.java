package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes3.dex */
public class zzacc {

    /* renamed from: a, reason: collision with root package name */
    public final int f4065a;

    /* renamed from: b, reason: collision with root package name */
    public final zzabw f4066b;

    /* renamed from: c, reason: collision with root package name */
    public final zzacb f4067c;

    /* renamed from: d, reason: collision with root package name */
    public zzaby f4068d;

    public zzacc(zzabz zzabzVar, zzacb zzacbVar, long j, long j2, long j3, long j4, long j5, int i) {
        this.f4067c = zzacbVar;
        this.f4065a = i;
        this.f4066b = new zzabw(zzabzVar, j, 0L, j2, j3, j4, j5);
    }

    public static final int e(zzacs zzacsVar, long j, zzadn zzadnVar) {
        if (j == zzacsVar.zzf()) {
            return 0;
        }
        zzadnVar.zza = j;
        return 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c0, code lost:
    
        return e(r27, r8, r28);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zza(zzacs zzacsVar, zzadn zzadnVar) throws IOException {
        while (true) {
            zzaby zzabyVar = this.f4068d;
            zzdb.zzb(zzabyVar);
            long j = zzabyVar.f4059e;
            long j2 = zzabyVar.h;
            long j3 = zzabyVar.f4055a;
            long j4 = j2 - j;
            long j5 = this.f4065a;
            zzacb zzacbVar = this.f4067c;
            if (j4 <= j5) {
                this.f4068d = null;
                zzacbVar.zzb();
                return e(zzacsVar, j, zzadnVar);
            }
            long zzf = j3 - zzacsVar.zzf();
            if (zzf < 0 || zzf > 262144) {
                break;
            }
            zzacsVar.zzk((int) zzf);
            zzacsVar.zzj();
            zzaca zza = zzacbVar.zza(zzacsVar, zzabyVar.f4060f);
            int i = zza.f4062a;
            long j6 = zza.f4063b;
            long j7 = zza.f4064c;
            if (i == -3) {
                this.f4068d = null;
                zzacbVar.zzb();
                return e(zzacsVar, j3, zzadnVar);
            }
            if (i == -2) {
                zzabyVar.f4056b = j6;
                zzabyVar.f4059e = j7;
                zzabyVar.f4055a = zzaby.i(zzabyVar.f4060f, j6, zzabyVar.f4057c, j7, zzabyVar.h, zzabyVar.f4061g);
            } else {
                if (i != -1) {
                    long zzf2 = j7 - zzacsVar.zzf();
                    if (zzf2 >= 0 && zzf2 <= 262144) {
                        zzacsVar.zzk((int) zzf2);
                    }
                    this.f4068d = null;
                    zzacbVar.zzb();
                    return e(zzacsVar, j7, zzadnVar);
                }
                zzabyVar.f4057c = j6;
                zzabyVar.h = j7;
                zzabyVar.f4055a = zzaby.i(zzabyVar.f4060f, zzabyVar.f4056b, j6, zzabyVar.f4059e, j7, zzabyVar.f4061g);
            }
        }
    }

    public final zzadq zzb() {
        return this.f4066b;
    }

    public final void zzd(long j) {
        zzaby zzabyVar = this.f4068d;
        if (zzabyVar == null || zzabyVar.f4058d != j) {
            zzabw zzabwVar = this.f4066b;
            this.f4068d = new zzaby(j, zzabwVar.zzf(j), zzabwVar.f4054f, zzabwVar.f4049a, zzabwVar.f4050b, zzabwVar.f4052d);
        }
    }

    public final boolean zze() {
        return this.f4068d != null;
    }
}
