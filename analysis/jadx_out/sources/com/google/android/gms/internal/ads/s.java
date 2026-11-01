package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Pair;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bytedance.pangle.ZeusPluginEventCallback;
import g.apg;
import g.aqw;
import g.awf;
import g.bna;
import g.cuu;
import g.dee;
import g.dsw;
import g.eac;
import g.ejq;
import g.emt;
import g.feh;
import g.gdd;
import g.gzx;
import g.ij;
import g.tm;
import g.tn;
import j$.util.Objects;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class s implements Handler.Callback, zzuo, zzyi, zzle, zzie, zzlh {

    /* renamed from: a, reason: collision with root package name */
    public static final long f3976a = zzen.zzv(ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT);
    public final zzjd aa;

    /* renamed from: ab, reason: collision with root package name */
    public final eac f3977ab;
    public final zzln[] ac;
    public boolean ad;
    public zzke ae;
    public zzls af;
    public final zzdm ah;
    public final Set ai;
    public final long aj;
    public final zzdm ak;
    public long al;
    public boolean am;
    public zziq an;
    public int ao;
    public final zzia ap;
    public final zzdc ar;
    public final zzbt as;
    public final zzyk at;

    /* renamed from: b, reason: collision with root package name */
    public final zzyr f3978b;

    /* renamed from: d, reason: collision with root package name */
    public zzig f3980d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f3981e;

    /* renamed from: f, reason: collision with root package name */
    public final long f3982f;

    /* renamed from: g, reason: collision with root package name */
    public long f3983g;
    public final zzkl h;
    public gzx i;
    public final zzlw j;
    public final tm k;
    public cuu l;
    public boolean m;
    public final HandlerThread n;
    public boolean o;
    public boolean p;
    public final zzlq[] q;
    public final zzbu r;
    public int s;
    public final Looper t;
    public final zzoj u;
    public boolean v;
    public final feh w;
    public final boolean[] x;
    public final zzyj z;
    public int au = 0;
    public boolean aq = false;
    public boolean ag = false;

    /* renamed from: c, reason: collision with root package name */
    public long f3979c = -9223372036854775807L;
    public long y = -9223372036854775807L;

    public s(zzln[] zzlnVarArr, zzyj zzyjVar, zzyk zzykVar, zzkl zzklVar, zzyv zzyvVar, zzlw zzlwVar, zzls zzlsVar, zzia zziaVar, long j, Looper looper, zzdc zzdcVar, zzjd zzjdVar, zzoj zzojVar, zziq zziqVar) {
        this.aa = zzjdVar;
        this.ac = zzlnVarArr;
        this.z = zzyjVar;
        this.at = zzykVar;
        this.h = zzklVar;
        this.f3978b = zzyvVar;
        this.af = zzlsVar;
        this.ap = zziaVar;
        this.f3982f = j;
        this.ar = zzdcVar;
        this.u = zzojVar;
        this.an = zziqVar;
        this.j = zzlwVar;
        this.aj = zzklVar.zzb(zzojVar);
        zzklVar.zzg(zzojVar);
        zzbv zzbvVar = zzbv.zza;
        gzx u = gzx.u(zzykVar);
        this.i = u;
        this.ae = new zzke(u);
        int length = zzlnVarArr.length;
        this.q = new zzlq[2];
        this.x = new boolean[2];
        zzlp zze = zzyjVar.zze();
        for (int i = 0; i < 2; i++) {
            zzlnVarArr[i].zzv(i, zzojVar, zzdcVar);
            this.q[i] = zzlnVarArr[i].zzm();
            this.q[i].zzL(zze);
        }
        this.k = new tm(this, zzdcVar);
        this.f3981e = new ArrayList();
        this.ai = Collections.newSetFromMap(new IdentityHashMap());
        this.r = new zzbu();
        this.as = new zzbt();
        zzyjVar.zzr(this, zzyvVar);
        this.o = true;
        zzdm zzd = zzdcVar.zzd(looper, null);
        this.ak = zzd;
        this.f3977ab = new eac(zzlwVar, zzd, new zzjz(this), zziqVar);
        this.w = new feh(this, zzlwVar, zzd, zzojVar);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
        this.n = handlerThread;
        handlerThread.start();
        Looper looper2 = handlerThread.getLooper();
        this.t = looper2;
        this.ah = zzdcVar.zzd(looper2, this);
    }

    public static int av(zzbu zzbuVar, zzbt zzbtVar, int i, boolean z, Object obj, zzbv zzbvVar, zzbv zzbvVar2) {
        zzbu zzbuVar2 = zzbuVar;
        zzbv zzbvVar3 = zzbvVar;
        Object obj2 = zzbvVar3.zze(zzbvVar3.zzn(obj, zzbtVar).zzc, zzbuVar, 0L).zzb;
        for (int i2 = 0; i2 < zzbvVar2.zzc(); i2++) {
            if (zzbvVar2.zze(i2, zzbuVar, 0L).zzb.equals(obj2)) {
                return i2;
            }
        }
        int zza = zzbvVar3.zza(obj);
        int zzb = zzbvVar3.zzb();
        int i3 = 0;
        int i4 = -1;
        while (true) {
            if (i3 >= zzb || i4 != -1) {
                break;
            }
            zzbv zzbvVar4 = zzbvVar3;
            int zzi = zzbvVar4.zzi(zza, zzbtVar, zzbuVar2, i, z);
            if (zzi == -1) {
                i4 = -1;
                break;
            }
            i4 = zzbvVar2.zza(zzbvVar4.zzf(zzi));
            i3++;
            zzbvVar3 = zzbvVar4;
            zza = zzi;
            zzbuVar2 = zzbuVar;
        }
        if (i4 == -1) {
            return -1;
        }
        return zzbvVar2.zzd(i4, zzbtVar, false).zzc;
    }

    public static boolean aw(zzln zzlnVar) {
        return zzlnVar.zzcV() != 0;
    }

    public static Pair ax(zzbv zzbvVar, cuu cuuVar, int i, boolean z, zzbu zzbuVar, zzbt zzbtVar) {
        zzbv zzbvVar2 = cuuVar.f13561a;
        if (zzbvVar.zzo()) {
            return null;
        }
        zzbv zzbvVar3 = true == zzbvVar2.zzo() ? zzbvVar : zzbvVar2;
        try {
            Pair zzl = zzbvVar3.zzl(zzbuVar, zzbtVar, cuuVar.f13562b, cuuVar.f13563c);
            if (zzbvVar.equals(zzbvVar3)) {
                return zzl;
            }
            if (zzbvVar.zza(zzl.first) != -1) {
                return (zzbvVar3.zzn(zzl.first, zzbtVar).zzf && zzbvVar3.zze(zzbtVar.zzc, zzbuVar, 0L).zzn == zzbvVar3.zza(zzl.first)) ? zzbvVar.zzl(zzbuVar, zzbtVar, zzbvVar.zzn(zzl.first, zzbtVar).zzc, cuuVar.f13563c) : zzl;
            }
            int av = av(zzbuVar, zzbtVar, i, z, zzl.first, zzbvVar3, zzbvVar);
            if (av != -1) {
                return zzbvVar.zzl(zzbuVar, zzbtVar, av, -9223372036854775807L);
            }
            return null;
        } catch (IndexOutOfBoundsException unused) {
            return null;
        }
    }

    public static final void ay(zzlj zzljVar) {
        zzljVar.zzj();
        try {
            zzljVar.zzc().zzu(zzljVar.zza(), zzljVar.zzg());
        } finally {
            zzljVar.zzh(true);
        }
    }

    public final synchronized void az(zzjw zzjwVar, long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime() + j;
        boolean z = false;
        while (!zzjwVar.zza.am && j > 0) {
            try {
                wait(j);
            } catch (InterruptedException unused) {
                z = true;
            }
            j = elapsedRealtime - SystemClock.elapsedRealtime();
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    /* JADX WARN: Type inference failed for: r1v15, types: [com.google.android.gms.internal.ads.zzup, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.google.android.gms.internal.ads.zzup, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.android.gms.internal.ads.zzup, java.lang.Object] */
    public final void ba() {
        long j;
        long j2;
        boolean zzh;
        if (bz()) {
            dee deeVar = this.f3977ab.m;
            long zzc = !deeVar.f14046e ? 0L : deeVar.h.zzc();
            dee deeVar2 = this.f3977ab.m;
            long max = deeVar2 == null ? 0L : Math.max(0L, zzc - (this.f3983g - deeVar2.f14044c));
            if (deeVar == this.f3977ab.f15171a) {
                j = this.f3983g;
                j2 = deeVar.f14044c;
            } else {
                j = this.f3983g - deeVar.f14044c;
                j2 = deeVar.i.f10622f;
            }
            zzkk zzkkVar = new zzkk(this.u, this.i.i, deeVar.i.f10620d, j - j2, max, this.k.zzc().zzb, this.i.f19079g, this.m, cd(this.i.i, deeVar.i.f10620d) ? this.ap.zzb() : -9223372036854775807L);
            zzh = this.h.zzh(zzkkVar);
            dee deeVar3 = this.f3977ab.f15171a;
            if (!zzh && deeVar3.f14046e && max < 500000 && this.aj > 0) {
                deeVar3.h.zzj(this.i.t, false);
                zzh = this.h.zzh(zzkkVar);
            }
        } else {
            zzh = false;
        }
        this.v = zzh;
        if (zzh) {
            dee deeVar4 = this.f3977ab.m;
            long j3 = this.f3983g;
            float f2 = this.k.zzc().zzb;
            long j4 = this.y;
            zzdb.zzf(deeVar4.f14047f == null);
            long j5 = j3 - deeVar4.f14044c;
            zzkm zzkmVar = new zzkm();
            zzkmVar.zze(j5);
            zzkmVar.zzf(f2);
            zzkmVar.zzd(j4);
            deeVar4.h.zzo(new zzko(zzkmVar));
        }
        bo();
    }

    public final void bb() {
        int i;
        int i2;
        float f2 = this.k.zzc().zzb;
        eac eacVar = this.f3977ab;
        dee deeVar = eacVar.f15171a;
        dee deeVar2 = eacVar.k;
        zzyk zzykVar = null;
        dee deeVar3 = deeVar;
        boolean z = true;
        while (deeVar3 != null && deeVar3.f14046e) {
            zzyk u = deeVar3.u(this.i.i);
            zzyk zzykVar2 = deeVar3 == this.f3977ab.f15171a ? u : zzykVar;
            zzyk zzykVar3 = deeVar3.f14045d;
            boolean z2 = false;
            if (zzykVar3 != null) {
                if (zzykVar3.zzc.length == u.zzc.length) {
                    for (int i3 = 0; i3 < u.zzc.length; i3++) {
                        if (u.zza(zzykVar3, i3)) {
                        }
                    }
                    if (deeVar3 != deeVar2) {
                        z2 = true;
                    }
                    z = z2 & z;
                    deeVar3 = deeVar3.f14047f;
                    zzykVar = zzykVar2;
                }
            }
            if (z) {
                eac eacVar2 = this.f3977ab;
                dee deeVar4 = eacVar2.f15171a;
                boolean ao = eacVar2.ao(deeVar4);
                int length = this.ac.length;
                boolean[] zArr = new boolean[2];
                zzykVar2.getClass();
                long t = deeVar4.t(zzykVar2, this.i.t, ao, zArr);
                gzx gzxVar = this.i;
                boolean z3 = (gzxVar.h == 4 || t == gzxVar.t) ? false : true;
                gzx gzxVar2 = this.i;
                i = 4;
                i2 = 2;
                this.i = bd(gzxVar2.o, t, gzxVar2.r, gzxVar2.f19078f, z3, 5);
                if (z3) {
                    bg(t);
                }
                int length2 = this.ac.length;
                boolean[] zArr2 = new boolean[2];
                int i4 = 0;
                while (true) {
                    zzln[] zzlnVarArr = this.ac;
                    int length3 = zzlnVarArr.length;
                    if (i4 >= 2) {
                        break;
                    }
                    zzln zzlnVar = zzlnVarArr[i4];
                    boolean aw = aw(zzlnVar);
                    zArr2[i4] = aw;
                    zzwg zzwgVar = deeVar4.n[i4];
                    if (aw) {
                        if (zzwgVar != zzlnVar.zzp()) {
                            bk(i4);
                        } else if (zArr[i4]) {
                            zzlnVar.zzJ(this.f3983g);
                        }
                    }
                    i4++;
                }
                cb(zArr2, this.f3983g);
            } else {
                i = 4;
                i2 = 2;
                this.f3977ab.ao(deeVar3);
                if (deeVar3.f14046e) {
                    deeVar3.t(u, Math.max(deeVar3.i.f10622f, this.f3983g - deeVar3.f14044c), false, new boolean[2]);
                }
            }
            bj(true);
            if (this.i.h != i) {
                ba();
                bp();
                this.ah.zzi(i2);
                return;
            }
            return;
        }
    }

    public final long bc(zzbv zzbvVar, Object obj, long j) {
        int i = zzbvVar.zzn(obj, this.as).zzc;
        zzbu zzbuVar = this.r;
        zzbvVar.zze(i, zzbuVar, 0L);
        if (zzbuVar.zzf == -9223372036854775807L || !zzbuVar.zzb() || !zzbuVar.zzi) {
            return -9223372036854775807L;
        }
        long j2 = zzbuVar.zzg;
        return zzen.zzs((j2 == -9223372036854775807L ? System.currentTimeMillis() : j2 + SystemClock.elapsedRealtime()) - zzbuVar.zzf) - j;
    }

    public final gzx bd(zzur zzurVar, long j, long j2, long j3, boolean z, int i) {
        this.o = (!this.o && j == this.i.t && zzurVar.equals(this.i.o)) ? false : true;
        bu();
        gzx gzxVar = this.i;
        zzwr zzwrVar = gzxVar.f19074b;
        zzyk zzykVar = gzxVar.n;
        List list = gzxVar.p;
        if (this.w.j) {
            dee deeVar = this.f3977ab.f15171a;
            zzwrVar = deeVar == null ? zzwr.zza : deeVar.j;
            zzykVar = deeVar == null ? this.at : deeVar.f14045d;
            zzyd[] zzydVarArr = zzykVar.zzc;
            zzfzl zzfzlVar = new zzfzl();
            boolean z2 = false;
            for (zzyd zzydVar : zzydVarArr) {
                if (zzydVar != null) {
                    zzbd zzbdVar = zzydVar.zzd(0).zzl;
                    if (zzbdVar == null) {
                        zzfzlVar.zzf(new zzbd(-9223372036854775807L, new zzbc[0]));
                    } else {
                        zzfzlVar.zzf(zzbdVar);
                        z2 = true;
                    }
                }
            }
            list = z2 ? zzfzlVar.zzi() : zzfzo.zzn();
            if (deeVar != null) {
                apg apgVar = deeVar.i;
                long j4 = apgVar.f10623g;
                if (j4 != j2) {
                    if (j2 != j4) {
                        apgVar = new apg(apgVar.f10620d, apgVar.f10622f, j2, apgVar.f10618b, apgVar.f10619c, apgVar.f10621e, apgVar.h, apgVar.f10617a);
                    }
                    deeVar.i = apgVar;
                }
            }
            dee deeVar2 = this.f3977ab.f15171a;
            if (deeVar2 != null) {
                zzyk zzykVar2 = deeVar2.f14045d;
                int i2 = 0;
                while (true) {
                    int length = this.ac.length;
                    if (i2 >= 2) {
                        break;
                    }
                    if (zzykVar2.zzb(i2)) {
                        if (this.ac[i2].zzb() != 1) {
                            break;
                        }
                        int i3 = zzykVar2.zzb[i2].zzb;
                    }
                    i2++;
                }
            }
        } else if (!zzurVar.equals(gzxVar.o)) {
            zzykVar = this.at;
            zzwrVar = zzwr.zza;
            list = zzfzo.zzn();
        }
        zzwr zzwrVar2 = zzwrVar;
        zzyk zzykVar3 = zzykVar;
        List list2 = list;
        if (z) {
            this.ae.zzc(i);
        }
        gzx gzxVar2 = this.i;
        long j5 = gzxVar2.l;
        dee deeVar3 = this.f3977ab.m;
        return gzxVar2.aa(zzurVar, j, j2, j3, deeVar3 != null ? Math.max(0L, j5 - (this.f3983g - deeVar3.f14044c)) : 0L, zzwrVar2, zzykVar3, list2);
    }

    public final void be(zzbv zzbvVar, zzbv zzbvVar2) {
        if (zzbvVar.zzo() && zzbvVar2.zzo()) {
            return;
        }
        ArrayList arrayList = this.f3981e;
        int size = arrayList.size() - 1;
        if (size >= 0) {
            throw tn.w(size, arrayList);
        }
        Collections.sort(arrayList);
    }

    public final void bf(boolean z, boolean z2) {
        this.m = z;
        long j = -9223372036854775807L;
        if (z && !z2) {
            j = SystemClock.elapsedRealtime();
        }
        this.y = j;
    }

    public final void bg(long j) {
        dee deeVar = this.f3977ab.f15171a;
        long j2 = j + (deeVar == null ? 1000000000000L : deeVar.f14044c);
        this.f3983g = j2;
        this.k.f20051d.zzb(j2);
        zzln[] zzlnVarArr = this.ac;
        int length = zzlnVarArr.length;
        for (int i = 0; i < 2; i++) {
            zzln zzlnVar = zzlnVarArr[i];
            if (aw(zzlnVar)) {
                zzlnVar.zzJ(this.f3983g);
            }
        }
        for (dee deeVar2 = r0.f15171a; deeVar2 != null; deeVar2 = deeVar2.f14047f) {
            for (zzyd zzydVar : deeVar2.f14045d.zzc) {
            }
        }
    }

    public final void bh(IOException iOException, int i) {
        zzig zzc = zzig.zzc(iOException, i);
        dee deeVar = this.f3977ab.f15171a;
        if (deeVar != null) {
            zzc = zzc.a(deeVar.i.f10620d);
        }
        zzdt.zzd("ExoPlayerImplInternal", "Playback error", zzc);
        ca(false, false);
        this.i = this.i.w(zzc);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x011d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void bi(boolean z, boolean z2, boolean z3, boolean z4) {
        zzln[] zzlnVarArr;
        long j;
        long j2;
        long j3;
        zzbv zzbvVar;
        zzbv zzbvVar2;
        zzur zzurVar;
        this.ah.zzf(2);
        this.f3980d = null;
        boolean z5 = true;
        bf(false, true);
        tm tmVar = this.k;
        tmVar.f20053f = false;
        tmVar.f20051d.zze();
        this.f3983g = 1000000000000L;
        int i = 0;
        while (true) {
            zzlnVarArr = this.ac;
            int length = zzlnVarArr.length;
            if (i >= 2) {
                break;
            }
            try {
                bk(i);
            } catch (zzig | RuntimeException e2) {
                zzdt.zzd("ExoPlayerImplInternal", "Disable failed.", e2);
            }
            i++;
        }
        if (z) {
            for (int i2 = 0; i2 < 2; i2++) {
                zzln zzlnVar = zzlnVarArr[i2];
                if (this.ai.remove(zzlnVar)) {
                    try {
                        zzlnVar.zzI();
                    } catch (RuntimeException e3) {
                        zzdt.zzd("ExoPlayerImplInternal", "Reset failed.", e3);
                    }
                }
            }
        }
        this.s = 0;
        gzx gzxVar = this.i;
        zzur zzurVar2 = gzxVar.o;
        long j4 = gzxVar.t;
        if (!this.i.o.zzb()) {
            gzx gzxVar2 = this.i;
            zzbt zzbtVar = this.as;
            zzur zzurVar3 = gzxVar2.o;
            zzbv zzbvVar3 = gzxVar2.i;
            if (!zzbvVar3.zzo() && !zzbvVar3.zzn(zzurVar3.zza, zzbtVar).zzf) {
                j = this.i.t;
                if (z2) {
                    this.l = null;
                    Pair br = br(this.i.i);
                    zzurVar2 = (zzur) br.first;
                    j4 = ((Long) br.second).longValue();
                    j = -9223372036854775807L;
                    if (!zzurVar2.equals(this.i.o)) {
                        j2 = j4;
                        j3 = -9223372036854775807L;
                        this.f3977ab.t();
                        this.v = false;
                        zzbvVar = this.i.i;
                        if (z3 || !(zzbvVar instanceof aqw)) {
                            zzbvVar2 = zzbvVar;
                        } else {
                            aqw aqwVar = (aqw) zzbvVar;
                            zzwj zzwjVar = this.w.f16660d;
                            zzbv[] zzbvVarArr = aqwVar.r;
                            zzbv[] zzbvVarArr2 = new zzbv[zzbvVarArr.length];
                            for (int i3 = 0; i3 < zzbvVarArr.length; i3++) {
                                zzbvVarArr2[i3] = new dsw(zzbvVarArr[i3]);
                            }
                            zzbvVar2 = new aqw(zzbvVarArr2, aqwVar.l, zzwjVar);
                            if (zzurVar2.zzb != -1) {
                                zzbvVar2.zzn(zzurVar2.zza, this.as);
                                zzbt zzbtVar2 = this.as;
                                zzbu zzbuVar = this.r;
                                zzbvVar2.zze(zzbtVar2.zzc, zzbuVar, 0L);
                                if (zzbuVar.zzb()) {
                                    zzurVar = new zzur(zzurVar2.zza, zzurVar2.zzd);
                                    gzx gzxVar3 = this.i;
                                    int i4 = gzxVar3.h;
                                    zzig zzigVar = z4 ? null : gzxVar3.j;
                                    zzwr zzwrVar = !z5 ? zzwr.zza : gzxVar3.f19074b;
                                    zzyk zzykVar = !z5 ? this.at : gzxVar3.n;
                                    List zzn = !z5 ? zzfzo.zzn() : gzxVar3.p;
                                    gzx gzxVar4 = this.i;
                                    this.i = new gzx(zzbvVar2, zzurVar, j3, j2, i4, zzigVar, false, zzwrVar, zzykVar, zzn, zzurVar, gzxVar4.f19079g, gzxVar4.m, gzxVar4.f19077e, gzxVar4.f19076d, j2, 0L, j2, 0L);
                                    if (z3) {
                                        return;
                                    }
                                    this.f3977ab.af();
                                    feh fehVar = this.w;
                                    HashMap hashMap = fehVar.f16663g;
                                    for (gdd gddVar : hashMap.values()) {
                                        try {
                                            gddVar.f17919a.zzp(gddVar.f17920b);
                                        } catch (RuntimeException e4) {
                                            zzdt.zzd("MediaSourceList", "Failed to release child source.", e4);
                                        }
                                        zzut zzutVar = gddVar.f17919a;
                                        ejq ejqVar = gddVar.f17921c;
                                        zzutVar.zzs(ejqVar);
                                        gddVar.f17919a.zzr(ejqVar);
                                    }
                                    hashMap.clear();
                                    fehVar.l.clear();
                                    fehVar.j = false;
                                    return;
                                }
                            }
                        }
                        zzurVar = zzurVar2;
                        gzx gzxVar32 = this.i;
                        int i42 = gzxVar32.h;
                        zzig zzigVar2 = z4 ? null : gzxVar32.j;
                        zzwr zzwrVar2 = !z5 ? zzwr.zza : gzxVar32.f19074b;
                        zzyk zzykVar2 = !z5 ? this.at : gzxVar32.n;
                        List zzn2 = !z5 ? zzfzo.zzn() : gzxVar32.p;
                        gzx gzxVar42 = this.i;
                        this.i = new gzx(zzbvVar2, zzurVar, j3, j2, i42, zzigVar2, false, zzwrVar2, zzykVar2, zzn2, zzurVar, gzxVar42.f19079g, gzxVar42.m, gzxVar42.f19077e, gzxVar42.f19076d, j2, 0L, j2, 0L);
                        if (z3) {
                        }
                    }
                }
                j2 = j4;
                j3 = j;
                z5 = false;
                this.f3977ab.t();
                this.v = false;
                zzbvVar = this.i.i;
                if (z3) {
                }
                zzbvVar2 = zzbvVar;
                zzurVar = zzurVar2;
                gzx gzxVar322 = this.i;
                int i422 = gzxVar322.h;
                zzig zzigVar22 = z4 ? null : gzxVar322.j;
                zzwr zzwrVar22 = !z5 ? zzwr.zza : gzxVar322.f19074b;
                zzyk zzykVar22 = !z5 ? this.at : gzxVar322.n;
                List zzn22 = !z5 ? zzfzo.zzn() : gzxVar322.p;
                gzx gzxVar422 = this.i;
                this.i = new gzx(zzbvVar2, zzurVar, j3, j2, i422, zzigVar22, false, zzwrVar22, zzykVar22, zzn22, zzurVar, gzxVar422.f19079g, gzxVar422.m, gzxVar422.f19077e, gzxVar422.f19076d, j2, 0L, j2, 0L);
                if (z3) {
                }
            }
        }
        j = this.i.r;
        if (z2) {
        }
        j2 = j4;
        j3 = j;
        z5 = false;
        this.f3977ab.t();
        this.v = false;
        zzbvVar = this.i.i;
        if (z3) {
        }
        zzbvVar2 = zzbvVar;
        zzurVar = zzurVar2;
        gzx gzxVar3222 = this.i;
        int i4222 = gzxVar3222.h;
        zzig zzigVar222 = z4 ? null : gzxVar3222.j;
        zzwr zzwrVar222 = !z5 ? zzwr.zza : gzxVar3222.f19074b;
        zzyk zzykVar222 = !z5 ? this.at : gzxVar3222.n;
        List zzn222 = !z5 ? zzfzo.zzn() : gzxVar3222.p;
        gzx gzxVar4222 = this.i;
        this.i = new gzx(zzbvVar2, zzurVar, j3, j2, i4222, zzigVar222, false, zzwrVar222, zzykVar222, zzn222, zzurVar, gzxVar4222.f19079g, gzxVar4222.m, gzxVar4222.f19077e, gzxVar4222.f19076d, j2, 0L, j2, 0L);
        if (z3) {
        }
    }

    public final void bj(boolean z) {
        dee deeVar = this.f3977ab.m;
        zzur zzurVar = deeVar == null ? this.i.o : deeVar.i.f10620d;
        boolean equals = this.i.f19075c.equals(zzurVar);
        if (!equals) {
            this.i = this.i.y(zzurVar);
        }
        gzx gzxVar = this.i;
        gzxVar.l = deeVar == null ? gzxVar.t : deeVar.w();
        gzx gzxVar2 = this.i;
        long j = gzxVar2.l;
        dee deeVar2 = this.f3977ab.m;
        gzxVar2.q = deeVar2 != null ? Math.max(0L, j - (this.f3983g - deeVar2.f14044c)) : 0L;
        if ((!equals || z) && deeVar != null && deeVar.f14046e) {
            zzur zzurVar2 = deeVar.i.f10620d;
            zzwr zzwrVar = deeVar.j;
            zzyk zzykVar = deeVar.f14045d;
            this.h.zzf(this.u, this.i.i, zzurVar2, this.ac, zzwrVar, zzykVar.zzc);
        }
    }

    public final void bk(int i) {
        zzln zzlnVar = this.ac[i];
        if (aw(zzlnVar)) {
            bx(i, false);
            tm tmVar = this.k;
            if (zzlnVar == tmVar.f20048a) {
                tmVar.f20049b = null;
                tmVar.f20048a = null;
                tmVar.f20050c = true;
            }
            if (zzlnVar.zzcV() == 2) {
                zzlnVar.zzP();
            }
            zzlnVar.zzr();
            this.s--;
        }
    }

    public final void bl() {
        tm tmVar = this.k;
        tmVar.f20053f = false;
        tmVar.f20051d.zze();
        zzln[] zzlnVarArr = this.ac;
        int length = zzlnVarArr.length;
        for (int i = 0; i < 2; i++) {
            zzln zzlnVar = zzlnVarArr[i];
            if (aw(zzlnVar) && zzlnVar.zzcV() == 2) {
                zzlnVar.zzP();
            }
        }
    }

    public final boolean bm() {
        gzx gzxVar = this.i;
        return gzxVar.f19079g && gzxVar.f19077e == 0;
    }

    public final boolean bn() {
        dee deeVar = this.f3977ab.f15171a;
        long j = deeVar.i.f10619c;
        if (deeVar.f14046e) {
            return j == -9223372036854775807L || this.i.t < j || !bm();
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.gms.internal.ads.zzup, java.lang.Object] */
    public final void bo() {
        dee deeVar = this.f3977ab.m;
        boolean z = this.v || (deeVar != null && deeVar.h.zzp());
        gzx gzxVar = this.i;
        if (z != gzxVar.s) {
            this.i = new gzx(gzxVar.i, gzxVar.o, gzxVar.r, gzxVar.f19078f, gzxVar.h, gzxVar.j, z, gzxVar.f19074b, gzxVar.n, gzxVar.p, gzxVar.f19075c, gzxVar.f19079g, gzxVar.m, gzxVar.f19077e, gzxVar.f19076d, gzxVar.l, gzxVar.q, gzxVar.t, gzxVar.k);
        }
    }

    /* JADX WARN: Type inference failed for: r2v34, types: [com.google.android.gms.internal.ads.zzup, java.lang.Object] */
    public final void bp() {
        dee deeVar = this.f3977ab.f15171a;
        if (deeVar == null) {
            return;
        }
        long zzd = deeVar.f14046e ? deeVar.h.zzd() : -9223372036854775807L;
        if (zzd != -9223372036854775807L) {
            if (!deeVar.x()) {
                this.f3977ab.ao(deeVar);
                bj(false);
                ba();
            }
            bg(zzd);
            if (zzd != this.i.t) {
                gzx gzxVar = this.i;
                long j = zzd;
                this.i = bd(gzxVar.o, j, gzxVar.r, j, true, 5);
            }
        } else {
            tm tmVar = this.k;
            boolean z = deeVar != this.f3977ab.k;
            zzlv zzlvVar = tmVar.f20051d;
            zzln zzlnVar = tmVar.f20048a;
            if (zzlnVar == null || zzlnVar.zzW() || ((z && tmVar.f20048a.zzcV() != 2) || (!tmVar.f20048a.zzX() && (z || tmVar.f20048a.zzQ())))) {
                tmVar.f20050c = true;
                if (tmVar.f20053f) {
                    zzlvVar.zzd();
                }
            } else {
                zzkp zzkpVar = tmVar.f20049b;
                zzkpVar.getClass();
                long zza = zzkpVar.zza();
                if (tmVar.f20050c) {
                    if (zza < zzlvVar.zza()) {
                        zzlvVar.zze();
                    } else {
                        tmVar.f20050c = false;
                        if (tmVar.f20053f) {
                            zzlvVar.zzd();
                        }
                    }
                }
                zzlvVar.zzb(zza);
                zzbj zzc = zzkpVar.zzc();
                if (!zzc.equals(zzlvVar.zzc())) {
                    zzlvVar.zzg(zzc);
                    tmVar.f20052e.zza(zzc);
                }
            }
            long zza2 = tmVar.zza();
            this.f3983g = zza2;
            long j2 = zza2 - deeVar.f14044c;
            long j3 = this.i.t;
            if (!this.f3981e.isEmpty() && !this.i.o.zzb()) {
                if (this.o) {
                    this.o = false;
                }
                gzx gzxVar2 = this.i;
                gzxVar2.i.zza(gzxVar2.o.zza);
                int min = Math.min(this.ao, this.f3981e.size());
                if (min > 0 && this.f3981e.get(min - 1) != null) {
                    throw new ClassCastException();
                }
                if (min < this.f3981e.size() && this.f3981e.get(min) != null) {
                    throw new ClassCastException();
                }
                this.ao = min;
            }
            if (this.k.zzj()) {
                boolean z2 = !this.ae.zzc;
                gzx gzxVar3 = this.i;
                this.i = bd(gzxVar3.o, j2, gzxVar3.r, j2, z2, 6);
            } else {
                gzx gzxVar4 = this.i;
                gzxVar4.t = j2;
                gzxVar4.k = SystemClock.elapsedRealtime();
            }
        }
        this.i.l = this.f3977ab.m.w();
        gzx gzxVar5 = this.i;
        long j4 = gzxVar5.l;
        dee deeVar2 = this.f3977ab.m;
        gzxVar5.q = deeVar2 == null ? 0L : Math.max(0L, j4 - (this.f3983g - deeVar2.f14044c));
        gzx gzxVar6 = this.i;
        if (gzxVar6.f19079g && gzxVar6.h == 3 && cd(gzxVar6.i, gzxVar6.o)) {
            gzx gzxVar7 = this.i;
            if (gzxVar7.f19076d.zzb == 1.0f) {
                zzia zziaVar = this.ap;
                long bc = bc(gzxVar7.i, gzxVar7.o.zza, gzxVar7.t);
                long j5 = this.i.l;
                dee deeVar3 = this.f3977ab.m;
                float zza3 = zziaVar.zza(bc, deeVar3 != null ? Math.max(0L, j5 - (this.f3983g - deeVar3.f14044c)) : 0L);
                if (this.k.zzc().zzb != zza3) {
                    zzbj zzbjVar = new zzbj(zza3, this.i.f19076d.zzc);
                    this.ah.zzf(16);
                    this.k.zzg(zzbjVar);
                    cf(this.i.f19076d, this.k.zzc().zzb, false, false);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x03bd  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x03cf A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x03ee  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x03f3  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x03b3  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0371  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0377  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0332  */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.google.android.gms.internal.ads.zzln[]] */
    /* JADX WARN: Type inference failed for: r15v21 */
    /* JADX WARN: Type inference failed for: r15v22 */
    /* JADX WARN: Type inference failed for: r15v24 */
    /* JADX WARN: Type inference failed for: r15v26 */
    /* JADX WARN: Type inference failed for: r15v31 */
    /* JADX WARN: Type inference failed for: r15v35 */
    /* JADX WARN: Type inference failed for: r15v38 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v32, types: [com.google.android.gms.internal.ads.zzln] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void bq(zzbv zzbvVar, boolean z) {
        long j;
        boolean z2;
        zzur zzurVar;
        zzbt zzbtVar;
        long j2;
        long j3;
        int i;
        int i2;
        Object obj;
        boolean z3;
        boolean z4;
        boolean z5;
        int i3;
        boolean z6;
        zzbv zzbvVar2;
        long j4;
        zzbt zzbtVar2;
        Object obj2;
        ?? r7;
        zzur v;
        boolean z7;
        long j5;
        boolean z8;
        boolean z9;
        long j6;
        boolean z10;
        int i4;
        int i5;
        boolean z11;
        boolean z12;
        boolean z13;
        char c2;
        zzbv zzbvVar3;
        long j7;
        cuu cuuVar;
        int i6;
        zzbv zzbvVar4;
        zzur zzurVar2;
        Object obj3;
        long j8;
        int i7;
        ?? r15;
        cuu cuuVar2;
        zzbv zzbvVar5;
        eac eacVar;
        long j9;
        long j10;
        zzbv zzbvVar6;
        cuu cuuVar3;
        Object obj4;
        long j11;
        zzbv zzbvVar7;
        zzur zzurVar3;
        long j12;
        int i8;
        gzx gzxVar = this.i;
        cuu cuuVar4 = this.l;
        int i9 = this.au;
        boolean z14 = this.aq;
        if (zzbvVar.zzo()) {
            zzbvVar2 = zzbvVar;
            v = gzx.f19073a;
            z10 = false;
            z9 = false;
            j6 = 0;
            j5 = -9223372036854775807L;
            z8 = true;
            j = -9223372036854775807L;
        } else {
            zzbt zzbtVar3 = this.as;
            zzur zzurVar4 = gzxVar.o;
            Object obj5 = zzurVar4.zza;
            zzbv zzbvVar8 = gzxVar.i;
            if (zzbvVar8.zzo()) {
                j = -9223372036854775807L;
            } else {
                j = -9223372036854775807L;
                if (!zzbvVar8.zzn(zzurVar4.zza, zzbtVar3).zzf) {
                    z2 = false;
                    long j13 = (!gzxVar.o.zzb() || z2) ? gzxVar.r : gzxVar.t;
                    Object obj6 = obj5;
                    zzbu zzbuVar = this.r;
                    if (cuuVar4 == null) {
                        zzurVar = zzurVar4;
                        Pair ax = ax(zzbvVar, cuuVar4, i9, z14, zzbuVar, zzbtVar3);
                        if (ax == null) {
                            i5 = zzbvVar.zzg(z14);
                            j3 = j13;
                            z11 = false;
                            z12 = false;
                            z13 = true;
                        } else {
                            if (cuuVar4.f13563c == j) {
                                i5 = zzbvVar.zzn(ax.first, zzbtVar3).zzc;
                                j3 = j13;
                                z11 = false;
                            } else {
                                Object obj7 = ax.first;
                                j3 = ((Long) ax.second).longValue();
                                obj6 = obj7;
                                i5 = -1;
                                z11 = true;
                            }
                            z12 = gzxVar.h == 4;
                            z13 = false;
                        }
                        z3 = z13;
                        j2 = j13;
                        i = i5;
                        zzbtVar = zzbtVar3;
                        z5 = z11;
                        z4 = z12;
                        i2 = -1;
                    } else {
                        zzurVar = zzurVar4;
                        if (gzxVar.i.zzo()) {
                            i = zzbvVar.zzg(z14);
                            zzbtVar = zzbtVar3;
                            j3 = j13;
                            j2 = j3;
                            i2 = -1;
                            z3 = false;
                        } else if (zzbvVar.zza(obj6) == -1) {
                            zzbtVar = zzbtVar3;
                            int av = av(zzbuVar, zzbtVar, i9, z14, obj6, gzxVar.i, zzbvVar);
                            zzbuVar = zzbuVar;
                            obj6 = obj6;
                            if (av == -1) {
                                i3 = zzbvVar.zzg(z14);
                                z6 = true;
                            } else {
                                i3 = av;
                                z6 = false;
                            }
                            i = i3;
                            j2 = j13;
                            i2 = -1;
                            z4 = false;
                            z5 = false;
                            z3 = z6;
                            j3 = j2;
                        } else {
                            zzbtVar = zzbtVar3;
                            if (j13 == j) {
                                i = zzbvVar.zzn(obj6, zzbtVar).zzc;
                                j3 = j13;
                                j2 = j3;
                                i2 = -1;
                            } else if (z2) {
                                gzxVar.i.zzn(zzurVar.zza, zzbtVar);
                                j2 = j13;
                                if (gzxVar.i.zze(zzbtVar.zzc, zzbuVar, 0L).zzn == gzxVar.i.zza(zzurVar.zza)) {
                                    Pair zzl = zzbvVar.zzl(zzbuVar, zzbtVar, zzbvVar.zzn(obj6, zzbtVar).zzc, j2);
                                    zzbuVar = zzbuVar;
                                    zzbtVar = zzbtVar;
                                    obj = zzl.first;
                                    j3 = ((Long) zzl.second).longValue();
                                } else {
                                    obj = obj6;
                                    j3 = j2;
                                }
                                obj6 = obj;
                                i = -1;
                                i2 = -1;
                                z3 = false;
                                z4 = false;
                                z5 = true;
                            } else {
                                j2 = j13;
                                j3 = j2;
                                i = -1;
                                i2 = -1;
                            }
                            z3 = false;
                        }
                        z4 = false;
                        z5 = false;
                    }
                    if (i == i2) {
                        zzbtVar2 = zzbtVar;
                        int i10 = i;
                        zzbvVar2 = zzbvVar;
                        Pair zzl2 = zzbvVar2.zzl(zzbuVar, zzbtVar2, i10, -9223372036854775807L);
                        Object obj8 = zzl2.first;
                        j4 = ((Long) zzl2.second).longValue();
                        obj2 = obj8;
                        r7 = j;
                    } else {
                        zzbvVar2 = zzbvVar;
                        j4 = j3;
                        zzbtVar2 = zzbtVar;
                        obj2 = obj6;
                        r7 = j4;
                    }
                    v = this.f3977ab.v(zzbvVar2, obj2, j4);
                    int i11 = v.zze;
                    z7 = (zzurVar.zza.equals(obj2) || zzurVar.zzb() || v.zzb() || !(i11 != -1 || ((i4 = zzurVar.zze) != -1 && i11 >= i4))) ? false : true;
                    zzbt zzn = zzbvVar2.zzn(obj2, zzbtVar2);
                    if (!z2 && j2 == (r7 == true ? 1L : 0L) && zzurVar.zza.equals(v.zza)) {
                        if (zzurVar.zzb()) {
                            zzn.zzk(zzurVar.zzb);
                        }
                        if (v.zzb()) {
                            zzn.zzk(v.zzb);
                        }
                    }
                    if (true == z7) {
                        v = zzurVar;
                    }
                    if (v.zzb()) {
                        if (v.equals(zzurVar)) {
                            j4 = gzxVar.t;
                        } else {
                            zzbvVar2.zzn(v.zza, zzbtVar2);
                            if (v.zzc == zzbtVar2.zze(v.zzb)) {
                                zzbtVar2.zzh();
                            }
                            j4 = 0;
                        }
                    }
                    j5 = r7 == true ? 1 : 0;
                    z8 = z3;
                    z9 = z5;
                    j6 = j4;
                    z10 = z4;
                }
            }
            z2 = true;
            if (gzxVar.o.zzb()) {
            }
            Object obj62 = obj5;
            zzbu zzbuVar2 = this.r;
            if (cuuVar4 == null) {
            }
            if (i == i2) {
            }
            v = this.f3977ab.v(zzbvVar2, obj2, j4);
            int i112 = v.zze;
            if (zzurVar.zza.equals(obj2)) {
            }
            zzbt zzn2 = zzbvVar2.zzn(obj2, zzbtVar2);
            if (!z2) {
                if (zzurVar.zzb()) {
                }
                if (v.zzb()) {
                }
            }
            if (true == z7) {
            }
            if (v.zzb()) {
            }
            j5 = r7 == true ? 1 : 0;
            z8 = z3;
            z9 = z5;
            j6 = j4;
            z10 = z4;
        }
        boolean z15 = (this.i.o.equals(v) && j6 == this.i.t) ? false : true;
        if (z8) {
            try {
                if (this.i.h != 1) {
                    c2 = 4;
                    try {
                        cg(4);
                    } catch (Throwable th) {
                        th = th;
                        j7 = j5;
                        i6 = 2;
                        cuuVar = null;
                        zzbvVar4 = zzbvVar2;
                        zzurVar2 = v;
                        gzx gzxVar2 = this.i;
                        zzbv zzbvVar9 = gzxVar2.i;
                        zzur zzurVar5 = gzxVar2.o;
                        zzur zzurVar6 = zzurVar2;
                        ce(zzbvVar4, zzurVar6, zzbvVar9, zzurVar5, true == z9 ? j : j6, false);
                        if (!z15) {
                        }
                        gzx gzxVar3 = this.i;
                        obj3 = gzxVar3.o.zza;
                        zzbv zzbvVar10 = gzxVar3.i;
                        if (z15) {
                        }
                        long j14 = this.i.f19078f;
                        if (zzbvVar4.zza(obj3) != -1) {
                        }
                        this.i = bd(zzurVar6, j8, j7, j14, r9, i7);
                        bu();
                        be(zzbvVar4, this.i.i);
                        this.i = this.i.z(zzbvVar4);
                        if (!zzbvVar4.zzo()) {
                        }
                        bj(false);
                        this.ah.zzi(i6);
                        throw th;
                    }
                } else {
                    c2 = 4;
                }
                zzbvVar3 = null;
                bi(false, false, false, true);
                r15 = c2;
            } catch (Throwable th2) {
                th = th2;
                j7 = j5;
                i6 = 2;
                cuuVar = null;
                zzbvVar4 = zzbvVar2;
                zzurVar2 = v;
                gzx gzxVar22 = this.i;
                zzbv zzbvVar92 = gzxVar22.i;
                zzur zzurVar52 = gzxVar22.o;
                zzur zzurVar62 = zzurVar2;
                ce(zzbvVar4, zzurVar62, zzbvVar92, zzurVar52, true == z9 ? j : j6, false);
                if (!z15) {
                }
                gzx gzxVar32 = this.i;
                obj3 = gzxVar32.o.zza;
                zzbv zzbvVar102 = gzxVar32.i;
                if (z15) {
                }
                long j142 = this.i.f19078f;
                if (zzbvVar4.zza(obj3) != -1) {
                }
                this.i = bd(zzurVar62, j8, j7, j142, r9, i7);
                bu();
                be(zzbvVar4, this.i.i);
                this.i = this.i.z(zzbvVar4);
                if (!zzbvVar4.zzo()) {
                }
                bj(false);
                this.ah.zzi(i6);
                throw th;
            }
        } else {
            r15 = 4;
            zzbvVar3 = r7;
        }
        ?? r0 = this.ac;
        int length = r0.length;
        int i12 = 0;
        zzbv zzbvVar11 = zzbvVar3;
        while (i12 < 2) {
            ?? r72 = r0[i12];
            r72.zzN(zzbvVar2);
            i12++;
            zzbvVar11 = r72;
        }
        try {
            if (z15) {
                zzbvVar11 = zzbvVar2;
                cuuVar3 = null;
                cuuVar3 = null;
                cuuVar2 = null;
                r15 = 0;
                if (!zzbvVar11.zzo()) {
                    for (dee deeVar = this.f3977ab.f15171a; deeVar != null; deeVar = deeVar.f14047f) {
                        if (deeVar.i.f10620d.equals(v)) {
                            deeVar.i = this.f3977ab.ag(zzbvVar11, deeVar.i);
                            deeVar.v();
                        }
                    }
                    try {
                        eac eacVar2 = this.f3977ab;
                        zzurVar2 = v;
                        long j15 = j6;
                        try {
                            j6 = cc(zzurVar2, j15, eacVar2.f15171a != eacVar2.k, z10);
                            gzx gzxVar4 = this.i;
                            zzur zzurVar7 = zzurVar2;
                            ce(zzbvVar, zzurVar7, gzxVar4.i, gzxVar4.o, true == z9 ? j : j6, false);
                            if (z15 && j5 == this.i.r) {
                                zzbvVar7 = zzbvVar;
                            } else {
                                gzx gzxVar5 = this.i;
                                obj4 = gzxVar5.o.zza;
                                zzbv zzbvVar12 = gzxVar5.i;
                                boolean z16 = (z15 || !z || zzbvVar12.zzo() || zzbvVar12.zzn(obj4, this.as).zzf) ? false : true;
                                long j16 = this.i.f19078f;
                                if (zzbvVar.zza(obj4) != -1) {
                                    j11 = j5;
                                    zzbvVar7 = zzbvVar;
                                    zzurVar3 = zzurVar7;
                                    j12 = j6;
                                    i8 = 4;
                                } else {
                                    j11 = j5;
                                    zzbvVar7 = zzbvVar;
                                    zzurVar3 = zzurVar7;
                                    j12 = j6;
                                    i8 = 3;
                                }
                                this.i = bd(zzurVar3, j12, j11, j16, z16, i8);
                            }
                            bu();
                            be(zzbvVar7, this.i.i);
                            this.i = this.i.z(zzbvVar7);
                            if (!zzbvVar7.zzo()) {
                                this.l = cuuVar3;
                            }
                            bj(false);
                            this.ah.zzi(2);
                        } catch (Throwable th3) {
                            th = th3;
                            j6 = j15;
                            zzbvVar5 = zzbvVar11;
                            j7 = j5;
                            i6 = 2;
                            zzbvVar4 = zzbvVar5;
                            cuuVar = cuuVar2;
                            gzx gzxVar222 = this.i;
                            zzbv zzbvVar922 = gzxVar222.i;
                            zzur zzurVar522 = gzxVar222.o;
                            zzur zzurVar622 = zzurVar2;
                            ce(zzbvVar4, zzurVar622, zzbvVar922, zzurVar522, true == z9 ? j : j6, false);
                            if (!z15 || j7 != this.i.r) {
                                gzx gzxVar322 = this.i;
                                obj3 = gzxVar322.o.zza;
                                zzbv zzbvVar1022 = gzxVar322.i;
                                boolean z17 = (z15 || !z || zzbvVar1022.zzo() || zzbvVar1022.zzn(obj3, this.as).zzf) ? false : true;
                                long j1422 = this.i.f19078f;
                                if (zzbvVar4.zza(obj3) != -1) {
                                    j8 = j6;
                                    i7 = 4;
                                } else {
                                    j8 = j6;
                                    i7 = 3;
                                }
                                this.i = bd(zzurVar622, j8, j7, j1422, z17, i7);
                            }
                            bu();
                            be(zzbvVar4, this.i.i);
                            this.i = this.i.z(zzbvVar4);
                            if (!zzbvVar4.zzo()) {
                                this.l = cuuVar;
                            }
                            bj(false);
                            this.ah.zzi(i6);
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        zzurVar2 = v;
                        zzbvVar5 = zzbvVar11;
                        cuuVar2 = r15;
                        j7 = j5;
                        i6 = 2;
                        zzbvVar4 = zzbvVar5;
                        cuuVar = cuuVar2;
                        gzx gzxVar2222 = this.i;
                        zzbv zzbvVar9222 = gzxVar2222.i;
                        zzur zzurVar5222 = gzxVar2222.o;
                        zzur zzurVar6222 = zzurVar2;
                        ce(zzbvVar4, zzurVar6222, zzbvVar9222, zzurVar5222, true == z9 ? j : j6, false);
                        if (!z15) {
                        }
                        gzx gzxVar3222 = this.i;
                        obj3 = gzxVar3222.o.zza;
                        zzbv zzbvVar10222 = gzxVar3222.i;
                        if (z15) {
                        }
                        long j14222 = this.i.f19078f;
                        if (zzbvVar4.zza(obj3) != -1) {
                        }
                        this.i = bd(zzurVar6222, j8, j7, j14222, z17, i7);
                        bu();
                        be(zzbvVar4, this.i.i);
                        this.i = this.i.z(zzbvVar4);
                        if (!zzbvVar4.zzo()) {
                        }
                        bj(false);
                        this.ah.zzi(i6);
                        throw th;
                    }
                }
            } else {
                try {
                    eacVar = this.f3977ab;
                    long j17 = this.f3983g;
                    dee deeVar2 = eacVar.k;
                    if (deeVar2 == null) {
                        zzbvVar6 = zzbvVar;
                        j10 = j17;
                        j9 = 0;
                    } else {
                        long j18 = deeVar2.f14044c;
                        if (deeVar2.f14046e) {
                            long j19 = j18;
                            int i13 = 0;
                            while (true) {
                                try {
                                    zzln[] zzlnVarArr = this.ac;
                                    int length2 = zzlnVarArr.length;
                                    if (i13 >= 2) {
                                        zzbvVar6 = zzbvVar;
                                        j9 = j19;
                                        j10 = j17;
                                        break;
                                    }
                                    if (aw(zzlnVarArr[i13]) && this.ac[i13].zzp() == deeVar2.n[i13]) {
                                        long zzcX = this.ac[i13].zzcX();
                                        if (zzcX == Long.MIN_VALUE) {
                                            zzbvVar6 = zzbvVar;
                                            j10 = j17;
                                            j9 = Long.MIN_VALUE;
                                            break;
                                        }
                                        j19 = Math.max(zzcX, j19);
                                    }
                                    i13++;
                                } catch (Throwable th5) {
                                    th = th5;
                                    zzurVar2 = v;
                                    j7 = j5;
                                    i6 = 2;
                                    cuuVar = null;
                                    zzbvVar4 = zzbvVar;
                                    gzx gzxVar22222 = this.i;
                                    zzbv zzbvVar92222 = gzxVar22222.i;
                                    zzur zzurVar52222 = gzxVar22222.o;
                                    zzur zzurVar62222 = zzurVar2;
                                    ce(zzbvVar4, zzurVar62222, zzbvVar92222, zzurVar52222, true == z9 ? j : j6, false);
                                    if (!z15) {
                                    }
                                    gzx gzxVar32222 = this.i;
                                    obj3 = gzxVar32222.o.zza;
                                    zzbv zzbvVar102222 = gzxVar32222.i;
                                    if (z15) {
                                    }
                                    long j142222 = this.i.f19078f;
                                    if (zzbvVar4.zza(obj3) != -1) {
                                    }
                                    this.i = bd(zzurVar62222, j8, j7, j142222, z17, i7);
                                    bu();
                                    be(zzbvVar4, this.i.i);
                                    this.i = this.i.z(zzbvVar4);
                                    if (!zzbvVar4.zzo()) {
                                    }
                                    bj(false);
                                    this.ah.zzi(i6);
                                    throw th;
                                }
                            }
                        } else {
                            j9 = j18;
                            j10 = j17;
                            zzbvVar6 = zzbvVar;
                        }
                    }
                    r15 = 0;
                    cuuVar3 = null;
                    cuuVar3 = null;
                } catch (Throwable th6) {
                    th = th6;
                    zzbvVar11 = zzbvVar;
                    r15 = 0;
                }
                try {
                    if (!eacVar.ak(zzbvVar6, j10, j9)) {
                        bt(false);
                    }
                } catch (Throwable th7) {
                    th = th7;
                    zzbvVar11 = zzbvVar6;
                    zzurVar2 = v;
                    zzbvVar5 = zzbvVar11;
                    cuuVar2 = r15;
                    j7 = j5;
                    i6 = 2;
                    zzbvVar4 = zzbvVar5;
                    cuuVar = cuuVar2;
                    gzx gzxVar222222 = this.i;
                    zzbv zzbvVar922222 = gzxVar222222.i;
                    zzur zzurVar522222 = gzxVar222222.o;
                    zzur zzurVar622222 = zzurVar2;
                    ce(zzbvVar4, zzurVar622222, zzbvVar922222, zzurVar522222, true == z9 ? j : j6, false);
                    if (!z15) {
                    }
                    gzx gzxVar322222 = this.i;
                    obj3 = gzxVar322222.o.zza;
                    zzbv zzbvVar1022222 = gzxVar322222.i;
                    if (z15) {
                    }
                    long j1422222 = this.i.f19078f;
                    if (zzbvVar4.zza(obj3) != -1) {
                    }
                    this.i = bd(zzurVar622222, j8, j7, j1422222, z17, i7);
                    bu();
                    be(zzbvVar4, this.i.i);
                    this.i = this.i.z(zzbvVar4);
                    if (!zzbvVar4.zzo()) {
                    }
                    bj(false);
                    this.ah.zzi(i6);
                    throw th;
                }
            }
            zzurVar2 = v;
            gzx gzxVar42 = this.i;
            zzur zzurVar72 = zzurVar2;
            ce(zzbvVar, zzurVar72, gzxVar42.i, gzxVar42.o, true == z9 ? j : j6, false);
            if (z15) {
            }
            gzx gzxVar52 = this.i;
            obj4 = gzxVar52.o.zza;
            zzbv zzbvVar122 = gzxVar52.i;
            if (z15) {
            }
            long j162 = this.i.f19078f;
            if (zzbvVar.zza(obj4) != -1) {
            }
            this.i = bd(zzurVar3, j12, j11, j162, z16, i8);
            bu();
            be(zzbvVar7, this.i.i);
            this.i = this.i.z(zzbvVar7);
            if (!zzbvVar7.zzo()) {
            }
            bj(false);
            this.ah.zzi(2);
        } catch (Throwable th8) {
            th = th8;
        }
    }

    public final Pair br(zzbv zzbvVar) {
        long j = 0;
        if (zzbvVar.zzo()) {
            return Pair.create(gzx.f19073a, 0L);
        }
        int zzg = zzbvVar.zzg(this.aq);
        Pair zzl = zzbvVar.zzl(this.r, this.as, zzg, -9223372036854775807L);
        zzur v = this.f3977ab.v(zzbvVar, zzl.first, 0L);
        long longValue = ((Long) zzl.second).longValue();
        if (v.zzb()) {
            Object obj = v.zza;
            zzbt zzbtVar = this.as;
            zzbvVar.zzn(obj, zzbtVar);
            if (v.zzc == zzbtVar.zze(v.zzb)) {
                zzbtVar.zzh();
            }
        } else {
            j = longValue;
        }
        return Pair.create(v, Long.valueOf(j));
    }

    public final void bs() {
        dee deeVar = this.f3977ab.f15171a;
        if (deeVar == null) {
            return;
        }
        zzyk zzykVar = deeVar.f14045d;
        int i = 0;
        while (true) {
            zzln[] zzlnVarArr = this.ac;
            int length = zzlnVarArr.length;
            if (i >= 2) {
                return;
            }
            if (zzykVar.zzb(i) && zzlnVarArr[i].zzcV() == 1) {
                zzlnVarArr[i].zzO();
            }
            i++;
        }
    }

    public final void bt(boolean z) {
        zzur zzurVar = this.f3977ab.f15171a.i.f10620d;
        long cc = cc(zzurVar, this.i.t, true, false);
        if (cc != this.i.t) {
            gzx gzxVar = this.i;
            this.i = bd(zzurVar, cc, gzxVar.r, gzxVar.f19078f, z, 5);
        }
    }

    public final void bu() {
        dee deeVar = this.f3977ab.f15171a;
        boolean z = false;
        if (deeVar != null && deeVar.i.h && this.ag) {
            z = true;
        }
        this.p = z;
    }

    public final void bv() {
        this.ae.zzb(this.i);
        zzke zzkeVar = this.ae;
        if (zzkeVar.f8780a) {
            ij ijVar = this.aa.zza;
            ijVar.getClass();
            ijVar.f19427d.zzh(new zzja(ijVar, zzkeVar));
            this.ae = new zzke(this.i);
        }
    }

    public final void bw() {
        int length = this.ac.length;
        cb(new boolean[2], this.f3977ab.k.y());
    }

    public final void bx(final int i, final boolean z) {
        boolean[] zArr = this.x;
        if (zArr[i] != z) {
            zArr[i] = z;
            this.ak.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzjx
                @Override // java.lang.Runnable
                public final void run() {
                    s sVar = s.this;
                    int i2 = i;
                    boolean z2 = z;
                    sVar.j.zzI(i2, sVar.ac[i2].zzb(), z2);
                }
            });
        }
    }

    public final void by(int i, int i2, boolean z, boolean z2) {
        this.ae.zza(z2 ? 1 : 0);
        this.i = this.i.ab(i2, i, z);
        bf(false, false);
        for (dee deeVar = this.f3977ab.f15171a; deeVar != null; deeVar = deeVar.f14047f) {
            for (zzyd zzydVar : deeVar.f14045d.zzc) {
            }
        }
        if (!bm()) {
            bl();
            bp();
            return;
        }
        int i3 = this.i.h;
        zzdm zzdmVar = this.ah;
        if (i3 != 3) {
            if (i3 == 2) {
                zzdmVar.zzi(2);
            }
        } else {
            tm tmVar = this.k;
            tmVar.f20053f = true;
            tmVar.f20051d.zzd();
            bs();
            zzdmVar.zzi(2);
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.gms.internal.ads.zzup, java.lang.Object] */
    public final boolean bz() {
        dee deeVar = this.f3977ab.m;
        if (deeVar != null) {
            try {
                ?? r2 = deeVar.h;
                if (deeVar.f14046e) {
                    zzwg[] zzwgVarArr = deeVar.n;
                    for (int i = 0; i < 2; i++) {
                        zzwg zzwgVar = zzwgVarArr[i];
                        if (zzwgVar != null) {
                            zzwgVar.zzd();
                        }
                    }
                } else {
                    r2.zzk();
                }
                if ((!deeVar.f14046e ? 0L : r2.zzc()) != Long.MIN_VALUE) {
                    return true;
                }
            } catch (IOException unused) {
            }
        }
        return false;
    }

    public final void ca(boolean z, boolean z2) {
        bi(z || !this.ad, false, true, false);
        this.ae.zza(z2 ? 1 : 0);
        this.h.zze(this.u);
        cg(1);
    }

    public final void cb(boolean[] zArr, long j) {
        zzln[] zzlnVarArr;
        Set set;
        int i;
        zzyk zzykVar;
        zzkp zzkpVar;
        eac eacVar = this.f3977ab;
        dee deeVar = eacVar.k;
        zzyk zzykVar2 = deeVar.f14045d;
        int i2 = 0;
        while (true) {
            zzlnVarArr = this.ac;
            int length = zzlnVarArr.length;
            set = this.ai;
            if (i2 >= 2) {
                break;
            }
            if (!zzykVar2.zzb(i2) && set.remove(zzlnVarArr[i2])) {
                zzlnVarArr[i2].zzI();
            }
            i2++;
        }
        int i3 = 0;
        for (i = 2; i3 < i; i = 2) {
            if (zzykVar2.zzb(i3)) {
                boolean z = zArr[i3];
                zzln zzlnVar = zzlnVarArr[i3];
                if (!aw(zzlnVar)) {
                    dee deeVar2 = eacVar.k;
                    boolean z2 = deeVar2 == eacVar.f15171a;
                    zzyk zzykVar3 = deeVar2.f14045d;
                    zzlr zzlrVar = zzykVar3.zzb[i3];
                    zzyd zzydVar = zzykVar3.zzc[i3];
                    int zzc = zzydVar != null ? zzydVar.zzc() : 0;
                    zzad[] zzadVarArr = new zzad[zzc];
                    for (int i4 = 0; i4 < zzc; i4++) {
                        zzadVarArr[i4] = zzydVar.zzd(i4);
                    }
                    boolean z3 = bm() && this.i.h == 3;
                    boolean z4 = !z && z3;
                    this.s++;
                    set.add(zzlnVar);
                    zzykVar = zzykVar2;
                    zzlnVar.zzs(zzlrVar, zzadVarArr, deeVar2.n[i3], this.f3983g, z4, z2, j, deeVar2.f14044c, deeVar2.i.f10620d);
                    zzlnVar.zzu(11, new emt());
                    tm tmVar = this.k;
                    tmVar.getClass();
                    zzkp zzl = zzlnVar.zzl();
                    if (zzl != null && zzl != (zzkpVar = tmVar.f20049b)) {
                        if (zzkpVar != null) {
                            throw zzig.zzd(new IllegalStateException("Multiple renderer media clocks enabled."), 1000);
                        }
                        tmVar.f20049b = zzl;
                        tmVar.f20048a = zzlnVar;
                        zzl.zzg(tmVar.f20051d.zzc());
                    }
                    if (z3 && z2) {
                        zzlnVar.zzO();
                    }
                    i3++;
                    zzykVar2 = zzykVar;
                }
            }
            zzykVar = zzykVar2;
            i3++;
            zzykVar2 = zzykVar;
        }
        deeVar.o = true;
    }

    /* JADX WARN: Type inference failed for: r2v6, types: [com.google.android.gms.internal.ads.zzup, java.lang.Object] */
    public final long cc(zzur zzurVar, long j, boolean z, boolean z2) {
        long j2;
        dee deeVar;
        bl();
        bf(false, true);
        if (z2 || this.i.h == 3) {
            cg(2);
        }
        eac eacVar = this.f3977ab;
        dee deeVar2 = eacVar.f15171a;
        dee deeVar3 = deeVar2;
        while (deeVar3 != null && !zzurVar.equals(deeVar3.i.f10620d)) {
            deeVar3 = deeVar3.f14047f;
        }
        if (z || deeVar2 != deeVar3 || (deeVar3 != null && j + deeVar3.f14044c < 0)) {
            int i = 0;
            while (true) {
                int length = this.ac.length;
                if (i >= 2) {
                    break;
                }
                bk(i);
                i++;
            }
            if (deeVar3 != null) {
                while (eacVar.f15171a != deeVar3) {
                    eacVar.an();
                }
                eacVar.ao(deeVar3);
                deeVar3.f14044c = 1000000000000L;
                bw();
            }
        }
        if (deeVar3 != null) {
            ?? r2 = deeVar3.h;
            eacVar.ao(deeVar3);
            if (deeVar3.f14046e) {
                dee deeVar4 = deeVar3;
                j2 = j;
                if (deeVar4.f14048g) {
                    j2 = r2.zze(j2);
                    r2.zzj(j2 - this.aj, false);
                }
            } else {
                apg apgVar = deeVar3.i;
                if (j == apgVar.f10622f) {
                    deeVar = deeVar3;
                    j2 = j;
                } else {
                    deeVar = deeVar3;
                    j2 = j;
                    apgVar = new apg(apgVar.f10620d, j2, apgVar.f10623g, apgVar.f10618b, apgVar.f10619c, apgVar.f10621e, apgVar.h, apgVar.f10617a);
                }
                deeVar.i = apgVar;
            }
            bg(j2);
            ba();
        } else {
            j2 = j;
            eacVar.t();
            bg(j2);
        }
        bj(false);
        this.ah.zzi(2);
        return j2;
    }

    public final boolean cd(zzbv zzbvVar, zzur zzurVar) {
        if (!zzurVar.zzb() && !zzbvVar.zzo()) {
            int i = zzbvVar.zzn(zzurVar.zza, this.as).zzc;
            zzbu zzbuVar = this.r;
            zzbvVar.zze(i, zzbuVar, 0L);
            if (zzbuVar.zzb() && zzbuVar.zzi && zzbuVar.zzf != -9223372036854775807L) {
                return true;
            }
        }
        return false;
    }

    public final void ce(zzbv zzbvVar, zzur zzurVar, zzbv zzbvVar2, zzur zzurVar2, long j, boolean z) {
        if (!cd(zzbvVar, zzurVar)) {
            zzbj zzbjVar = zzurVar.zzb() ? zzbj.zza : this.i.f19076d;
            tm tmVar = this.k;
            if (tmVar.zzc().equals(zzbjVar)) {
                return;
            }
            this.ah.zzf(16);
            tmVar.zzg(zzbjVar);
            cf(this.i.f19076d, zzbjVar.zzb, false, false);
            return;
        }
        Object obj = zzurVar.zza;
        zzbt zzbtVar = this.as;
        int i = zzbvVar.zzn(obj, zzbtVar).zzc;
        zzbu zzbuVar = this.r;
        zzbvVar.zze(i, zzbuVar, 0L);
        zzaq zzaqVar = zzbuVar.zzj;
        int i2 = zzen.zza;
        zzia zziaVar = this.ap;
        zziaVar.zzd(zzaqVar);
        if (j != -9223372036854775807L) {
            zziaVar.zze(bc(zzbvVar, zzurVar.zza, j));
            return;
        }
        if (!Objects.equals(!zzbvVar2.zzo() ? zzbvVar2.zze(zzbvVar2.zzn(zzurVar2.zza, zzbtVar).zzc, zzbuVar, 0L).zzb : null, zzbuVar.zzb) || z) {
            zziaVar.zze(-9223372036854775807L);
        }
    }

    public final void cf(zzbj zzbjVar, float f2, boolean z, boolean z2) {
        zzbj zzbjVar2;
        int i;
        if (z) {
            if (z2) {
                this.ae.zza(1);
            }
            gzx gzxVar = this.i;
            gzx gzxVar2 = new gzx(gzxVar.i, gzxVar.o, gzxVar.r, gzxVar.f19078f, gzxVar.h, gzxVar.j, gzxVar.s, gzxVar.f19074b, gzxVar.n, gzxVar.p, gzxVar.f19075c, gzxVar.f19079g, gzxVar.m, gzxVar.f19077e, zzbjVar, gzxVar.l, gzxVar.q, gzxVar.t, gzxVar.k);
            zzbjVar2 = zzbjVar;
            this.i = gzxVar2;
        } else {
            zzbjVar2 = zzbjVar;
        }
        float f3 = zzbjVar2.zzb;
        dee deeVar = this.f3977ab.f15171a;
        while (true) {
            i = 0;
            if (deeVar == null) {
                break;
            }
            zzyd[] zzydVarArr = deeVar.f14045d.zzc;
            int length = zzydVarArr.length;
            while (i < length) {
                zzyd zzydVar = zzydVarArr[i];
                i++;
            }
            deeVar = deeVar.f14047f;
        }
        zzln[] zzlnVarArr = this.ac;
        int length2 = zzlnVarArr.length;
        while (i < 2) {
            zzln zzlnVar = zzlnVarArr[i];
            if (zzlnVar != null) {
                zzlnVar.zzM(f2, zzbjVar2.zzb);
            }
            i++;
        }
    }

    public final void cg(int i) {
        gzx gzxVar = this.i;
        if (gzxVar.h != i) {
            if (i != 2) {
                this.f3979c = -9223372036854775807L;
            }
            this.i = gzxVar.x(i);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:309:0x08ef, code lost:
    
        if (r1.bn() != false) goto L524;
     */
    /* JADX WARN: Code restructure failed: missing block: B:413:0x09cf, code lost:
    
        if (r6 == false) goto L567;
     */
    /* JADX WARN: Removed duplicated region for block: B:163:0x06c8 A[Catch: RuntimeException -> 0x0043, IOException -> 0x0046, zztr -> 0x0049, zzge -> 0x004c, zzbh -> 0x004f, zzri -> 0x0052, zzig -> 0x0055, TryCatch #18 {RuntimeException -> 0x0043, blocks: (B:3:0x0006, B:4:0x000f, B:7:0x0013, B:10:0x002d, B:14:0x0058, B:15:0x0068, B:16:0x007f, B:17:0x0086, B:18:0x008d, B:21:0x0094, B:23:0x009d, B:25:0x00ab, B:27:0x00b2, B:28:0x00bc, B:29:0x00d0, B:30:0x00e8, B:31:0x00f2, B:32:0x00f3, B:34:0x0102, B:35:0x0108, B:36:0x0115, B:38:0x0122, B:39:0x0138, B:40:0x0147, B:41:0x0152, B:43:0x0164, B:44:0x0170, B:45:0x0180, B:47:0x018c, B:50:0x0197, B:51:0x019e, B:52:0x01a9, B:55:0x01b0, B:57:0x01b8, B:59:0x01bc, B:61:0x01c2, B:63:0x01ca, B:65:0x01d2, B:67:0x01d5, B:72:0x01da, B:80:0x01e6, B:82:0x01e7, B:85:0x01ee, B:87:0x01fc, B:88:0x01ff, B:90:0x0204, B:92:0x0214, B:93:0x0217, B:94:0x021c, B:95:0x0221, B:97:0x022b, B:101:0x0234, B:103:0x0238, B:106:0x023f, B:108:0x0246, B:110:0x024e, B:112:0x0253, B:114:0x025d, B:118:0x0266, B:120:0x0298, B:121:0x02b8, B:539:0x02e3, B:541:0x02e7, B:542:0x02ea, B:550:0x02f4, B:123:0x0307, B:124:0x030c, B:125:0x0314, B:570:0x035a, B:578:0x04a1, B:579:0x0455, B:649:0x0451, B:613:0x04b5, B:614:0x04bd, B:666:0x03af, B:668:0x03c6, B:126:0x04e1, B:128:0x04fd, B:130:0x0509, B:132:0x0511, B:135:0x0518, B:137:0x051f, B:139:0x0527, B:141:0x052f, B:143:0x053b, B:145:0x0550, B:146:0x0555, B:147:0x0558, B:149:0x055c, B:150:0x0569, B:153:0x06a1, B:155:0x06a9, B:157:0x06b1, B:160:0x06b7, B:161:0x06c3, B:163:0x06c8, B:165:0x06d0, B:170:0x06e0, B:172:0x06e6, B:174:0x06ec, B:175:0x06f2, B:177:0x06f7, B:179:0x0700, B:182:0x0718, B:184:0x071e, B:169:0x0723, B:191:0x0728, B:193:0x072c, B:238:0x07e3, B:239:0x07e7, B:244:0x07f3, B:246:0x07fb, B:248:0x0802, B:251:0x080d, B:252:0x080b, B:253:0x0815, B:255:0x0821, B:256:0x083a, B:258:0x083f, B:260:0x0847, B:262:0x0899, B:263:0x084b, B:265:0x0854, B:268:0x085d, B:272:0x086c, B:277:0x0879, B:279:0x087f, B:282:0x0888, B:287:0x0894, B:296:0x08a3, B:298:0x08a9, B:302:0x08b6, B:304:0x08e1, B:306:0x08e7, B:308:0x08eb, B:312:0x09a0, B:314:0x09ab, B:315:0x0a03, B:318:0x0a0b, B:320:0x0a10, B:322:0x0a18, B:324:0x0a26, B:326:0x0a2d, B:330:0x0a31, B:332:0x0a37, B:334:0x0a40, B:336:0x0a46, B:338:0x0a4c, B:339:0x0a6d, B:341:0x0a73, B:344:0x0a7d, B:347:0x0aab, B:353:0x0a92, B:357:0x0a99, B:360:0x0aa4, B:361:0x0aa2, B:363:0x0a53, B:366:0x0a61, B:367:0x0a68, B:368:0x0a69, B:371:0x08fd, B:373:0x0901, B:375:0x0915, B:376:0x0920, B:378:0x092a, B:381:0x0933, B:383:0x093d, B:388:0x0948, B:391:0x097b, B:394:0x09bd, B:396:0x09c4, B:398:0x09c8, B:401:0x09d1, B:403:0x09e1, B:405:0x09e9, B:407:0x09f3, B:409:0x09f8, B:411:0x09fb, B:412:0x0a00, B:414:0x096b, B:419:0x08be, B:421:0x08c2, B:422:0x08cc, B:424:0x08d2, B:426:0x089c, B:195:0x0736, B:197:0x073a, B:199:0x0742, B:201:0x0746, B:203:0x0750, B:206:0x0756, B:207:0x0759, B:209:0x0761, B:211:0x0773, B:213:0x077b, B:215:0x0783, B:218:0x078c, B:220:0x07b2, B:221:0x07b5, B:222:0x07c0, B:224:0x07c5, B:226:0x07cb, B:228:0x07d2, B:235:0x07e2, B:432:0x0576, B:434:0x057a, B:436:0x0583, B:439:0x058e, B:441:0x0593, B:444:0x05a1, B:449:0x05a8, B:453:0x05ab, B:455:0x05b1, B:457:0x05bb, B:459:0x05f1, B:461:0x05fb, B:463:0x0604, B:465:0x060c, B:471:0x0614, B:469:0x0615, B:474:0x0618, B:476:0x061e, B:478:0x062c, B:480:0x0631, B:482:0x063b, B:484:0x0645, B:486:0x0656, B:490:0x065c, B:495:0x066b, B:496:0x066d, B:489:0x066e, B:501:0x0671, B:503:0x0677, B:506:0x067c, B:508:0x0681, B:510:0x0689, B:512:0x068f, B:514:0x0695, B:520:0x069d, B:518:0x069e, B:525:0x0566, B:527:0x0ab0, B:530:0x0ab7, B:554:0x02f5, B:556:0x02f9, B:557:0x02fc, B:561:0x0303, B:565:0x0306), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0726 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0756 A[Catch: RuntimeException -> 0x0043, IOException -> 0x0046, zztr -> 0x0049, zzge -> 0x004c, zzbh -> 0x004f, zzri -> 0x0052, zzig -> 0x0055, TryCatch #18 {RuntimeException -> 0x0043, blocks: (B:3:0x0006, B:4:0x000f, B:7:0x0013, B:10:0x002d, B:14:0x0058, B:15:0x0068, B:16:0x007f, B:17:0x0086, B:18:0x008d, B:21:0x0094, B:23:0x009d, B:25:0x00ab, B:27:0x00b2, B:28:0x00bc, B:29:0x00d0, B:30:0x00e8, B:31:0x00f2, B:32:0x00f3, B:34:0x0102, B:35:0x0108, B:36:0x0115, B:38:0x0122, B:39:0x0138, B:40:0x0147, B:41:0x0152, B:43:0x0164, B:44:0x0170, B:45:0x0180, B:47:0x018c, B:50:0x0197, B:51:0x019e, B:52:0x01a9, B:55:0x01b0, B:57:0x01b8, B:59:0x01bc, B:61:0x01c2, B:63:0x01ca, B:65:0x01d2, B:67:0x01d5, B:72:0x01da, B:80:0x01e6, B:82:0x01e7, B:85:0x01ee, B:87:0x01fc, B:88:0x01ff, B:90:0x0204, B:92:0x0214, B:93:0x0217, B:94:0x021c, B:95:0x0221, B:97:0x022b, B:101:0x0234, B:103:0x0238, B:106:0x023f, B:108:0x0246, B:110:0x024e, B:112:0x0253, B:114:0x025d, B:118:0x0266, B:120:0x0298, B:121:0x02b8, B:539:0x02e3, B:541:0x02e7, B:542:0x02ea, B:550:0x02f4, B:123:0x0307, B:124:0x030c, B:125:0x0314, B:570:0x035a, B:578:0x04a1, B:579:0x0455, B:649:0x0451, B:613:0x04b5, B:614:0x04bd, B:666:0x03af, B:668:0x03c6, B:126:0x04e1, B:128:0x04fd, B:130:0x0509, B:132:0x0511, B:135:0x0518, B:137:0x051f, B:139:0x0527, B:141:0x052f, B:143:0x053b, B:145:0x0550, B:146:0x0555, B:147:0x0558, B:149:0x055c, B:150:0x0569, B:153:0x06a1, B:155:0x06a9, B:157:0x06b1, B:160:0x06b7, B:161:0x06c3, B:163:0x06c8, B:165:0x06d0, B:170:0x06e0, B:172:0x06e6, B:174:0x06ec, B:175:0x06f2, B:177:0x06f7, B:179:0x0700, B:182:0x0718, B:184:0x071e, B:169:0x0723, B:191:0x0728, B:193:0x072c, B:238:0x07e3, B:239:0x07e7, B:244:0x07f3, B:246:0x07fb, B:248:0x0802, B:251:0x080d, B:252:0x080b, B:253:0x0815, B:255:0x0821, B:256:0x083a, B:258:0x083f, B:260:0x0847, B:262:0x0899, B:263:0x084b, B:265:0x0854, B:268:0x085d, B:272:0x086c, B:277:0x0879, B:279:0x087f, B:282:0x0888, B:287:0x0894, B:296:0x08a3, B:298:0x08a9, B:302:0x08b6, B:304:0x08e1, B:306:0x08e7, B:308:0x08eb, B:312:0x09a0, B:314:0x09ab, B:315:0x0a03, B:318:0x0a0b, B:320:0x0a10, B:322:0x0a18, B:324:0x0a26, B:326:0x0a2d, B:330:0x0a31, B:332:0x0a37, B:334:0x0a40, B:336:0x0a46, B:338:0x0a4c, B:339:0x0a6d, B:341:0x0a73, B:344:0x0a7d, B:347:0x0aab, B:353:0x0a92, B:357:0x0a99, B:360:0x0aa4, B:361:0x0aa2, B:363:0x0a53, B:366:0x0a61, B:367:0x0a68, B:368:0x0a69, B:371:0x08fd, B:373:0x0901, B:375:0x0915, B:376:0x0920, B:378:0x092a, B:381:0x0933, B:383:0x093d, B:388:0x0948, B:391:0x097b, B:394:0x09bd, B:396:0x09c4, B:398:0x09c8, B:401:0x09d1, B:403:0x09e1, B:405:0x09e9, B:407:0x09f3, B:409:0x09f8, B:411:0x09fb, B:412:0x0a00, B:414:0x096b, B:419:0x08be, B:421:0x08c2, B:422:0x08cc, B:424:0x08d2, B:426:0x089c, B:195:0x0736, B:197:0x073a, B:199:0x0742, B:201:0x0746, B:203:0x0750, B:206:0x0756, B:207:0x0759, B:209:0x0761, B:211:0x0773, B:213:0x077b, B:215:0x0783, B:218:0x078c, B:220:0x07b2, B:221:0x07b5, B:222:0x07c0, B:224:0x07c5, B:226:0x07cb, B:228:0x07d2, B:235:0x07e2, B:432:0x0576, B:434:0x057a, B:436:0x0583, B:439:0x058e, B:441:0x0593, B:444:0x05a1, B:449:0x05a8, B:453:0x05ab, B:455:0x05b1, B:457:0x05bb, B:459:0x05f1, B:461:0x05fb, B:463:0x0604, B:465:0x060c, B:471:0x0614, B:469:0x0615, B:474:0x0618, B:476:0x061e, B:478:0x062c, B:480:0x0631, B:482:0x063b, B:484:0x0645, B:486:0x0656, B:490:0x065c, B:495:0x066b, B:496:0x066d, B:489:0x066e, B:501:0x0671, B:503:0x0677, B:506:0x067c, B:508:0x0681, B:510:0x0689, B:512:0x068f, B:514:0x0695, B:520:0x069d, B:518:0x069e, B:525:0x0566, B:527:0x0ab0, B:530:0x0ab7, B:554:0x02f5, B:556:0x02f9, B:557:0x02fc, B:561:0x0303, B:565:0x0306), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0761 A[Catch: RuntimeException -> 0x0043, IOException -> 0x0046, zztr -> 0x0049, zzge -> 0x004c, zzbh -> 0x004f, zzri -> 0x0052, zzig -> 0x0055, TryCatch #18 {RuntimeException -> 0x0043, blocks: (B:3:0x0006, B:4:0x000f, B:7:0x0013, B:10:0x002d, B:14:0x0058, B:15:0x0068, B:16:0x007f, B:17:0x0086, B:18:0x008d, B:21:0x0094, B:23:0x009d, B:25:0x00ab, B:27:0x00b2, B:28:0x00bc, B:29:0x00d0, B:30:0x00e8, B:31:0x00f2, B:32:0x00f3, B:34:0x0102, B:35:0x0108, B:36:0x0115, B:38:0x0122, B:39:0x0138, B:40:0x0147, B:41:0x0152, B:43:0x0164, B:44:0x0170, B:45:0x0180, B:47:0x018c, B:50:0x0197, B:51:0x019e, B:52:0x01a9, B:55:0x01b0, B:57:0x01b8, B:59:0x01bc, B:61:0x01c2, B:63:0x01ca, B:65:0x01d2, B:67:0x01d5, B:72:0x01da, B:80:0x01e6, B:82:0x01e7, B:85:0x01ee, B:87:0x01fc, B:88:0x01ff, B:90:0x0204, B:92:0x0214, B:93:0x0217, B:94:0x021c, B:95:0x0221, B:97:0x022b, B:101:0x0234, B:103:0x0238, B:106:0x023f, B:108:0x0246, B:110:0x024e, B:112:0x0253, B:114:0x025d, B:118:0x0266, B:120:0x0298, B:121:0x02b8, B:539:0x02e3, B:541:0x02e7, B:542:0x02ea, B:550:0x02f4, B:123:0x0307, B:124:0x030c, B:125:0x0314, B:570:0x035a, B:578:0x04a1, B:579:0x0455, B:649:0x0451, B:613:0x04b5, B:614:0x04bd, B:666:0x03af, B:668:0x03c6, B:126:0x04e1, B:128:0x04fd, B:130:0x0509, B:132:0x0511, B:135:0x0518, B:137:0x051f, B:139:0x0527, B:141:0x052f, B:143:0x053b, B:145:0x0550, B:146:0x0555, B:147:0x0558, B:149:0x055c, B:150:0x0569, B:153:0x06a1, B:155:0x06a9, B:157:0x06b1, B:160:0x06b7, B:161:0x06c3, B:163:0x06c8, B:165:0x06d0, B:170:0x06e0, B:172:0x06e6, B:174:0x06ec, B:175:0x06f2, B:177:0x06f7, B:179:0x0700, B:182:0x0718, B:184:0x071e, B:169:0x0723, B:191:0x0728, B:193:0x072c, B:238:0x07e3, B:239:0x07e7, B:244:0x07f3, B:246:0x07fb, B:248:0x0802, B:251:0x080d, B:252:0x080b, B:253:0x0815, B:255:0x0821, B:256:0x083a, B:258:0x083f, B:260:0x0847, B:262:0x0899, B:263:0x084b, B:265:0x0854, B:268:0x085d, B:272:0x086c, B:277:0x0879, B:279:0x087f, B:282:0x0888, B:287:0x0894, B:296:0x08a3, B:298:0x08a9, B:302:0x08b6, B:304:0x08e1, B:306:0x08e7, B:308:0x08eb, B:312:0x09a0, B:314:0x09ab, B:315:0x0a03, B:318:0x0a0b, B:320:0x0a10, B:322:0x0a18, B:324:0x0a26, B:326:0x0a2d, B:330:0x0a31, B:332:0x0a37, B:334:0x0a40, B:336:0x0a46, B:338:0x0a4c, B:339:0x0a6d, B:341:0x0a73, B:344:0x0a7d, B:347:0x0aab, B:353:0x0a92, B:357:0x0a99, B:360:0x0aa4, B:361:0x0aa2, B:363:0x0a53, B:366:0x0a61, B:367:0x0a68, B:368:0x0a69, B:371:0x08fd, B:373:0x0901, B:375:0x0915, B:376:0x0920, B:378:0x092a, B:381:0x0933, B:383:0x093d, B:388:0x0948, B:391:0x097b, B:394:0x09bd, B:396:0x09c4, B:398:0x09c8, B:401:0x09d1, B:403:0x09e1, B:405:0x09e9, B:407:0x09f3, B:409:0x09f8, B:411:0x09fb, B:412:0x0a00, B:414:0x096b, B:419:0x08be, B:421:0x08c2, B:422:0x08cc, B:424:0x08d2, B:426:0x089c, B:195:0x0736, B:197:0x073a, B:199:0x0742, B:201:0x0746, B:203:0x0750, B:206:0x0756, B:207:0x0759, B:209:0x0761, B:211:0x0773, B:213:0x077b, B:215:0x0783, B:218:0x078c, B:220:0x07b2, B:221:0x07b5, B:222:0x07c0, B:224:0x07c5, B:226:0x07cb, B:228:0x07d2, B:235:0x07e2, B:432:0x0576, B:434:0x057a, B:436:0x0583, B:439:0x058e, B:441:0x0593, B:444:0x05a1, B:449:0x05a8, B:453:0x05ab, B:455:0x05b1, B:457:0x05bb, B:459:0x05f1, B:461:0x05fb, B:463:0x0604, B:465:0x060c, B:471:0x0614, B:469:0x0615, B:474:0x0618, B:476:0x061e, B:478:0x062c, B:480:0x0631, B:482:0x063b, B:484:0x0645, B:486:0x0656, B:490:0x065c, B:495:0x066b, B:496:0x066d, B:489:0x066e, B:501:0x0671, B:503:0x0677, B:506:0x067c, B:508:0x0681, B:510:0x0689, B:512:0x068f, B:514:0x0695, B:520:0x069d, B:518:0x069e, B:525:0x0566, B:527:0x0ab0, B:530:0x0ab7, B:554:0x02f5, B:556:0x02f9, B:557:0x02fc, B:561:0x0303, B:565:0x0306), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:220:0x07b2 A[Catch: RuntimeException -> 0x0043, IOException -> 0x0046, zztr -> 0x0049, zzge -> 0x004c, zzbh -> 0x004f, zzri -> 0x0052, zzig -> 0x0055, TryCatch #18 {RuntimeException -> 0x0043, blocks: (B:3:0x0006, B:4:0x000f, B:7:0x0013, B:10:0x002d, B:14:0x0058, B:15:0x0068, B:16:0x007f, B:17:0x0086, B:18:0x008d, B:21:0x0094, B:23:0x009d, B:25:0x00ab, B:27:0x00b2, B:28:0x00bc, B:29:0x00d0, B:30:0x00e8, B:31:0x00f2, B:32:0x00f3, B:34:0x0102, B:35:0x0108, B:36:0x0115, B:38:0x0122, B:39:0x0138, B:40:0x0147, B:41:0x0152, B:43:0x0164, B:44:0x0170, B:45:0x0180, B:47:0x018c, B:50:0x0197, B:51:0x019e, B:52:0x01a9, B:55:0x01b0, B:57:0x01b8, B:59:0x01bc, B:61:0x01c2, B:63:0x01ca, B:65:0x01d2, B:67:0x01d5, B:72:0x01da, B:80:0x01e6, B:82:0x01e7, B:85:0x01ee, B:87:0x01fc, B:88:0x01ff, B:90:0x0204, B:92:0x0214, B:93:0x0217, B:94:0x021c, B:95:0x0221, B:97:0x022b, B:101:0x0234, B:103:0x0238, B:106:0x023f, B:108:0x0246, B:110:0x024e, B:112:0x0253, B:114:0x025d, B:118:0x0266, B:120:0x0298, B:121:0x02b8, B:539:0x02e3, B:541:0x02e7, B:542:0x02ea, B:550:0x02f4, B:123:0x0307, B:124:0x030c, B:125:0x0314, B:570:0x035a, B:578:0x04a1, B:579:0x0455, B:649:0x0451, B:613:0x04b5, B:614:0x04bd, B:666:0x03af, B:668:0x03c6, B:126:0x04e1, B:128:0x04fd, B:130:0x0509, B:132:0x0511, B:135:0x0518, B:137:0x051f, B:139:0x0527, B:141:0x052f, B:143:0x053b, B:145:0x0550, B:146:0x0555, B:147:0x0558, B:149:0x055c, B:150:0x0569, B:153:0x06a1, B:155:0x06a9, B:157:0x06b1, B:160:0x06b7, B:161:0x06c3, B:163:0x06c8, B:165:0x06d0, B:170:0x06e0, B:172:0x06e6, B:174:0x06ec, B:175:0x06f2, B:177:0x06f7, B:179:0x0700, B:182:0x0718, B:184:0x071e, B:169:0x0723, B:191:0x0728, B:193:0x072c, B:238:0x07e3, B:239:0x07e7, B:244:0x07f3, B:246:0x07fb, B:248:0x0802, B:251:0x080d, B:252:0x080b, B:253:0x0815, B:255:0x0821, B:256:0x083a, B:258:0x083f, B:260:0x0847, B:262:0x0899, B:263:0x084b, B:265:0x0854, B:268:0x085d, B:272:0x086c, B:277:0x0879, B:279:0x087f, B:282:0x0888, B:287:0x0894, B:296:0x08a3, B:298:0x08a9, B:302:0x08b6, B:304:0x08e1, B:306:0x08e7, B:308:0x08eb, B:312:0x09a0, B:314:0x09ab, B:315:0x0a03, B:318:0x0a0b, B:320:0x0a10, B:322:0x0a18, B:324:0x0a26, B:326:0x0a2d, B:330:0x0a31, B:332:0x0a37, B:334:0x0a40, B:336:0x0a46, B:338:0x0a4c, B:339:0x0a6d, B:341:0x0a73, B:344:0x0a7d, B:347:0x0aab, B:353:0x0a92, B:357:0x0a99, B:360:0x0aa4, B:361:0x0aa2, B:363:0x0a53, B:366:0x0a61, B:367:0x0a68, B:368:0x0a69, B:371:0x08fd, B:373:0x0901, B:375:0x0915, B:376:0x0920, B:378:0x092a, B:381:0x0933, B:383:0x093d, B:388:0x0948, B:391:0x097b, B:394:0x09bd, B:396:0x09c4, B:398:0x09c8, B:401:0x09d1, B:403:0x09e1, B:405:0x09e9, B:407:0x09f3, B:409:0x09f8, B:411:0x09fb, B:412:0x0a00, B:414:0x096b, B:419:0x08be, B:421:0x08c2, B:422:0x08cc, B:424:0x08d2, B:426:0x089c, B:195:0x0736, B:197:0x073a, B:199:0x0742, B:201:0x0746, B:203:0x0750, B:206:0x0756, B:207:0x0759, B:209:0x0761, B:211:0x0773, B:213:0x077b, B:215:0x0783, B:218:0x078c, B:220:0x07b2, B:221:0x07b5, B:222:0x07c0, B:224:0x07c5, B:226:0x07cb, B:228:0x07d2, B:235:0x07e2, B:432:0x0576, B:434:0x057a, B:436:0x0583, B:439:0x058e, B:441:0x0593, B:444:0x05a1, B:449:0x05a8, B:453:0x05ab, B:455:0x05b1, B:457:0x05bb, B:459:0x05f1, B:461:0x05fb, B:463:0x0604, B:465:0x060c, B:471:0x0614, B:469:0x0615, B:474:0x0618, B:476:0x061e, B:478:0x062c, B:480:0x0631, B:482:0x063b, B:484:0x0645, B:486:0x0656, B:490:0x065c, B:495:0x066b, B:496:0x066d, B:489:0x066e, B:501:0x0671, B:503:0x0677, B:506:0x067c, B:508:0x0681, B:510:0x0689, B:512:0x068f, B:514:0x0695, B:520:0x069d, B:518:0x069e, B:525:0x0566, B:527:0x0ab0, B:530:0x0ab7, B:554:0x02f5, B:556:0x02f9, B:557:0x02fc, B:561:0x0303, B:565:0x0306), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x07c5 A[Catch: RuntimeException -> 0x0043, IOException -> 0x0046, zztr -> 0x0049, zzge -> 0x004c, zzbh -> 0x004f, zzri -> 0x0052, zzig -> 0x0055, TryCatch #18 {RuntimeException -> 0x0043, blocks: (B:3:0x0006, B:4:0x000f, B:7:0x0013, B:10:0x002d, B:14:0x0058, B:15:0x0068, B:16:0x007f, B:17:0x0086, B:18:0x008d, B:21:0x0094, B:23:0x009d, B:25:0x00ab, B:27:0x00b2, B:28:0x00bc, B:29:0x00d0, B:30:0x00e8, B:31:0x00f2, B:32:0x00f3, B:34:0x0102, B:35:0x0108, B:36:0x0115, B:38:0x0122, B:39:0x0138, B:40:0x0147, B:41:0x0152, B:43:0x0164, B:44:0x0170, B:45:0x0180, B:47:0x018c, B:50:0x0197, B:51:0x019e, B:52:0x01a9, B:55:0x01b0, B:57:0x01b8, B:59:0x01bc, B:61:0x01c2, B:63:0x01ca, B:65:0x01d2, B:67:0x01d5, B:72:0x01da, B:80:0x01e6, B:82:0x01e7, B:85:0x01ee, B:87:0x01fc, B:88:0x01ff, B:90:0x0204, B:92:0x0214, B:93:0x0217, B:94:0x021c, B:95:0x0221, B:97:0x022b, B:101:0x0234, B:103:0x0238, B:106:0x023f, B:108:0x0246, B:110:0x024e, B:112:0x0253, B:114:0x025d, B:118:0x0266, B:120:0x0298, B:121:0x02b8, B:539:0x02e3, B:541:0x02e7, B:542:0x02ea, B:550:0x02f4, B:123:0x0307, B:124:0x030c, B:125:0x0314, B:570:0x035a, B:578:0x04a1, B:579:0x0455, B:649:0x0451, B:613:0x04b5, B:614:0x04bd, B:666:0x03af, B:668:0x03c6, B:126:0x04e1, B:128:0x04fd, B:130:0x0509, B:132:0x0511, B:135:0x0518, B:137:0x051f, B:139:0x0527, B:141:0x052f, B:143:0x053b, B:145:0x0550, B:146:0x0555, B:147:0x0558, B:149:0x055c, B:150:0x0569, B:153:0x06a1, B:155:0x06a9, B:157:0x06b1, B:160:0x06b7, B:161:0x06c3, B:163:0x06c8, B:165:0x06d0, B:170:0x06e0, B:172:0x06e6, B:174:0x06ec, B:175:0x06f2, B:177:0x06f7, B:179:0x0700, B:182:0x0718, B:184:0x071e, B:169:0x0723, B:191:0x0728, B:193:0x072c, B:238:0x07e3, B:239:0x07e7, B:244:0x07f3, B:246:0x07fb, B:248:0x0802, B:251:0x080d, B:252:0x080b, B:253:0x0815, B:255:0x0821, B:256:0x083a, B:258:0x083f, B:260:0x0847, B:262:0x0899, B:263:0x084b, B:265:0x0854, B:268:0x085d, B:272:0x086c, B:277:0x0879, B:279:0x087f, B:282:0x0888, B:287:0x0894, B:296:0x08a3, B:298:0x08a9, B:302:0x08b6, B:304:0x08e1, B:306:0x08e7, B:308:0x08eb, B:312:0x09a0, B:314:0x09ab, B:315:0x0a03, B:318:0x0a0b, B:320:0x0a10, B:322:0x0a18, B:324:0x0a26, B:326:0x0a2d, B:330:0x0a31, B:332:0x0a37, B:334:0x0a40, B:336:0x0a46, B:338:0x0a4c, B:339:0x0a6d, B:341:0x0a73, B:344:0x0a7d, B:347:0x0aab, B:353:0x0a92, B:357:0x0a99, B:360:0x0aa4, B:361:0x0aa2, B:363:0x0a53, B:366:0x0a61, B:367:0x0a68, B:368:0x0a69, B:371:0x08fd, B:373:0x0901, B:375:0x0915, B:376:0x0920, B:378:0x092a, B:381:0x0933, B:383:0x093d, B:388:0x0948, B:391:0x097b, B:394:0x09bd, B:396:0x09c4, B:398:0x09c8, B:401:0x09d1, B:403:0x09e1, B:405:0x09e9, B:407:0x09f3, B:409:0x09f8, B:411:0x09fb, B:412:0x0a00, B:414:0x096b, B:419:0x08be, B:421:0x08c2, B:422:0x08cc, B:424:0x08d2, B:426:0x089c, B:195:0x0736, B:197:0x073a, B:199:0x0742, B:201:0x0746, B:203:0x0750, B:206:0x0756, B:207:0x0759, B:209:0x0761, B:211:0x0773, B:213:0x077b, B:215:0x0783, B:218:0x078c, B:220:0x07b2, B:221:0x07b5, B:222:0x07c0, B:224:0x07c5, B:226:0x07cb, B:228:0x07d2, B:235:0x07e2, B:432:0x0576, B:434:0x057a, B:436:0x0583, B:439:0x058e, B:441:0x0593, B:444:0x05a1, B:449:0x05a8, B:453:0x05ab, B:455:0x05b1, B:457:0x05bb, B:459:0x05f1, B:461:0x05fb, B:463:0x0604, B:465:0x060c, B:471:0x0614, B:469:0x0615, B:474:0x0618, B:476:0x061e, B:478:0x062c, B:480:0x0631, B:482:0x063b, B:484:0x0645, B:486:0x0656, B:490:0x065c, B:495:0x066b, B:496:0x066d, B:489:0x066e, B:501:0x0671, B:503:0x0677, B:506:0x067c, B:508:0x0681, B:510:0x0689, B:512:0x068f, B:514:0x0695, B:520:0x069d, B:518:0x069e, B:525:0x0566, B:527:0x0ab0, B:530:0x0ab7, B:554:0x02f5, B:556:0x02f9, B:557:0x02fc, B:561:0x0303, B:565:0x0306), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:233:0x07e0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:314:0x09ab A[Catch: RuntimeException -> 0x0043, IOException -> 0x0046, zztr -> 0x0049, zzge -> 0x004c, zzbh -> 0x004f, zzri -> 0x0052, zzig -> 0x0055, TryCatch #18 {RuntimeException -> 0x0043, blocks: (B:3:0x0006, B:4:0x000f, B:7:0x0013, B:10:0x002d, B:14:0x0058, B:15:0x0068, B:16:0x007f, B:17:0x0086, B:18:0x008d, B:21:0x0094, B:23:0x009d, B:25:0x00ab, B:27:0x00b2, B:28:0x00bc, B:29:0x00d0, B:30:0x00e8, B:31:0x00f2, B:32:0x00f3, B:34:0x0102, B:35:0x0108, B:36:0x0115, B:38:0x0122, B:39:0x0138, B:40:0x0147, B:41:0x0152, B:43:0x0164, B:44:0x0170, B:45:0x0180, B:47:0x018c, B:50:0x0197, B:51:0x019e, B:52:0x01a9, B:55:0x01b0, B:57:0x01b8, B:59:0x01bc, B:61:0x01c2, B:63:0x01ca, B:65:0x01d2, B:67:0x01d5, B:72:0x01da, B:80:0x01e6, B:82:0x01e7, B:85:0x01ee, B:87:0x01fc, B:88:0x01ff, B:90:0x0204, B:92:0x0214, B:93:0x0217, B:94:0x021c, B:95:0x0221, B:97:0x022b, B:101:0x0234, B:103:0x0238, B:106:0x023f, B:108:0x0246, B:110:0x024e, B:112:0x0253, B:114:0x025d, B:118:0x0266, B:120:0x0298, B:121:0x02b8, B:539:0x02e3, B:541:0x02e7, B:542:0x02ea, B:550:0x02f4, B:123:0x0307, B:124:0x030c, B:125:0x0314, B:570:0x035a, B:578:0x04a1, B:579:0x0455, B:649:0x0451, B:613:0x04b5, B:614:0x04bd, B:666:0x03af, B:668:0x03c6, B:126:0x04e1, B:128:0x04fd, B:130:0x0509, B:132:0x0511, B:135:0x0518, B:137:0x051f, B:139:0x0527, B:141:0x052f, B:143:0x053b, B:145:0x0550, B:146:0x0555, B:147:0x0558, B:149:0x055c, B:150:0x0569, B:153:0x06a1, B:155:0x06a9, B:157:0x06b1, B:160:0x06b7, B:161:0x06c3, B:163:0x06c8, B:165:0x06d0, B:170:0x06e0, B:172:0x06e6, B:174:0x06ec, B:175:0x06f2, B:177:0x06f7, B:179:0x0700, B:182:0x0718, B:184:0x071e, B:169:0x0723, B:191:0x0728, B:193:0x072c, B:238:0x07e3, B:239:0x07e7, B:244:0x07f3, B:246:0x07fb, B:248:0x0802, B:251:0x080d, B:252:0x080b, B:253:0x0815, B:255:0x0821, B:256:0x083a, B:258:0x083f, B:260:0x0847, B:262:0x0899, B:263:0x084b, B:265:0x0854, B:268:0x085d, B:272:0x086c, B:277:0x0879, B:279:0x087f, B:282:0x0888, B:287:0x0894, B:296:0x08a3, B:298:0x08a9, B:302:0x08b6, B:304:0x08e1, B:306:0x08e7, B:308:0x08eb, B:312:0x09a0, B:314:0x09ab, B:315:0x0a03, B:318:0x0a0b, B:320:0x0a10, B:322:0x0a18, B:324:0x0a26, B:326:0x0a2d, B:330:0x0a31, B:332:0x0a37, B:334:0x0a40, B:336:0x0a46, B:338:0x0a4c, B:339:0x0a6d, B:341:0x0a73, B:344:0x0a7d, B:347:0x0aab, B:353:0x0a92, B:357:0x0a99, B:360:0x0aa4, B:361:0x0aa2, B:363:0x0a53, B:366:0x0a61, B:367:0x0a68, B:368:0x0a69, B:371:0x08fd, B:373:0x0901, B:375:0x0915, B:376:0x0920, B:378:0x092a, B:381:0x0933, B:383:0x093d, B:388:0x0948, B:391:0x097b, B:394:0x09bd, B:396:0x09c4, B:398:0x09c8, B:401:0x09d1, B:403:0x09e1, B:405:0x09e9, B:407:0x09f3, B:409:0x09f8, B:411:0x09fb, B:412:0x0a00, B:414:0x096b, B:419:0x08be, B:421:0x08c2, B:422:0x08cc, B:424:0x08d2, B:426:0x089c, B:195:0x0736, B:197:0x073a, B:199:0x0742, B:201:0x0746, B:203:0x0750, B:206:0x0756, B:207:0x0759, B:209:0x0761, B:211:0x0773, B:213:0x077b, B:215:0x0783, B:218:0x078c, B:220:0x07b2, B:221:0x07b5, B:222:0x07c0, B:224:0x07c5, B:226:0x07cb, B:228:0x07d2, B:235:0x07e2, B:432:0x0576, B:434:0x057a, B:436:0x0583, B:439:0x058e, B:441:0x0593, B:444:0x05a1, B:449:0x05a8, B:453:0x05ab, B:455:0x05b1, B:457:0x05bb, B:459:0x05f1, B:461:0x05fb, B:463:0x0604, B:465:0x060c, B:471:0x0614, B:469:0x0615, B:474:0x0618, B:476:0x061e, B:478:0x062c, B:480:0x0631, B:482:0x063b, B:484:0x0645, B:486:0x0656, B:490:0x065c, B:495:0x066b, B:496:0x066d, B:489:0x066e, B:501:0x0671, B:503:0x0677, B:506:0x067c, B:508:0x0681, B:510:0x0689, B:512:0x068f, B:514:0x0695, B:520:0x069d, B:518:0x069e, B:525:0x0566, B:527:0x0ab0, B:530:0x0ab7, B:554:0x02f5, B:556:0x02f9, B:557:0x02fc, B:561:0x0303, B:565:0x0306), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:317:0x0a0a  */
    /* JADX WARN: Removed duplicated region for block: B:341:0x0a73 A[Catch: RuntimeException -> 0x0043, IOException -> 0x0046, zztr -> 0x0049, zzge -> 0x004c, zzbh -> 0x004f, zzri -> 0x0052, zzig -> 0x0055, TryCatch #18 {RuntimeException -> 0x0043, blocks: (B:3:0x0006, B:4:0x000f, B:7:0x0013, B:10:0x002d, B:14:0x0058, B:15:0x0068, B:16:0x007f, B:17:0x0086, B:18:0x008d, B:21:0x0094, B:23:0x009d, B:25:0x00ab, B:27:0x00b2, B:28:0x00bc, B:29:0x00d0, B:30:0x00e8, B:31:0x00f2, B:32:0x00f3, B:34:0x0102, B:35:0x0108, B:36:0x0115, B:38:0x0122, B:39:0x0138, B:40:0x0147, B:41:0x0152, B:43:0x0164, B:44:0x0170, B:45:0x0180, B:47:0x018c, B:50:0x0197, B:51:0x019e, B:52:0x01a9, B:55:0x01b0, B:57:0x01b8, B:59:0x01bc, B:61:0x01c2, B:63:0x01ca, B:65:0x01d2, B:67:0x01d5, B:72:0x01da, B:80:0x01e6, B:82:0x01e7, B:85:0x01ee, B:87:0x01fc, B:88:0x01ff, B:90:0x0204, B:92:0x0214, B:93:0x0217, B:94:0x021c, B:95:0x0221, B:97:0x022b, B:101:0x0234, B:103:0x0238, B:106:0x023f, B:108:0x0246, B:110:0x024e, B:112:0x0253, B:114:0x025d, B:118:0x0266, B:120:0x0298, B:121:0x02b8, B:539:0x02e3, B:541:0x02e7, B:542:0x02ea, B:550:0x02f4, B:123:0x0307, B:124:0x030c, B:125:0x0314, B:570:0x035a, B:578:0x04a1, B:579:0x0455, B:649:0x0451, B:613:0x04b5, B:614:0x04bd, B:666:0x03af, B:668:0x03c6, B:126:0x04e1, B:128:0x04fd, B:130:0x0509, B:132:0x0511, B:135:0x0518, B:137:0x051f, B:139:0x0527, B:141:0x052f, B:143:0x053b, B:145:0x0550, B:146:0x0555, B:147:0x0558, B:149:0x055c, B:150:0x0569, B:153:0x06a1, B:155:0x06a9, B:157:0x06b1, B:160:0x06b7, B:161:0x06c3, B:163:0x06c8, B:165:0x06d0, B:170:0x06e0, B:172:0x06e6, B:174:0x06ec, B:175:0x06f2, B:177:0x06f7, B:179:0x0700, B:182:0x0718, B:184:0x071e, B:169:0x0723, B:191:0x0728, B:193:0x072c, B:238:0x07e3, B:239:0x07e7, B:244:0x07f3, B:246:0x07fb, B:248:0x0802, B:251:0x080d, B:252:0x080b, B:253:0x0815, B:255:0x0821, B:256:0x083a, B:258:0x083f, B:260:0x0847, B:262:0x0899, B:263:0x084b, B:265:0x0854, B:268:0x085d, B:272:0x086c, B:277:0x0879, B:279:0x087f, B:282:0x0888, B:287:0x0894, B:296:0x08a3, B:298:0x08a9, B:302:0x08b6, B:304:0x08e1, B:306:0x08e7, B:308:0x08eb, B:312:0x09a0, B:314:0x09ab, B:315:0x0a03, B:318:0x0a0b, B:320:0x0a10, B:322:0x0a18, B:324:0x0a26, B:326:0x0a2d, B:330:0x0a31, B:332:0x0a37, B:334:0x0a40, B:336:0x0a46, B:338:0x0a4c, B:339:0x0a6d, B:341:0x0a73, B:344:0x0a7d, B:347:0x0aab, B:353:0x0a92, B:357:0x0a99, B:360:0x0aa4, B:361:0x0aa2, B:363:0x0a53, B:366:0x0a61, B:367:0x0a68, B:368:0x0a69, B:371:0x08fd, B:373:0x0901, B:375:0x0915, B:376:0x0920, B:378:0x092a, B:381:0x0933, B:383:0x093d, B:388:0x0948, B:391:0x097b, B:394:0x09bd, B:396:0x09c4, B:398:0x09c8, B:401:0x09d1, B:403:0x09e1, B:405:0x09e9, B:407:0x09f3, B:409:0x09f8, B:411:0x09fb, B:412:0x0a00, B:414:0x096b, B:419:0x08be, B:421:0x08c2, B:422:0x08cc, B:424:0x08d2, B:426:0x089c, B:195:0x0736, B:197:0x073a, B:199:0x0742, B:201:0x0746, B:203:0x0750, B:206:0x0756, B:207:0x0759, B:209:0x0761, B:211:0x0773, B:213:0x077b, B:215:0x0783, B:218:0x078c, B:220:0x07b2, B:221:0x07b5, B:222:0x07c0, B:224:0x07c5, B:226:0x07cb, B:228:0x07d2, B:235:0x07e2, B:432:0x0576, B:434:0x057a, B:436:0x0583, B:439:0x058e, B:441:0x0593, B:444:0x05a1, B:449:0x05a8, B:453:0x05ab, B:455:0x05b1, B:457:0x05bb, B:459:0x05f1, B:461:0x05fb, B:463:0x0604, B:465:0x060c, B:471:0x0614, B:469:0x0615, B:474:0x0618, B:476:0x061e, B:478:0x062c, B:480:0x0631, B:482:0x063b, B:484:0x0645, B:486:0x0656, B:490:0x065c, B:495:0x066b, B:496:0x066d, B:489:0x066e, B:501:0x0671, B:503:0x0677, B:506:0x067c, B:508:0x0681, B:510:0x0689, B:512:0x068f, B:514:0x0695, B:520:0x069d, B:518:0x069e, B:525:0x0566, B:527:0x0ab0, B:530:0x0ab7, B:554:0x02f5, B:556:0x02f9, B:557:0x02fc, B:561:0x0303, B:565:0x0306), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:346:0x0a89 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:348:0x0a8a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:396:0x09c4 A[Catch: RuntimeException -> 0x0043, IOException -> 0x0046, zztr -> 0x0049, zzge -> 0x004c, zzbh -> 0x004f, zzri -> 0x0052, zzig -> 0x0055, TryCatch #18 {RuntimeException -> 0x0043, blocks: (B:3:0x0006, B:4:0x000f, B:7:0x0013, B:10:0x002d, B:14:0x0058, B:15:0x0068, B:16:0x007f, B:17:0x0086, B:18:0x008d, B:21:0x0094, B:23:0x009d, B:25:0x00ab, B:27:0x00b2, B:28:0x00bc, B:29:0x00d0, B:30:0x00e8, B:31:0x00f2, B:32:0x00f3, B:34:0x0102, B:35:0x0108, B:36:0x0115, B:38:0x0122, B:39:0x0138, B:40:0x0147, B:41:0x0152, B:43:0x0164, B:44:0x0170, B:45:0x0180, B:47:0x018c, B:50:0x0197, B:51:0x019e, B:52:0x01a9, B:55:0x01b0, B:57:0x01b8, B:59:0x01bc, B:61:0x01c2, B:63:0x01ca, B:65:0x01d2, B:67:0x01d5, B:72:0x01da, B:80:0x01e6, B:82:0x01e7, B:85:0x01ee, B:87:0x01fc, B:88:0x01ff, B:90:0x0204, B:92:0x0214, B:93:0x0217, B:94:0x021c, B:95:0x0221, B:97:0x022b, B:101:0x0234, B:103:0x0238, B:106:0x023f, B:108:0x0246, B:110:0x024e, B:112:0x0253, B:114:0x025d, B:118:0x0266, B:120:0x0298, B:121:0x02b8, B:539:0x02e3, B:541:0x02e7, B:542:0x02ea, B:550:0x02f4, B:123:0x0307, B:124:0x030c, B:125:0x0314, B:570:0x035a, B:578:0x04a1, B:579:0x0455, B:649:0x0451, B:613:0x04b5, B:614:0x04bd, B:666:0x03af, B:668:0x03c6, B:126:0x04e1, B:128:0x04fd, B:130:0x0509, B:132:0x0511, B:135:0x0518, B:137:0x051f, B:139:0x0527, B:141:0x052f, B:143:0x053b, B:145:0x0550, B:146:0x0555, B:147:0x0558, B:149:0x055c, B:150:0x0569, B:153:0x06a1, B:155:0x06a9, B:157:0x06b1, B:160:0x06b7, B:161:0x06c3, B:163:0x06c8, B:165:0x06d0, B:170:0x06e0, B:172:0x06e6, B:174:0x06ec, B:175:0x06f2, B:177:0x06f7, B:179:0x0700, B:182:0x0718, B:184:0x071e, B:169:0x0723, B:191:0x0728, B:193:0x072c, B:238:0x07e3, B:239:0x07e7, B:244:0x07f3, B:246:0x07fb, B:248:0x0802, B:251:0x080d, B:252:0x080b, B:253:0x0815, B:255:0x0821, B:256:0x083a, B:258:0x083f, B:260:0x0847, B:262:0x0899, B:263:0x084b, B:265:0x0854, B:268:0x085d, B:272:0x086c, B:277:0x0879, B:279:0x087f, B:282:0x0888, B:287:0x0894, B:296:0x08a3, B:298:0x08a9, B:302:0x08b6, B:304:0x08e1, B:306:0x08e7, B:308:0x08eb, B:312:0x09a0, B:314:0x09ab, B:315:0x0a03, B:318:0x0a0b, B:320:0x0a10, B:322:0x0a18, B:324:0x0a26, B:326:0x0a2d, B:330:0x0a31, B:332:0x0a37, B:334:0x0a40, B:336:0x0a46, B:338:0x0a4c, B:339:0x0a6d, B:341:0x0a73, B:344:0x0a7d, B:347:0x0aab, B:353:0x0a92, B:357:0x0a99, B:360:0x0aa4, B:361:0x0aa2, B:363:0x0a53, B:366:0x0a61, B:367:0x0a68, B:368:0x0a69, B:371:0x08fd, B:373:0x0901, B:375:0x0915, B:376:0x0920, B:378:0x092a, B:381:0x0933, B:383:0x093d, B:388:0x0948, B:391:0x097b, B:394:0x09bd, B:396:0x09c4, B:398:0x09c8, B:401:0x09d1, B:403:0x09e1, B:405:0x09e9, B:407:0x09f3, B:409:0x09f8, B:411:0x09fb, B:412:0x0a00, B:414:0x096b, B:419:0x08be, B:421:0x08c2, B:422:0x08cc, B:424:0x08d2, B:426:0x089c, B:195:0x0736, B:197:0x073a, B:199:0x0742, B:201:0x0746, B:203:0x0750, B:206:0x0756, B:207:0x0759, B:209:0x0761, B:211:0x0773, B:213:0x077b, B:215:0x0783, B:218:0x078c, B:220:0x07b2, B:221:0x07b5, B:222:0x07c0, B:224:0x07c5, B:226:0x07cb, B:228:0x07d2, B:235:0x07e2, B:432:0x0576, B:434:0x057a, B:436:0x0583, B:439:0x058e, B:441:0x0593, B:444:0x05a1, B:449:0x05a8, B:453:0x05ab, B:455:0x05b1, B:457:0x05bb, B:459:0x05f1, B:461:0x05fb, B:463:0x0604, B:465:0x060c, B:471:0x0614, B:469:0x0615, B:474:0x0618, B:476:0x061e, B:478:0x062c, B:480:0x0631, B:482:0x063b, B:484:0x0645, B:486:0x0656, B:490:0x065c, B:495:0x066b, B:496:0x066d, B:489:0x066e, B:501:0x0671, B:503:0x0677, B:506:0x067c, B:508:0x0681, B:510:0x0689, B:512:0x068f, B:514:0x0695, B:520:0x069d, B:518:0x069e, B:525:0x0566, B:527:0x0ab0, B:530:0x0ab7, B:554:0x02f5, B:556:0x02f9, B:557:0x02fc, B:561:0x0303, B:565:0x0306), top: B:2:0x0006 }] */
    /* JADX WARN: Type inference failed for: r0v169, types: [com.google.android.gms.internal.ads.zzup, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v51, types: [com.google.android.gms.internal.ads.zzup, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v138, types: [com.google.android.gms.internal.ads.zzup, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v132, types: [com.google.android.gms.internal.ads.zzup, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v46, types: [com.google.android.gms.internal.ads.zzup, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v41, types: [com.google.android.gms.internal.ads.zzup, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v35, types: [com.google.android.gms.internal.ads.zzup, java.lang.Object] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean handleMessage(Message message) {
        boolean z;
        boolean z2;
        int i;
        dee s;
        int i2;
        cuu cuuVar;
        Pair ax;
        long j;
        long j2;
        zzur v;
        boolean z3;
        long j3;
        zzur zzurVar;
        long j4;
        long j5;
        long j6;
        long zza;
        long j7;
        long j8;
        gzx gzxVar;
        int i3;
        gzx bd;
        long cc;
        gzx gzxVar2;
        zzur zzurVar2;
        zzbv zzbvVar;
        long j9;
        zzur zzurVar3;
        long j10;
        long j11;
        zzig zzigVar;
        int i4;
        boolean z4;
        boolean z5;
        long j12;
        long j13;
        int i5;
        zzur zzurVar4;
        long max;
        zzig zzigVar2;
        int i6;
        dee s2;
        boolean z6;
        dee ai;
        dee deeVar;
        dee an;
        boolean z7;
        int i7;
        int i8;
        apg x;
        long j14;
        final s sVar = this;
        try {
            try {
                i2 = -1;
            } catch (RuntimeException e2) {
                e = e2;
            }
        } catch (zzbh e3) {
            e = e3;
        } catch (zzge e4) {
            e = e4;
        } catch (zzig e5) {
            e = e5;
        } catch (zzri e6) {
            e = e6;
        } catch (zztr e7) {
            e = e7;
        } catch (IOException e8) {
            e = e8;
        }
        switch (message.what) {
            case 1:
                boolean z8 = message.arg1 != 0;
                int i9 = message.arg2;
                sVar.by(i9 >> 4, i9 & 15, z8, true);
                z = true;
                sVar.bv();
                return z;
            case 2:
                long uptimeMillis = SystemClock.uptimeMillis();
                sVar.ah.zzf(2);
                if (sVar.i.i.zzo() || !sVar.w.q()) {
                    zzigVar = null;
                    i4 = 2;
                } else {
                    eac eacVar = sVar.f3977ab;
                    long j15 = sVar.f3983g;
                    dee deeVar2 = eacVar.m;
                    if (deeVar2 != null) {
                        zzdb.zzf(deeVar2.f14047f == null);
                        if (deeVar2.f14046e) {
                            deeVar2.h.zzm(j15 - deeVar2.f14044c);
                        }
                    }
                    if (sVar.f3977ab.ae() && (x = sVar.f3977ab.x(sVar.f3983g, sVar.i)) != null) {
                        dee ah = sVar.f3977ab.ah(x);
                        ah.h.zzl(sVar, x.f10622f);
                        if (sVar.f3977ab.ai() == ah) {
                            sVar.bg(x.f10622f);
                        }
                        sVar.bj(false);
                    }
                    if (sVar.v) {
                        sVar.v = sVar.bz();
                        sVar.bo();
                    } else {
                        sVar.ba();
                    }
                    dee s3 = sVar.f3977ab.s();
                    if (s3 != null) {
                        if (s3.f14047f == null || sVar.p) {
                            zzigVar2 = null;
                            i4 = 2;
                            if (s3.i.f10617a || sVar.p) {
                                int i10 = 0;
                                while (true) {
                                    zzln[] zzlnVarArr = sVar.ac;
                                    int length = zzlnVarArr.length;
                                    if (i10 < 2) {
                                        zzln zzlnVar = zzlnVarArr[i10];
                                        zzwg zzwgVar = s3.n[i10];
                                        if (zzwgVar != null && zzlnVar.zzp() == zzwgVar && zzlnVar.zzQ()) {
                                            zzlnVar.zzK();
                                            if (zzlnVar instanceof zzwv) {
                                                throw null;
                                            }
                                        }
                                        i10++;
                                    }
                                }
                            }
                        } else {
                            dee s4 = sVar.f3977ab.s();
                            if (s4.f14046e) {
                                while (true) {
                                    zzln[] zzlnVarArr2 = sVar.ac;
                                    int length2 = zzlnVarArr2.length;
                                    if (i6 < 2) {
                                        zzln zzlnVar2 = zzlnVarArr2[i6];
                                        zzwg zzwgVar2 = s4.n[i6];
                                        i6 = (zzlnVar2.zzp() == zzwgVar2 && (zzwgVar2 == null || zzlnVar2.zzQ())) ? i6 + 1 : 0;
                                    } else {
                                        dee deeVar3 = s3.f14047f;
                                        if (deeVar3.f14046e || sVar.f3983g >= deeVar3.y()) {
                                            zzyk s5 = s3.s();
                                            dee r = sVar.f3977ab.r();
                                            zzyk s6 = r.s();
                                            zzbv zzbvVar2 = sVar.i.i;
                                            zzigVar2 = null;
                                            i4 = 2;
                                            sVar.ce(zzbvVar2, r.i.f10620d, zzbvVar2, s3.i.f10620d, -9223372036854775807L, false);
                                            if (!r.f14046e || r.h.zzd() == -9223372036854775807L) {
                                                int i11 = 0;
                                                while (true) {
                                                    int length3 = sVar.ac.length;
                                                    if (i11 < 2) {
                                                        boolean zzb = s5.zzb(i11);
                                                        boolean zzb2 = s6.zzb(i11);
                                                        if (zzb && !sVar.ac[i11].zzR()) {
                                                            sVar.q[i11].zzb();
                                                            zzlr zzlrVar = s5.zzb[i11];
                                                            zzlr zzlrVar2 = s6.zzb[i11];
                                                            if (!zzb2 || !zzlrVar2.equals(zzlrVar)) {
                                                                zzln zzlnVar3 = sVar.ac[i11];
                                                                r.y();
                                                                zzlnVar3.zzK();
                                                                if (zzlnVar3 instanceof zzwv) {
                                                                    throw null;
                                                                }
                                                            }
                                                        }
                                                        i11++;
                                                    }
                                                }
                                            } else {
                                                r.y();
                                                zzln[] zzlnVarArr3 = sVar.ac;
                                                int length4 = zzlnVarArr3.length;
                                                for (int i12 = 0; i12 < 2; i12++) {
                                                    zzln zzlnVar4 = zzlnVarArr3[i12];
                                                    if (zzlnVar4.zzp() != null) {
                                                        zzlnVar4.zzK();
                                                        if (zzlnVar4 instanceof zzwv) {
                                                            throw null;
                                                        }
                                                    }
                                                }
                                                if (!r.x()) {
                                                    sVar.f3977ab.ao(r);
                                                    sVar.bj(false);
                                                    sVar.ba();
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        s2 = sVar.f3977ab.s();
                        if (s2 != null && sVar.f3977ab.ai() != s2 && !s2.o) {
                            dee s7 = sVar.f3977ab.s();
                            zzyk s8 = s7.s();
                            boolean z9 = false;
                            i8 = 0;
                            while (true) {
                                zzln[] zzlnVarArr4 = sVar.ac;
                                int length5 = zzlnVarArr4.length;
                                if (i8 >= i4) {
                                    zzln zzlnVar5 = zzlnVarArr4[i8];
                                    if (aw(zzlnVar5)) {
                                        zzwg zzp = zzlnVar5.zzp();
                                        zzwg zzwgVar3 = s7.n[i8];
                                        if (!s8.zzb(i8) || zzp != zzwgVar3) {
                                            if (!zzlnVar5.zzR()) {
                                                zzyd zzydVar = s8.zzc[i8];
                                                int zzc = zzydVar != null ? zzydVar.zzc() : 0;
                                                zzad[] zzadVarArr = new zzad[zzc];
                                                for (int i13 = 0; i13 < zzc; i13++) {
                                                    zzadVarArr[i13] = zzydVar.zzd(i13);
                                                }
                                                zzlnVar5.zzH(zzadVarArr, s7.n[i8], s7.y(), s7.f14044c, s7.i.f10620d);
                                            } else if (zzlnVar5.zzW()) {
                                                sVar.bk(i8);
                                            } else {
                                                z9 = true;
                                            }
                                        }
                                    }
                                    i8++;
                                } else if (!z9) {
                                    sVar.bw();
                                }
                            }
                        }
                        z6 = false;
                        while (sVar.bm() && !sVar.p && (ai = sVar.f3977ab.ai()) != null && (deeVar = ai.f14047f) != null && sVar.f3983g >= deeVar.y() && deeVar.o) {
                            if (z6) {
                                sVar.bv();
                            }
                            an = sVar.f3977ab.an();
                            if (an != null) {
                                throw zzigVar2;
                            }
                            if (sVar.i.o.zza.equals(an.i.f10620d.zza)) {
                                zzur zzurVar5 = sVar.i.o;
                                if (zzurVar5.zzb == i2) {
                                    zzur zzurVar6 = an.i.f10620d;
                                    if (zzurVar6.zzb == i2 && zzurVar5.zze != zzurVar6.zze) {
                                        z7 = true;
                                        apg apgVar = an.i;
                                        boolean z10 = z7;
                                        zzur zzurVar7 = apgVar.f10620d;
                                        long j16 = apgVar.f10622f;
                                        zzig zzigVar3 = zzigVar2;
                                        sVar.i = sVar.bd(zzurVar7, j16, apgVar.f10623g, j16, !z10, 0);
                                        sVar.bu();
                                        sVar.bp();
                                        if (sVar.i.h == 3) {
                                            sVar.bs();
                                        }
                                        zzyk s9 = sVar.f3977ab.ai().s();
                                        i7 = 0;
                                        while (true) {
                                            int length6 = sVar.ac.length;
                                            if (i7 >= i4) {
                                                if (s9.zzb(i7)) {
                                                    sVar.ac[i7].zzt();
                                                }
                                                i7++;
                                            }
                                        }
                                        zzigVar2 = zzigVar3;
                                        z6 = true;
                                        i2 = -1;
                                    }
                                }
                            }
                            z7 = false;
                            apg apgVar2 = an.i;
                            boolean z102 = z7;
                            zzur zzurVar72 = apgVar2.f10620d;
                            long j162 = apgVar2.f10622f;
                            zzig zzigVar32 = zzigVar2;
                            sVar.i = sVar.bd(zzurVar72, j162, apgVar2.f10623g, j162, !z102, 0);
                            sVar.bu();
                            sVar.bp();
                            if (sVar.i.h == 3) {
                            }
                            zzyk s92 = sVar.f3977ab.ai().s();
                            i7 = 0;
                            while (true) {
                                int length62 = sVar.ac.length;
                                if (i7 >= i4) {
                                    break;
                                }
                                i7++;
                            }
                            zzigVar2 = zzigVar32;
                            z6 = true;
                            i2 = -1;
                        }
                        zzigVar = zzigVar2;
                        long j17 = sVar.an.zzb;
                    }
                    zzigVar2 = null;
                    i4 = 2;
                    s2 = sVar.f3977ab.s();
                    if (s2 != null) {
                        dee s72 = sVar.f3977ab.s();
                        zzyk s82 = s72.s();
                        boolean z92 = false;
                        i8 = 0;
                        while (true) {
                            zzln[] zzlnVarArr42 = sVar.ac;
                            int length52 = zzlnVarArr42.length;
                            if (i8 >= i4) {
                            }
                            i8++;
                        }
                    }
                    z6 = false;
                    while (sVar.bm()) {
                        if (z6) {
                        }
                        an = sVar.f3977ab.an();
                        if (an != null) {
                        }
                    }
                    zzigVar = zzigVar2;
                    long j172 = sVar.an.zzb;
                }
                int i14 = sVar.i.h;
                if (i14 != 1 && i14 != 4) {
                    dee ai2 = sVar.f3977ab.ai();
                    if (ai2 == null) {
                        sVar.ah.zzj(i4, uptimeMillis + ((sVar.i.h != 3 || sVar.bm()) ? f3976a : 1000L));
                    } else {
                        Trace.beginSection("doSomeWork");
                        sVar.bp();
                        if (ai2.f14046e) {
                            sVar.al = zzen.zzs(SystemClock.elapsedRealtime());
                            ai2.h.zzj(sVar.i.t - sVar.aj, false);
                            z4 = true;
                            z5 = true;
                            int i15 = 0;
                            while (true) {
                                zzln[] zzlnVarArr5 = sVar.ac;
                                int length7 = zzlnVarArr5.length;
                                if (i15 < i4) {
                                    zzln zzlnVar6 = zzlnVarArr5[i15];
                                    if (aw(zzlnVar6)) {
                                        zzlnVar6.zzV(sVar.f3983g, sVar.al);
                                        boolean z11 = z4 && zzlnVar6.zzW();
                                        boolean z12 = ai2.n[i15] != zzlnVar6.zzp();
                                        boolean z13 = z12 || (!z12 && zzlnVar6.zzQ()) || zzlnVar6.zzX() || zzlnVar6.zzW();
                                        sVar.bx(i15, z13);
                                        boolean z14 = z5 && z13;
                                        if (!z13) {
                                            zzlnVar6.zzw();
                                        }
                                        z5 = z14;
                                        z4 = z11;
                                    } else {
                                        sVar.bx(i15, false);
                                    }
                                    i15++;
                                }
                            }
                        } else {
                            ai2.h.zzk();
                            z4 = true;
                            z5 = true;
                        }
                        long j18 = ai2.i.f10619c;
                        if (z4 && ai2.f14046e) {
                            j12 = -9223372036854775807L;
                            if (j18 == -9223372036854775807L || j18 <= sVar.i.t) {
                                if (sVar.p) {
                                    sVar.p = false;
                                    sVar.by(sVar.i.f19077e, 5, false, false);
                                }
                                if (ai2.i.f10617a) {
                                    sVar.cg(4);
                                    sVar.bl();
                                    j13 = -9223372036854775807L;
                                    int i16 = 2;
                                    if (sVar.i.h == 2) {
                                        int i17 = 0;
                                        while (true) {
                                            zzln[] zzlnVarArr6 = sVar.ac;
                                            int length8 = zzlnVarArr6.length;
                                            if (i17 < i16) {
                                                if (aw(zzlnVarArr6[i17]) && sVar.ac[i17].zzp() == ai2.n[i17]) {
                                                    sVar.ac[i17].zzw();
                                                }
                                                i17++;
                                                i16 = 2;
                                            } else {
                                                gzx gzxVar3 = sVar.i;
                                                if (!gzxVar3.s && gzxVar3.q < 500000 && sVar.bz()) {
                                                    if (sVar.f3979c == j13) {
                                                        sVar.f3979c = SystemClock.elapsedRealtime();
                                                    } else if (SystemClock.elapsedRealtime() - sVar.f3979c >= 4000) {
                                                        throw new IllegalStateException("Playback stuck buffering and not loading");
                                                    }
                                                    boolean z15 = !sVar.bm() && sVar.i.h == 3;
                                                    sVar.i.getClass();
                                                    i5 = sVar.i.h;
                                                    if (i5 != 4 && (z15 || i5 == 2 || (i5 == 3 && sVar.s != 0))) {
                                                        sVar.ah.zzj(2, uptimeMillis + ((i5 == 3 || sVar.bm()) ? f3976a : 1000L));
                                                    }
                                                    Trace.endSection();
                                                }
                                            }
                                        }
                                    }
                                    sVar.f3979c = j13;
                                    if (sVar.bm()) {
                                    }
                                    sVar.i.getClass();
                                    i5 = sVar.i.h;
                                    if (i5 != 4) {
                                        sVar.ah.zzj(2, uptimeMillis + ((i5 == 3 || sVar.bm()) ? f3976a : 1000L));
                                    }
                                    Trace.endSection();
                                }
                            }
                        } else {
                            j12 = -9223372036854775807L;
                        }
                        gzx gzxVar4 = sVar.i;
                        if (gzxVar4.h == i4) {
                            if (sVar.s == 0) {
                                break;
                            } else if (z5) {
                                if (gzxVar4.s) {
                                    dee ai3 = sVar.f3977ab.ai();
                                    long zzb3 = sVar.cd(sVar.i.i, ai3.i.f10620d) ? sVar.ap.zzb() : j12;
                                    dee deeVar4 = sVar.f3977ab.m;
                                    boolean z16 = deeVar4.x() && deeVar4.i.f10617a;
                                    boolean z17 = deeVar4.i.f10620d.zzb() && !deeVar4.f14046e;
                                    if (!z16 && !z17) {
                                        zzkl zzklVar = sVar.h;
                                        zzoj zzojVar = sVar.u;
                                        gzx gzxVar5 = sVar.i;
                                        zzbv zzbvVar3 = gzxVar5.i;
                                        zzur zzurVar8 = ai3.i.f10620d;
                                        j13 = j12;
                                        long j19 = sVar.f3983g - ai3.f14044c;
                                        long j20 = gzxVar5.l;
                                        dee deeVar5 = sVar.f3977ab.m;
                                        if (deeVar5 == null) {
                                            zzurVar4 = zzurVar8;
                                            max = 0;
                                        } else {
                                            zzurVar4 = zzurVar8;
                                            max = Math.max(0L, j20 - (sVar.f3983g - deeVar5.f14044c));
                                        }
                                        if (zzklVar.zzi(new zzkk(zzojVar, zzbvVar3, zzurVar4, j19, max, sVar.k.zzc().zzb, sVar.i.f19079g, sVar.m, zzb3))) {
                                            sVar.cg(3);
                                            sVar.f3980d = zzigVar;
                                            if (sVar.bm()) {
                                                sVar.bf(false, false);
                                                tm tmVar = sVar.k;
                                                tmVar.f20053f = true;
                                                tmVar.f20051d.zzd();
                                                sVar.bs();
                                            }
                                        }
                                        if (sVar.i.h == 3) {
                                            if (sVar.s == 0) {
                                                if (!sVar.bn()) {
                                                    sVar.bf(sVar.bm(), false);
                                                    sVar.cg(2);
                                                    if (sVar.m) {
                                                        for (dee ai4 = sVar.f3977ab.ai(); ai4 != null; ai4 = ai4.f14047f) {
                                                            for (zzyd zzydVar2 : ai4.s().zzc) {
                                                            }
                                                        }
                                                        sVar.ap.zzc();
                                                    }
                                                    sVar.bl();
                                                }
                                            }
                                        }
                                    }
                                }
                                j13 = j12;
                                sVar.cg(3);
                                sVar.f3980d = zzigVar;
                                if (sVar.bm()) {
                                }
                            }
                            int i162 = 2;
                            if (sVar.i.h == 2) {
                            }
                            sVar.f3979c = j13;
                            if (sVar.bm()) {
                            }
                            sVar.i.getClass();
                            i5 = sVar.i.h;
                            if (i5 != 4) {
                            }
                            Trace.endSection();
                        }
                        j13 = j12;
                        if (sVar.i.h == 3) {
                        }
                        int i1622 = 2;
                        if (sVar.i.h == 2) {
                        }
                        sVar.f3979c = j13;
                        if (sVar.bm()) {
                        }
                        sVar.i.getClass();
                        i5 = sVar.i.h;
                        if (i5 != 4) {
                        }
                        Trace.endSection();
                    }
                }
                z = true;
                sVar.bv();
                return z;
            case 3:
                try {
                    cuuVar = (cuu) message.obj;
                    sVar.ae.zza(1);
                    ax = ax(sVar.i.i, cuuVar, sVar.au, sVar.aq, sVar.r, sVar.as);
                    if (ax == null) {
                        Pair br = sVar.br(sVar.i.i);
                        zzur zzurVar9 = (zzur) br.first;
                        long longValue = ((Long) br.second).longValue();
                        z3 = !sVar.i.i.zzo();
                        v = zzurVar9;
                        j3 = longValue;
                        j = -9223372036854775807L;
                        j2 = 0;
                    } else {
                        Object obj = ax.first;
                        long longValue2 = ((Long) ax.second).longValue();
                        j = cuuVar.f13563c == -9223372036854775807L ? -9223372036854775807L : longValue2;
                        j2 = 0;
                        v = sVar.f3977ab.v(sVar.i.i, obj, longValue2);
                        if (v.zzb()) {
                            sVar.i.i.zzn(v.zza, sVar.as);
                            if (sVar.as.zze(v.zzb) == v.zzc) {
                                sVar.as.zzh();
                            }
                            j3 = 0;
                            z3 = true;
                        } else {
                            z3 = cuuVar.f13563c == -9223372036854775807L;
                            j3 = longValue2;
                        }
                    }
                    try {
                    } catch (Throwable th) {
                        th = th;
                        zzurVar = v;
                        j4 = j;
                    }
                } catch (zzbh e9) {
                    e = e9;
                    sVar.bh(e, e.zzb == 1 ? true != e.zza ? 3003 : 3001 : 1000);
                    z = true;
                    sVar.bv();
                    return z;
                } catch (zzge e10) {
                    e = e10;
                    sVar.bh(e, e.zza);
                    z = true;
                    sVar.bv();
                    return z;
                } catch (zzig e11) {
                    e = e11;
                    if (e.zzc == 1 && (s = sVar.f3977ab.s()) != null) {
                        e = e.a(s.i.f10620d);
                    }
                    if (e.zzi && (sVar.f3980d == null || (i = e.zza) == 5004 || i == 5003)) {
                        zzdt.zzg("ExoPlayerImplInternal", "Recoverable renderer error", e);
                        zzig zzigVar4 = sVar.f3980d;
                        if (zzigVar4 != null) {
                            zzigVar4.addSuppressed(e);
                            e = sVar.f3980d;
                        } else {
                            sVar.f3980d = e;
                        }
                        zzdm zzdmVar = sVar.ah;
                        zzdmVar.zzk(zzdmVar.zzc(25, e));
                        z = true;
                        sVar.bv();
                        return z;
                    }
                    zzig zzigVar5 = sVar.f3980d;
                    if (zzigVar5 != null) {
                        zzigVar5.addSuppressed(e);
                        e = sVar.f3980d;
                    }
                    zzdt.zzd("ExoPlayerImplInternal", "Playback error", e);
                    z = true;
                    if (e.zzc == 1) {
                        eac eacVar2 = sVar.f3977ab;
                        if (eacVar2.ai() != eacVar2.s()) {
                            while (true) {
                                eac eacVar3 = sVar.f3977ab;
                                if (eacVar3.ai() != eacVar3.s()) {
                                    sVar.f3977ab.an();
                                } else {
                                    dee ai5 = sVar.f3977ab.ai();
                                    ai5.getClass();
                                    sVar.bv();
                                    apg apgVar3 = ai5.i;
                                    zzur zzurVar10 = apgVar3.f10620d;
                                    long j21 = apgVar3.f10622f;
                                    sVar.i = sVar.bd(zzurVar10, j21, apgVar3.f10623g, j21, true, 0);
                                }
                            }
                        }
                        z2 = false;
                        z = true;
                    } else {
                        z2 = false;
                    }
                    sVar.ca(z, z2);
                    sVar.i = sVar.i.w(e);
                    sVar.bv();
                    return z;
                } catch (zzri e12) {
                    e = e12;
                    sVar.bh(e, e.zza);
                    z = true;
                    sVar.bv();
                    return z;
                } catch (zztr e13) {
                    e = e13;
                    sVar.bh(e, 1002);
                    z = true;
                    sVar.bv();
                    return z;
                } catch (IOException e14) {
                    e = e14;
                    sVar.bh(e, ZeusPluginEventCallback.EVENT_START_LOAD);
                    z = true;
                    sVar.bv();
                    return z;
                } catch (RuntimeException e15) {
                    e = e15;
                    zzig zzd = zzig.zzd(e, ((e instanceof IllegalStateException) || (e instanceof IllegalArgumentException)) ? 1004 : 1000);
                    zzdt.zzd("ExoPlayerImplInternal", "Playback error", zzd);
                    sVar.ca(true, false);
                    sVar.i = sVar.i.w(zzd);
                    z = true;
                    sVar.bv();
                    return z;
                }
                if (sVar.i.i.zzo()) {
                    sVar.l = cuuVar;
                } else if (ax == null) {
                    if (sVar.i.h != 1) {
                        sVar.cg(4);
                    }
                    sVar.bi(false, true, false, true);
                } else {
                    try {
                        try {
                            try {
                                try {
                                    if (v.equals(sVar.i.o)) {
                                        try {
                                            dee ai6 = sVar.f3977ab.ai();
                                            zza = (ai6 == null || !ai6.f14046e || j3 == j2) ? j3 : ai6.h.zza(j3, sVar.af);
                                            j7 = zza;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            zzurVar = v;
                                            j6 = j;
                                        }
                                        try {
                                            if (zzen.zzv(zza) != zzen.zzv(sVar.i.t) || ((i3 = (gzxVar = sVar.i).h) != 2 && i3 != 3)) {
                                                zzurVar = v;
                                                j6 = j;
                                                j8 = j7;
                                            }
                                            long j22 = gzxVar.t;
                                            bd = sVar.bd(v, j22, j, j22, z3, 2);
                                            sVar.i = bd;
                                            z = true;
                                            sVar.bv();
                                            return z;
                                        } catch (Throwable th3) {
                                            th = th3;
                                            zzurVar = v;
                                            j6 = j;
                                            j4 = j6;
                                            j5 = j3;
                                            sVar.i = sVar.bd(zzurVar, j5, j4, j5, z3, 2);
                                            throw th;
                                        }
                                    }
                                    zzurVar = v;
                                    j6 = j;
                                    j8 = j3;
                                    sVar.ce(zzbvVar, zzurVar2, zzbvVar, gzxVar2.o, j9, true);
                                    zzurVar3 = zzurVar2;
                                    j10 = j9;
                                    j11 = cc;
                                    sVar = this;
                                    bd = sVar.bd(zzurVar3, j11, j10, j11, z3, 2);
                                    sVar.i = bd;
                                    z = true;
                                    sVar.bv();
                                    return z;
                                } catch (Throwable th4) {
                                    th = th4;
                                    zzurVar = zzurVar2;
                                    j4 = j9;
                                    j5 = cc;
                                    sVar.i = sVar.bd(zzurVar, j5, j4, j5, z3, 2);
                                    throw th;
                                }
                                zzbvVar = gzxVar2.i;
                                j9 = j6;
                            } catch (Throwable th5) {
                                th = th5;
                                zzurVar = zzurVar2;
                                j4 = j6;
                                j5 = cc;
                                sVar.i = sVar.bd(zzurVar, j5, j4, j5, z3, 2);
                                throw th;
                            }
                            gzxVar2 = sVar.i;
                            zzurVar2 = zzurVar;
                        } catch (Throwable th6) {
                            th = th6;
                        }
                        boolean z18 = sVar.i.h == 4;
                        eac eacVar4 = sVar.f3977ab;
                        cc = sVar.cc(zzurVar, j8, eacVar4.f15171a != eacVar4.k, z18);
                        z3 |= j3 != cc;
                    } catch (Throwable th7) {
                        th = th7;
                        j4 = j6;
                        j5 = j3;
                        sVar.i = sVar.bd(zzurVar, j5, j4, j5, z3, 2);
                        throw th;
                    }
                }
                zzurVar3 = v;
                j10 = j;
                j11 = j3;
                sVar = this;
                bd = sVar.bd(zzurVar3, j11, j10, j11, z3, 2);
                sVar.i = bd;
                z = true;
                sVar.bv();
                return z;
            case 4:
                zzbj zzbjVar = (zzbj) message.obj;
                sVar.ah.zzf(16);
                sVar.k.zzg(zzbjVar);
                zzbj zzc2 = sVar.k.zzc();
                sVar.cf(zzc2, zzc2.zzb, true, true);
                z = true;
                sVar.bv();
                return z;
            case 5:
                sVar.af = (zzls) message.obj;
                z = true;
                sVar.bv();
                return z;
            case 6:
                sVar.ca(false, true);
                z = true;
                sVar.bv();
                return z;
            case 7:
                try {
                    sVar.bi(true, false, true, false);
                    int i18 = 0;
                    while (true) {
                        int length9 = sVar.ac.length;
                        if (i18 >= 2) {
                            sVar.h.zzd(sVar.u);
                            sVar.cg(1);
                            HandlerThread handlerThread = sVar.n;
                            if (handlerThread != null) {
                                handlerThread.quit();
                            }
                            synchronized (this) {
                                sVar.am = true;
                                sVar.notifyAll();
                            }
                            return true;
                        }
                        sVar.q[i18].zzq();
                        sVar.ac[i18].zzG();
                        i18++;
                    }
                } catch (Throwable th8) {
                    HandlerThread handlerThread2 = sVar.n;
                    if (handlerThread2 != null) {
                        handlerThread2.quit();
                    }
                    synchronized (this) {
                        sVar.am = true;
                        sVar.notifyAll();
                        throw th8;
                    }
                }
            case 8:
                zzup zzupVar = (zzup) message.obj;
                dee deeVar6 = sVar.f3977ab.m;
                if (deeVar6 != null && deeVar6.h == zzupVar) {
                    float f2 = sVar.k.zzc().zzb;
                    deeVar6.z(sVar.i.i);
                    sVar.h.zzf(sVar.u, sVar.i.i, deeVar6.i.f10620d, sVar.ac, deeVar6.r(), deeVar6.s().zzc);
                    if (deeVar6 == sVar.f3977ab.ai()) {
                        sVar.bg(deeVar6.i.f10622f);
                        sVar.bw();
                        gzx gzxVar6 = sVar.i;
                        zzur zzurVar11 = gzxVar6.o;
                        long j23 = deeVar6.i.f10622f;
                        sVar.i = sVar.bd(zzurVar11, j23, gzxVar6.r, j23, false, 5);
                    }
                    sVar.ba();
                }
                z = true;
                sVar.bv();
                return z;
            case 9:
                zzup zzupVar2 = (zzup) message.obj;
                dee deeVar7 = sVar.f3977ab.m;
                if (deeVar7 != null && deeVar7.h == zzupVar2) {
                    long j24 = sVar.f3983g;
                    if (deeVar7 != null) {
                        zzdb.zzf(deeVar7.f14047f == null);
                        if (deeVar7.f14046e) {
                            deeVar7.h.zzm(j24 - deeVar7.f14044c);
                        }
                    }
                    sVar.ba();
                }
                z = true;
                sVar.bv();
                return z;
            case 10:
                sVar.bb();
                z = true;
                sVar.bv();
                return z;
            case 11:
                int i19 = message.arg1;
                sVar.au = i19;
                if (!sVar.f3977ab.aa(sVar.i.i, i19)) {
                    sVar.bt(true);
                }
                sVar.bj(false);
                z = true;
                sVar.bv();
                return z;
            case 12:
                boolean z19 = message.arg1 != 0;
                sVar.aq = z19;
                if (!sVar.f3977ab.ab(sVar.i.i, z19)) {
                    sVar.bt(true);
                }
                sVar.bj(false);
                z = true;
                sVar.bv();
                return z;
            case 13:
                boolean z20 = message.arg1 != 0;
                AtomicBoolean atomicBoolean = (AtomicBoolean) message.obj;
                if (sVar.ad != z20) {
                    sVar.ad = z20;
                    if (!z20) {
                        zzln[] zzlnVarArr7 = sVar.ac;
                        int length10 = zzlnVarArr7.length;
                        for (int i20 = 0; i20 < 2; i20++) {
                            zzln zzlnVar7 = zzlnVarArr7[i20];
                            if (!aw(zzlnVar7) && sVar.ai.remove(zzlnVar7)) {
                                zzlnVar7.zzI();
                            }
                        }
                    }
                }
                if (atomicBoolean != null) {
                    synchronized (this) {
                        atomicBoolean.set(true);
                        sVar.notifyAll();
                    }
                }
                z = true;
                sVar.bv();
                return z;
            case 14:
                zzlj zzljVar = (zzlj) message.obj;
                if (zzljVar.zzb() == sVar.t) {
                    ay(zzljVar);
                    int i21 = sVar.i.h;
                    if (i21 == 3 || i21 == 2) {
                        sVar.ah.zzi(2);
                    }
                } else {
                    sVar.ah.zzc(15, zzljVar).zza();
                }
                z = true;
                sVar.bv();
                return z;
            case 15:
                final zzlj zzljVar2 = (zzlj) message.obj;
                Looper zzb4 = zzljVar2.zzb();
                if (zzb4.getThread().isAlive()) {
                    sVar.ar.zzd(zzb4, null).zzh(new Runnable(sVar) { // from class: com.google.android.gms.internal.ads.zzjy
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                s.ay(zzljVar2);
                            } catch (zzig e16) {
                                zzdt.zzd("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e16);
                                throw new RuntimeException(e16);
                            }
                        }
                    });
                } else {
                    zzdt.zzf("TAG", "Trying to send message on a dead thread.");
                    zzljVar2.zzh(false);
                }
                z = true;
                sVar.bv();
                return z;
            case 16:
                zzbj zzbjVar2 = (zzbj) message.obj;
                sVar.cf(zzbjVar2, zzbjVar2.zzb, true, false);
                z = true;
                sVar.bv();
                return z;
            case 17:
                bna bnaVar = (bna) message.obj;
                sVar.ae.zza(1);
                if (bnaVar.f11858c != -1) {
                    aqw aqwVar = new aqw(bnaVar.f11857b, bnaVar.f11856a);
                    int i22 = bnaVar.f11858c;
                    j14 = bnaVar.f11859d;
                    sVar.l = new cuu(aqwVar, i22, j14);
                }
                sVar.bq(sVar.w.m(bnaVar.f11857b, bnaVar.f11856a), false);
                z = true;
                sVar.bv();
                return z;
            case 18:
                bna bnaVar2 = (bna) message.obj;
                int i23 = message.arg1;
                sVar.ae.zza(1);
                feh fehVar = sVar.w;
                if (i23 == -1) {
                    i23 = fehVar.i.size();
                }
                sVar.bq(fehVar.s(i23, bnaVar2.f11857b, bnaVar2.f11856a), false);
                z = true;
                sVar.bv();
                return z;
            case 19:
                awf.e(message.obj);
                sVar.ae.zza(1);
                throw null;
            case 20:
                int i24 = message.arg1;
                int i25 = message.arg2;
                zzwj zzwjVar = (zzwj) message.obj;
                sVar.ae.zza(1);
                sVar.bq(sVar.w.y(i24, i25, zzwjVar), false);
                z = true;
                sVar.bv();
                return z;
            case 21:
                zzwj zzwjVar2 = (zzwj) message.obj;
                sVar.ae.zza(1);
                sVar.bq(sVar.w.u(zzwjVar2), false);
                z = true;
                sVar.bv();
                return z;
            case 22:
                sVar.bq(sVar.w.r(), true);
                z = true;
                sVar.bv();
                return z;
            case 23:
                sVar.ag = message.arg1 != 0;
                sVar.bu();
                if (sVar.p && sVar.f3977ab.s() != sVar.f3977ab.ai()) {
                    sVar.bt(true);
                    sVar.bj(false);
                }
                z = true;
                sVar.bv();
                return z;
            case 24:
            default:
                return false;
            case 25:
                sVar.bb();
                sVar.bt(true);
                z = true;
                sVar.bv();
                return z;
            case 26:
                sVar.bb();
                sVar.bt(true);
                z = true;
                sVar.bv();
                return z;
            case 27:
                int i26 = message.arg1;
                int i27 = message.arg2;
                List list = (List) message.obj;
                sVar.ae.zza(1);
                sVar.bq(sVar.w.v(i26, i27, list), false);
                z = true;
                sVar.bv();
                return z;
            case 28:
                zziq zziqVar = (zziq) message.obj;
                sVar.an = zziqVar;
                eac eacVar5 = sVar.f3977ab;
                zzbv zzbvVar4 = sVar.i.i;
                eacVar5.aj(zziqVar);
                z = true;
                sVar.bv();
                return z;
            case 29:
                sVar.ae.zza(1);
                sVar.bi(false, false, false, true);
                sVar.h.zzc(sVar.u);
                sVar.cg(true != sVar.i.i.zzo() ? 2 : 4);
                sVar.w.x(sVar.f3978b.zze());
                sVar.ah.zzi(2);
                z = true;
                sVar.bv();
                return z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzie
    public final void zza(zzbj zzbjVar) {
        this.ah.zzc(16, zzbjVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzwh
    public final /* bridge */ /* synthetic */ void zzg(zzwi zzwiVar) {
        this.ah.zzc(9, (zzup) zzwiVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final void zzh() {
        zzdm zzdmVar = this.ah;
        zzdmVar.zzf(2);
        zzdmVar.zzi(22);
    }

    @Override // com.google.android.gms.internal.ads.zzuo
    public final void zzi(zzup zzupVar) {
        this.ah.zzc(8, zzupVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzyi
    public final void zzj() {
        this.ah.zzi(10);
    }

    @Override // com.google.android.gms.internal.ads.zzlh
    public final synchronized void zzm(zzlj zzljVar) {
        if (!this.am && this.t.getThread().isAlive()) {
            this.ah.zzc(14, zzljVar).zza();
            return;
        }
        zzdt.zzf("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        zzljVar.zzh(false);
    }
}
