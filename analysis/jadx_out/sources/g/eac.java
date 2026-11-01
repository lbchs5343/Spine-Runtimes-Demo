package g;

import android.util.Pair;
import com.google.android.gms.internal.ads.zzbt;
import com.google.android.gms.internal.ads.zzbu;
import com.google.android.gms.internal.ads.zzbv;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzdm;
import com.google.android.gms.internal.ads.zzfzl;
import com.google.android.gms.internal.ads.zziq;
import com.google.android.gms.internal.ads.zzjz;
import com.google.android.gms.internal.ads.zzlw;
import com.google.android.gms.internal.ads.zzur;
import com.google.android.gms.internal.ads.zzyd;
import com.google.android.gms.internal.ads.zzyk;
import g.eac;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class eac {

    /* renamed from: a, reason: collision with root package name */
    public dee f15171a;

    /* renamed from: b, reason: collision with root package name */
    public int f15172b;

    /* renamed from: c, reason: collision with root package name */
    public final zzjz f15173c;

    /* renamed from: e, reason: collision with root package name */
    public final zzdm f15175e;

    /* renamed from: f, reason: collision with root package name */
    public Object f15176f;

    /* renamed from: g, reason: collision with root package name */
    public long f15177g;
    public int i;
    public long j;
    public dee k;
    public dee m;
    public final zzlw n;
    public boolean o;
    public final zzbt h = new zzbt();
    public final zzbu l = new zzbu();

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f15174d = new ArrayList();

    public eac(zzlw zzlwVar, zzdm zzdmVar, zzjz zzjzVar, zziq zziqVar) {
        this.n = zzlwVar;
        this.f15175e = zzdmVar;
        this.f15173c = zzjzVar;
    }

    public static zzur p(zzbv zzbvVar, Object obj, long j, long j2, zzbu zzbuVar, zzbt zzbtVar) {
        zzbvVar.zzn(obj, zzbtVar);
        zzbvVar.zze(zzbtVar.zzc, zzbuVar, 0L);
        zzbvVar.zza(obj);
        zzbtVar.zzb();
        zzbvVar.zzn(obj, zzbtVar);
        int zzd = zzbtVar.zzd(j);
        return zzd == -1 ? new zzur(obj, j2, zzbtVar.zzc(j)) : new zzur(obj, zzd, zzbtVar.zze(zzd), j2);
    }

    public final boolean aa(zzbv zzbvVar, int i) {
        this.i = i;
        return ad(zzbvVar);
    }

    public final boolean ab(zzbv zzbvVar, boolean z) {
        this.o = z;
        return ad(zzbvVar);
    }

    public final long ac(Object obj) {
        for (int i = 0; i < this.f15174d.size(); i++) {
            dee deeVar = (dee) this.f15174d.get(i);
            if (deeVar.l.equals(obj)) {
                return deeVar.i.f10620d.zzd;
            }
        }
        return -1L;
    }

    public final boolean ad(zzbv zzbvVar) {
        zzbv zzbvVar2;
        dee deeVar;
        dee deeVar2 = this.f15171a;
        if (deeVar2 == null) {
            return true;
        }
        int zza = zzbvVar.zza(deeVar2.l);
        while (true) {
            zzbvVar2 = zzbvVar;
            zza = zzbvVar2.zzi(zza, this.h, this.l, this.i, this.o);
            while (true) {
                deeVar = deeVar2.f14047f;
                if (deeVar == null || deeVar2.i.f10621e) {
                    break;
                }
                deeVar2 = deeVar;
            }
            if (zza == -1 || deeVar == null || zzbvVar2.zza(deeVar.l) != zza) {
                break;
            }
            deeVar2 = deeVar;
            zzbvVar = zzbvVar2;
        }
        boolean ao = ao(deeVar2);
        deeVar2.i = ag(zzbvVar2, deeVar2.i);
        return !ao;
    }

    public final boolean ae() {
        dee deeVar = this.m;
        if (deeVar != null) {
            return !deeVar.i.f10617a && deeVar.x() && this.m.i.f10619c != -9223372036854775807L && this.f15172b < 100;
        }
        return true;
    }

    public final void af() {
        if (this.f15174d.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.f15174d.size(); i++) {
            ((dee) this.f15174d.get(i)).p();
        }
        this.f15174d = arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final apg ag(zzbv zzbvVar, apg apgVar) {
        long j;
        long j2;
        long j3;
        long j4;
        int i;
        zzur zzurVar = apgVar.f10620d;
        boolean z = !zzurVar.zzb() && zzurVar.zze == -1;
        boolean y = y(zzbvVar, zzurVar);
        boolean w = w(zzbvVar, zzurVar, z);
        Object obj = zzurVar.zza;
        zzbt zzbtVar = this.h;
        zzbvVar.zzn(obj, zzbtVar);
        if (zzurVar.zzb() || (i = zzurVar.zze) == -1) {
            j = -9223372036854775807L;
        } else {
            zzbtVar.zzg(i);
            j = 0;
        }
        if (zzurVar.zzb()) {
            j2 = zzbtVar.zzf(zzurVar.zzb, zzurVar.zzc);
        } else {
            if (j != -9223372036854775807L) {
                j3 = 0;
                j4 = 0;
                if (zzurVar.zzb()) {
                    int i2 = zzurVar.zze;
                    if (i2 != -1) {
                        zzbtVar.zzk(i2);
                    }
                } else {
                    zzbtVar.zzk(zzurVar.zzb);
                }
                return new apg(zzurVar, apgVar.f10622f, apgVar.f10623g, j3, j4, z, y, w);
            }
            j2 = zzbtVar.zzd;
        }
        j3 = j;
        j4 = j2;
        if (zzurVar.zzb()) {
        }
        return new apg(zzurVar, apgVar.f10622f, apgVar.f10623g, j3, j4, z, y, w);
    }

    public final dee ah(apg apgVar) {
        dee deeVar;
        long j = apgVar.f10622f;
        dee deeVar2 = this.m;
        long j2 = deeVar2 == null ? 1000000000000L : (deeVar2.f14044c + deeVar2.i.f10619c) - j;
        int i = 0;
        while (true) {
            if (i >= this.f15174d.size()) {
                deeVar = null;
                break;
            }
            apg apgVar2 = ((dee) this.f15174d.get(i)).i;
            long j3 = apgVar2.f10619c;
            long j4 = apgVar.f10619c;
            if ((j3 == -9223372036854775807L || j3 == j4) && apgVar2.f10622f == j && apgVar2.f10620d.equals(apgVar.f10620d)) {
                deeVar = (dee) this.f15174d.remove(i);
                break;
            }
            i++;
        }
        if (deeVar == null) {
            com.google.android.gms.internal.ads.s sVar = this.f15173c.zza;
            deeVar = new dee(sVar.q, j2, sVar.z, sVar.h.zzj(), sVar.w, apgVar, sVar.at);
        } else {
            deeVar.i = apgVar;
            deeVar.f14044c = j2;
        }
        dee deeVar3 = this.m;
        if (deeVar3 == null) {
            this.f15171a = deeVar;
            this.k = deeVar;
        } else if (deeVar != deeVar3.f14047f) {
            deeVar3.q();
            deeVar3.f14047f = deeVar;
        }
        this.f15176f = null;
        this.m = deeVar;
        this.f15172b++;
        al();
        return deeVar;
    }

    public final dee ai() {
        return this.f15171a;
    }

    public final void aj(zziq zziqVar) {
        long j = zziqVar.zzb;
        af();
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b6, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00b2, code lost:
    
        if (ao(r3) != false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:?, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean ak(zzbv zzbvVar, long j, long j2) {
        apg apgVar;
        boolean z;
        dee deeVar = this.f15171a;
        dee deeVar2 = null;
        while (true) {
            if (deeVar == null) {
                break;
            }
            apg apgVar2 = deeVar.i;
            if (deeVar2 == null) {
                apgVar = ag(zzbvVar, apgVar2);
            } else {
                apg am = am(zzbvVar, deeVar2, j);
                if (am == null) {
                    if (!ao(deeVar2)) {
                        break;
                    }
                    return false;
                }
                if (apgVar2.f10622f != am.f10622f || !apgVar2.f10620d.equals(am.f10620d)) {
                    break;
                }
                apgVar = am;
            }
            long j3 = apgVar.f10619c;
            long j4 = apgVar2.f10623g;
            if (j4 == apgVar.f10623g) {
                z = false;
            } else {
                z = false;
                apgVar = new apg(apgVar.f10620d, apgVar.f10622f, j4, apgVar.f10618b, j3, apgVar.f10621e, apgVar.h, apgVar.f10617a);
            }
            deeVar.i = apgVar;
            long j5 = apgVar2.f10619c;
            if (j5 == -9223372036854775807L || j5 == j3) {
                deeVar2 = deeVar;
                deeVar = deeVar.f14047f;
            } else {
                deeVar.v();
                boolean z2 = deeVar == this.k && (j2 == Long.MIN_VALUE || j2 >= ((j3 > (-9223372036854775807L) ? 1 : (j3 == (-9223372036854775807L) ? 0 : -1)) == 0 ? Long.MAX_VALUE : j3 + deeVar.f14044c));
                if (ao(deeVar) || z2) {
                    return z;
                }
            }
        }
    }

    public final void al() {
        final zzfzl zzfzlVar = new zzfzl();
        for (dee deeVar = this.f15171a; deeVar != null; deeVar = deeVar.f14047f) {
            zzfzlVar.zzf(deeVar.i.f10620d);
        }
        dee deeVar2 = this.k;
        final zzur zzurVar = deeVar2 == null ? null : deeVar2.i.f10620d;
        this.f15175e.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzks
            @Override // java.lang.Runnable
            public final void run() {
                eac eacVar = eac.this;
                zzfzl zzfzlVar2 = zzfzlVar;
                eacVar.n.zzT(zzfzlVar2.zzi(), zzurVar);
            }
        });
    }

    public final apg am(zzbv zzbvVar, dee deeVar, long j) {
        zzbv zzbvVar2;
        long j2;
        zzbt zzbtVar;
        Object obj;
        long j3;
        apg apgVar = deeVar.i;
        long j4 = deeVar.f14044c;
        long j5 = apgVar.f10619c;
        long j6 = apgVar.f10623g;
        zzur zzurVar = apgVar.f10620d;
        long j7 = j4 + j5;
        boolean z = apgVar.f10621e;
        long j8 = j7 - j;
        zzbt zzbtVar2 = this.h;
        if (!z) {
            zzbvVar.zzn(zzurVar.zza, zzbtVar2);
            if (!zzurVar.zzb()) {
                int i = zzurVar.zze;
                if (i != -1) {
                    zzbtVar2.zzj(i);
                }
                int i2 = zzurVar.zze;
                int zze = zzbtVar2.zze(i2);
                zzbtVar2.zzk(i2);
                if (zze != zzbtVar2.zza(zzurVar.zze)) {
                    return q(zzbvVar, zzurVar.zza, zzurVar.zze, zze, apgVar.f10619c, zzurVar.zzd);
                }
                Object obj2 = zzurVar.zza;
                int i3 = zzurVar.zze;
                zzbvVar.zzn(obj2, zzbtVar2);
                zzbtVar2.zzg(i3);
                long j9 = zzbtVar2.zzg.zza(i3).zzg;
                return z(zzbvVar, zzurVar.zza, 0L, apgVar.f10619c, zzurVar.zzd);
            }
            int i4 = zzurVar.zzb;
            if (zzbtVar2.zza(i4) == -1) {
                return null;
            }
            int zza = zzbtVar2.zzg.zza(i4).zza(zzurVar.zzc);
            if (zza < 0) {
                return q(zzbvVar, zzurVar.zza, i4, zza, apgVar.f10623g, zzurVar.zzd);
            }
            if (j6 == -9223372036854775807L) {
                zzbvVar2 = zzbvVar;
                Pair zzm = zzbvVar2.zzm(this.l, zzbtVar2, zzbtVar2.zzc, -9223372036854775807L, Math.max(0L, j8));
                if (zzm == null) {
                    return null;
                }
                j2 = ((Long) zzm.second).longValue();
            } else {
                zzbvVar2 = zzbvVar;
                j2 = j6;
            }
            Object obj3 = zzurVar.zza;
            int i5 = zzurVar.zzb;
            zzbvVar2.zzn(obj3, zzbtVar2);
            zzbtVar2.zzg(i5);
            long j10 = zzbtVar2.zzg.zza(i5).zzg;
            return z(zzbvVar2, zzurVar.zza, Math.max(0L, j2), apgVar.f10623g, zzurVar.zzd);
        }
        long j11 = 0;
        int zzi = zzbvVar.zzi(zzbvVar.zza(zzurVar.zza), this.h, this.l, this.i, this.o);
        if (zzi != -1) {
            int i6 = zzbvVar.zzd(zzi, zzbtVar2, true).zzc;
            Object obj4 = zzbtVar2.zzb;
            obj4.getClass();
            long j12 = zzurVar.zzd;
            if (zzbvVar.zze(i6, this.l, 0L).zzn == zzi) {
                long max = Math.max(0L, j8);
                zzbtVar = zzbtVar2;
                Pair zzm2 = zzbvVar.zzm(this.l, this.h, i6, -9223372036854775807L, max);
                if (zzm2 != null) {
                    Object obj5 = zzm2.first;
                    long longValue = ((Long) zzm2.second).longValue();
                    dee deeVar2 = deeVar.f14047f;
                    if (deeVar2 == null || !deeVar2.l.equals(obj5)) {
                        long ac = ac(obj5);
                        if (ac == -1) {
                            ac = this.f15177g;
                            this.f15177g = 1 + ac;
                        }
                        j12 = ac;
                    } else {
                        j12 = deeVar2.i.f10620d.zzd;
                    }
                    obj = obj5;
                    j3 = longValue;
                    j11 = -9223372036854775807L;
                }
            } else {
                zzbtVar = zzbtVar2;
                obj = obj4;
                j3 = 0;
            }
            zzur p = p(zzbvVar, obj, j3, j12, this.l, this.h);
            if (j11 != -9223372036854775807L && j6 != -9223372036854775807L) {
                zzbvVar.zzn(zzurVar.zza, zzbtVar).zzb();
                int i7 = zzbtVar.zzg.zzd;
            }
            return u(zzbvVar, p, j11, j3);
        }
        return null;
    }

    public final dee an() {
        dee deeVar = this.f15171a;
        if (deeVar == null) {
            return null;
        }
        if (deeVar == this.k) {
            this.k = deeVar.f14047f;
        }
        deeVar.p();
        int i = this.f15172b - 1;
        this.f15172b = i;
        if (i == 0) {
            this.m = null;
            dee deeVar2 = this.f15171a;
            this.f15176f = deeVar2.l;
            this.j = deeVar2.i.f10620d.zzd;
        }
        this.f15171a = this.f15171a.f14047f;
        al();
        return this.f15171a;
    }

    public final boolean ao(dee deeVar) {
        zzdb.zzb(deeVar);
        int i = 0;
        if (deeVar.equals(this.m)) {
            return false;
        }
        this.m = deeVar;
        boolean z = false;
        while (true) {
            deeVar = deeVar.f14047f;
            if (deeVar == null) {
                break;
            }
            if (deeVar == this.k) {
                this.k = this.f15171a;
                z = true;
            }
            deeVar.p();
            this.f15172b--;
        }
        dee deeVar2 = this.m;
        deeVar2.getClass();
        if (deeVar2.f14047f != null) {
            deeVar2.q();
            deeVar2.f14047f = null;
            while (true) {
                zzyk zzykVar = deeVar2.f14045d;
                if (i >= zzykVar.zza) {
                    break;
                }
                zzykVar.zzb(i);
                zzyd zzydVar = deeVar2.f14045d.zzc[i];
                i++;
            }
        }
        al();
        return z;
    }

    public final apg q(zzbv zzbvVar, Object obj, int i, int i2, long j, long j2) {
        zzur zzurVar = new zzur(obj, i, i2, j2);
        Object obj2 = zzurVar.zza;
        int i3 = zzurVar.zzb;
        int i4 = zzurVar.zzc;
        zzbt zzbtVar = this.h;
        long zzf = zzbvVar.zzn(obj2, zzbtVar).zzf(i3, i4);
        if (i2 == zzbtVar.zze(i)) {
            zzbtVar.zzh();
        }
        zzbtVar.zzk(zzurVar.zzb);
        long j3 = 0;
        if (zzf != -9223372036854775807L && zzf <= 0) {
            j3 = Math.max(0L, (-1) + zzf);
        }
        return new apg(zzurVar, j3, j, -9223372036854775807L, zzf, false, false, false);
    }

    public final dee r() {
        dee deeVar = this.k;
        zzdb.zzb(deeVar);
        this.k = deeVar.f14047f;
        al();
        dee deeVar2 = this.k;
        zzdb.zzb(deeVar2);
        return deeVar2;
    }

    public final dee s() {
        return this.k;
    }

    public final void t() {
        if (this.f15172b == 0) {
            return;
        }
        dee deeVar = this.f15171a;
        zzdb.zzb(deeVar);
        this.f15176f = deeVar.l;
        this.j = deeVar.i.f10620d.zzd;
        while (deeVar != null) {
            deeVar.p();
            deeVar = deeVar.f14047f;
        }
        this.f15171a = null;
        this.m = null;
        this.k = null;
        this.f15172b = 0;
        al();
    }

    public final apg u(zzbv zzbvVar, zzur zzurVar, long j, long j2) {
        zzbvVar.zzn(zzurVar.zza, this.h);
        return zzurVar.zzb() ? q(zzbvVar, zzurVar.zza, zzurVar.zzb, zzurVar.zzc, j, zzurVar.zzd) : z(zzbvVar, zzurVar.zza, j2, j, zzurVar.zzd);
    }

    public final zzur v(zzbv zzbvVar, Object obj, long j) {
        long ac;
        int zza;
        zzbt zzbtVar = this.h;
        int i = zzbvVar.zzn(obj, zzbtVar).zzc;
        Object obj2 = this.f15176f;
        if (obj2 == null || (zza = zzbvVar.zza(obj2)) == -1 || zzbvVar.zzd(zza, zzbtVar, false).zzc != i) {
            dee deeVar = this.f15171a;
            while (true) {
                if (deeVar == null) {
                    dee deeVar2 = this.f15171a;
                    while (true) {
                        if (deeVar2 != null) {
                            int zza2 = zzbvVar.zza(deeVar2.l);
                            if (zza2 != -1 && zzbvVar.zzd(zza2, zzbtVar, false).zzc == i) {
                                ac = deeVar2.i.f10620d.zzd;
                                break;
                            }
                            deeVar2 = deeVar2.f14047f;
                        } else {
                            ac = ac(obj);
                            if (ac == -1) {
                                ac = this.f15177g;
                                this.f15177g = 1 + ac;
                                if (this.f15171a == null) {
                                    this.f15176f = obj;
                                    this.j = ac;
                                }
                            }
                        }
                    }
                } else {
                    if (deeVar.l.equals(obj)) {
                        ac = deeVar.i.f10620d.zzd;
                        break;
                    }
                    deeVar = deeVar.f14047f;
                }
            }
        } else {
            ac = this.j;
        }
        long j2 = ac;
        zzbvVar.zzn(obj, zzbtVar);
        int i2 = zzbtVar.zzc;
        zzbu zzbuVar = this.l;
        zzbvVar.zze(i2, zzbuVar, 0L);
        Object obj3 = obj;
        for (int zza3 = zzbvVar.zza(obj); zza3 >= zzbuVar.zzn; zza3--) {
            zzbvVar.zzd(zza3, zzbtVar, true);
            zzbtVar.zzb();
            if (zzbtVar.zzd(zzbtVar.zzd) != -1) {
                obj3 = zzbtVar.zzb;
                obj3.getClass();
            }
        }
        return p(zzbvVar, obj3, j, j2, zzbuVar, this.h);
    }

    public final boolean w(zzbv zzbvVar, zzur zzurVar, boolean z) {
        int zza = zzbvVar.zza(zzurVar.zza);
        if (!zzbvVar.zze(zzbvVar.zzd(zza, this.h, false).zzc, this.l, 0L).zzi) {
            if (zzbvVar.zzi(zza, this.h, this.l, this.i, this.o) == -1 && z) {
                return true;
            }
        }
        return false;
    }

    public final apg x(long j, gzx gzxVar) {
        dee deeVar = this.m;
        return deeVar == null ? u(gzxVar.i, gzxVar.o, gzxVar.r, gzxVar.t) : am(gzxVar.i, deeVar, j);
    }

    public final boolean y(zzbv zzbvVar, zzur zzurVar) {
        if (!zzurVar.zzb() && zzurVar.zze == -1) {
            int i = zzbvVar.zzn(zzurVar.zza, this.h).zzc;
            if (zzbvVar.zze(i, this.l, 0L).zzo == zzbvVar.zza(zzurVar.zza)) {
                return true;
            }
        }
        return false;
    }

    public final apg z(zzbv zzbvVar, Object obj, long j, long j2, long j3) {
        long j4;
        long j5;
        long j6;
        long j7 = j;
        zzbt zzbtVar = this.h;
        zzbvVar.zzn(obj, zzbtVar);
        int zzc = zzbtVar.zzc(j7);
        if (zzc != -1) {
            zzbtVar.zzj(zzc);
        }
        if (zzc == -1) {
            zzbtVar.zzb();
        } else {
            zzbtVar.zzk(zzc);
        }
        zzur zzurVar = new zzur(obj, j3, zzc);
        boolean z = !zzurVar.zzb() && zzurVar.zze == -1;
        boolean y = y(zzbvVar, zzurVar);
        boolean w = w(zzbvVar, zzurVar, z);
        if (zzc != -1) {
            zzbtVar.zzk(zzc);
        }
        if (zzc != -1) {
            zzbtVar.zzg(zzc);
            j4 = 0;
        } else {
            j4 = -9223372036854775807L;
        }
        if (j4 != -9223372036854775807L) {
            j6 = 0;
            j5 = 0;
        } else {
            j5 = zzbtVar.zzd;
            j6 = j4;
        }
        if (j5 != -9223372036854775807L && j7 >= j5) {
            j7 = Math.max(0L, j5 - 1);
        }
        return new apg(zzurVar, j7, j2, j6, j5, z, y, w);
    }
}
