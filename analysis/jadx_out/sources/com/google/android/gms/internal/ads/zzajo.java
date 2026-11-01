package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.C;
import g.abb;
import g.arm;
import g.cda;
import g.cxs;
import g.dbh;
import g.dgl;
import g.emj;
import g.fbc;
import g.fcw;
import g.ix;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzajo implements zzacr {

    /* renamed from: a, reason: collision with root package name */
    public zzacu f4211a;

    /* renamed from: b, reason: collision with root package name */
    public dbh f4212b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4213c;

    public final boolean d(zzacs zzacsVar) {
        cxs cxsVar = new cxs();
        if (cxsVar.h(zzacsVar, true) && (cxsVar.f13707c & 2) == 2) {
            int min = Math.min(cxsVar.f13706b, 8);
            zzed zzedVar = new zzed(min);
            zzacsVar.zzh(zzedVar.zzN(), 0, min);
            zzedVar.zzL(0);
            if (zzedVar.zzb() >= 5 && zzedVar.zzm() == 127 && zzedVar.zzu() == 1179402563) {
                this.f4212b = new dgl();
            } else {
                zzedVar.zzL(0);
                try {
                    if (zzaed.zzd(1, zzedVar, true)) {
                        this.f4212b = new ix();
                    }
                } catch (zzbh unused) {
                }
                zzedVar.zzL(0);
                if (cda.d(zzedVar, cda.f12671a)) {
                    this.f4212b = new cda();
                }
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x016b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x016c  */
    @Override // com.google.android.gms.internal.ads.zzacr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzb(zzacs zzacsVar, zzadn zzadnVar) throws IOException {
        zzed zzedVar;
        int i;
        zzdb.zzb(this.f4211a);
        if (this.f4212b == null) {
            if (!d(zzacsVar)) {
                throw zzbh.zza("Failed to determine bitstream type", null);
            }
            zzacsVar.zzj();
        }
        if (!this.f4213c) {
            zzadx zzw = this.f4211a.zzw(0, 1);
            this.f4211a.zzD();
            dbh dbhVar = this.f4212b;
            dbhVar.u = this.f4211a;
            dbhVar.s = zzw;
            dbhVar.h(true);
            this.f4213c = true;
        }
        dbh dbhVar2 = this.f4212b;
        abb abbVar = dbhVar2.o;
        zzdb.zzb(dbhVar2.s);
        int i2 = zzen.zza;
        int i3 = dbhVar2.j;
        int i4 = 3;
        int i5 = -1;
        if (i3 != 0) {
            if (i3 == 1) {
                zzacsVar.zzk((int) dbhVar2.p);
                dbhVar2.j = 2;
                return 0;
            }
            if (i3 != 2) {
                return -1;
            }
            long c2 = dbhVar2.l.c(zzacsVar);
            if (c2 >= 0) {
                zzadnVar.zza = c2;
                return 1;
            }
            if (c2 < -1) {
                dbhVar2.f(-(c2 + 2));
            }
            if (!dbhVar2.m) {
                zzadq zze = dbhVar2.l.zze();
                zzdb.zzb(zze);
                dbhVar2.u.zzO(zze);
                dbhVar2.m = true;
            }
            if (dbhVar2.k <= 0 && !abbVar.f(zzacsVar)) {
                dbhVar2.j = 3;
                return -1;
            }
            dbhVar2.k = 0L;
            zzed zzedVar2 = abbVar.f9901d;
            long g2 = dbhVar2.g(zzedVar2);
            if (g2 >= 0) {
                long j = dbhVar2.v;
                if (j + g2 >= dbhVar2.n) {
                    long j2 = (j * C.MICROS_PER_SECOND) / dbhVar2.r;
                    dbhVar2.s.zzq(zzedVar2, zzedVar2.zze());
                    dbhVar2.s.zzs(j2, 1, zzedVar2.zze(), 0, null);
                    dbhVar2.n = -1L;
                }
            }
            dbhVar2.v += g2;
            return 0;
        }
        while (true) {
            boolean f2 = abbVar.f(zzacsVar);
            zzed zzedVar3 = abbVar.f9901d;
            if (!f2) {
                dbhVar2.j = i4;
                return i5;
            }
            long zzf = zzacsVar.zzf();
            long j3 = dbhVar2.p;
            dbhVar2.k = zzf - j3;
            if (dbhVar2.i(zzedVar3, j3, dbhVar2.t)) {
                dbhVar2.p = zzacsVar.zzf();
                i4 = 3;
                i5 = -1;
            } else {
                zzad zzadVar = (zzad) dbhVar2.t.f16721f;
                dbhVar2.r = zzadVar.zzD;
                if (!dbhVar2.q) {
                    dbhVar2.s.zzl(zzadVar);
                    dbhVar2.q = true;
                }
                fcw fcwVar = (fcw) dbhVar2.t.f16719c;
                if (fcwVar != null) {
                    dbhVar2.l = fcwVar;
                } else {
                    if (zzacsVar.zzd() != -1) {
                        cxs cxsVar = abbVar.f9900c;
                        boolean z = (cxsVar.f13707c & 4) != 0;
                        long j4 = dbhVar2.p;
                        long zzd = zzacsVar.zzd();
                        int i6 = cxsVar.f13705a + cxsVar.f13706b;
                        long j5 = cxsVar.f13709e;
                        long j6 = i6;
                        zzedVar = zzedVar3;
                        i = 2;
                        dbhVar2.l = new emj(dbhVar2, j4, zzd, j6, j5, z);
                        dbhVar2.j = i;
                        if (zzedVar.zzN().length != 65025) {
                            return 0;
                        }
                        zzedVar.zzJ(Arrays.copyOf(zzedVar.zzN(), Math.max(65025, zzedVar.zze())), zzedVar.zze());
                        return 0;
                    }
                    dbhVar2.l = new fbc(18);
                }
                zzedVar = zzedVar3;
                i = 2;
                dbhVar2.j = i;
                if (zzedVar.zzN().length != 65025) {
                }
            }
        }
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
        this.f4211a = zzacuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zzf(long j, long j2) {
        dbh dbhVar = this.f4212b;
        if (dbhVar != null) {
            abb abbVar = dbhVar.o;
            cxs cxsVar = abbVar.f9900c;
            cxsVar.f13707c = 0;
            cxsVar.f13709e = 0L;
            cxsVar.f13710f = 0;
            cxsVar.f13705a = 0;
            cxsVar.f13706b = 0;
            abbVar.f9901d.zzI(0);
            abbVar.f9902e = -1;
            abbVar.f9899b = false;
            if (j == 0) {
                dbhVar.h(!dbhVar.m);
                return;
            }
            if (dbhVar.j != 0) {
                long j3 = (dbhVar.r * j2) / C.MICROS_PER_SECOND;
                dbhVar.n = j3;
                arm armVar = dbhVar.l;
                int i = zzen.zza;
                armVar.zzg(j3);
                dbhVar.j = 2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final boolean zzi(zzacs zzacsVar) throws IOException {
        try {
            return d(zzacsVar);
        } catch (zzbh unused) {
            return false;
        }
    }
}
