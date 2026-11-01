package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.C;
import g.dsg;
import g.eda;
import g.fcw;
import g.fks;
import g.fru;
import j$.util.Objects;
import java.io.EOFException;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class zzwf implements zzadx {
    public zzad aa;

    /* renamed from: ab, reason: collision with root package name */
    public int f8914ab;

    /* renamed from: d, reason: collision with root package name */
    public int f8917d;

    /* renamed from: e, reason: collision with root package name */
    public zzad f8918e;

    /* renamed from: g, reason: collision with root package name */
    public final zzrp f8920g;
    public zzrq h;
    public final zzrk j;
    public final eda k;
    public boolean m;
    public zzwd o;
    public int q;
    public int v;
    public boolean w;
    public final fks t = new fks();

    /* renamed from: b, reason: collision with root package name */
    public int f8915b = 1000;
    public long[] s = new long[1000];
    public long[] u = new long[1000];
    public long[] r = new long[1000];
    public int[] i = new int[1000];

    /* renamed from: c, reason: collision with root package name */
    public int[] f8916c = new int[1000];

    /* renamed from: f, reason: collision with root package name */
    public zzadw[] f8919f = new zzadw[1000];
    public final dsg y = new dsg(new zzdg() { // from class: com.google.android.gms.internal.ads.zzwa
        @Override // com.google.android.gms.internal.ads.zzdg
        public final void zza(Object obj) {
            zzro zzroVar = ((fru) obj).f17311b;
        }
    });
    public long p = Long.MIN_VALUE;
    public long x = Long.MIN_VALUE;
    public long l = Long.MIN_VALUE;
    public boolean z = true;
    public boolean n = true;

    /* renamed from: a, reason: collision with root package name */
    public boolean f8913a = true;

    /* JADX WARN: Type inference failed for: r2v7, types: [com.google.android.gms.internal.ads.zzwa] */
    public zzwf(zzys zzysVar, zzrp zzrpVar, zzrk zzrkVar) {
        this.f8920g = zzrpVar;
        this.j = zzrkVar;
        this.k = new eda(zzysVar);
    }

    public final void ac(zzad zzadVar, zzkj zzkjVar) {
        zzad zzadVar2 = this.aa;
        zzw zzwVar = zzadVar2 == null ? null : zzadVar2.zzs;
        this.aa = zzadVar;
        zzw zzwVar2 = zzadVar.zzs;
        zzrp zzrpVar = this.f8920g;
        zzkjVar.zza = zzadVar.zzc(zzrpVar.zza(zzadVar));
        zzkjVar.zzb = this.h;
        if (zzadVar2 == null || !Objects.equals(zzwVar, zzwVar2)) {
            zzrq zzc = zzrpVar.zzc(this.j, zzadVar);
            this.h = zzc;
            zzkjVar.zzb = zzc;
        }
    }

    public final synchronized void ad() {
        this.f8914ab = 0;
        eda edaVar = this.k;
        edaVar.f15335f = edaVar.f15334e;
    }

    public final int ae(int i, long j, int i2, boolean z) {
        int i3 = -1;
        for (int i4 = 0; i4 < i2; i4++) {
            long j2 = this.r[i];
            if (j2 > j) {
                break;
            }
            if (!z || (this.i[i] & 1) != 0) {
                if (j2 == j) {
                    return i4;
                }
                i3 = i4;
            }
            i++;
            if (i == this.f8915b) {
                i = 0;
            }
        }
        return i3;
    }

    public final int af(int i) {
        int i2 = this.v + i;
        int i3 = this.f8915b;
        return i2 < i3 ? i2 : i2 - i3;
    }

    public final long ag(int i) {
        long j = this.x;
        long j2 = Long.MIN_VALUE;
        int i2 = 0;
        if (i != 0) {
            int af = af(i - 1);
            for (int i3 = 0; i3 < i; i3++) {
                j2 = Math.max(j2, this.r[af]);
                if ((this.i[af] & 1) != 0) {
                    break;
                }
                af--;
                if (af == -1) {
                    af = this.f8915b - 1;
                }
            }
        }
        this.x = Math.max(j, j2);
        this.f8917d -= i;
        int i4 = this.q + i;
        this.q = i4;
        int i5 = this.v + i;
        this.v = i5;
        int i6 = this.f8915b;
        if (i5 >= i6) {
            this.v = i5 - i6;
        }
        int i7 = this.f8914ab - i;
        this.f8914ab = i7;
        if (i7 < 0) {
            this.f8914ab = 0;
        }
        dsg dsgVar = this.y;
        SparseArray sparseArray = (SparseArray) dsgVar.f14704a;
        while (i2 < sparseArray.size() - 1) {
            int i8 = i2 + 1;
            if (i4 < sparseArray.keyAt(i8)) {
                break;
            }
            ((zzwa) dsgVar.f14705b).zza(sparseArray.valueAt(i2));
            sparseArray.removeAt(i2);
            int i9 = dsgVar.f14707d;
            if (i9 > 0) {
                dsgVar.f14707d = i9 - 1;
            }
            i2 = i8;
        }
        if (this.f8917d != 0) {
            return this.u[this.v];
        }
        int i10 = this.v;
        if (i10 == 0) {
            i10 = this.f8915b;
        }
        return this.u[i10 - 1] + this.f8916c[r12];
    }

    public final int zza() {
        return this.q;
    }

    public final int zzb() {
        return this.q + this.f8914ab;
    }

    public final synchronized int zzc(long j, boolean z) {
        try {
            try {
                int i = this.f8914ab;
                int af = af(i);
                int i2 = this.f8914ab;
                int i3 = this.f8917d;
                if (!(i2 != i3) || j < this.r[af]) {
                    return 0;
                }
                if (j > this.l && z) {
                    return i3 - i;
                }
                int ae = ae(af, j, i3 - i, true);
                if (ae == -1) {
                    return 0;
                }
                return ae;
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    public final int zzd() {
        return this.q + this.f8917d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d3, code lost:
    
        if (r12 != 0) goto L71;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zze(zzkj zzkjVar, zzhm zzhmVar, int i, boolean z) {
        int i2;
        boolean z2 = false;
        boolean z3 = (i & 2) != 0;
        fks fksVar = this.t;
        synchronized (this) {
            try {
                zzhmVar.zzd = false;
                int i3 = this.f8914ab;
                i2 = -3;
                if (i3 != this.f8917d) {
                    zzad zzadVar = ((fru) this.y.o(this.q + i3)).f17310a;
                    if (!z3 && zzadVar == this.aa) {
                        int af = af(this.f8914ab);
                        if (this.h != null) {
                            int i4 = this.i[af];
                        } else {
                            z2 = true;
                        }
                        if (z2) {
                            zzhmVar.zzc(this.i[af]);
                            if (this.f8914ab == this.f8917d - 1 && (z || this.m)) {
                                zzhmVar.zza(C.ENCODING_PCM_A_LAW);
                            }
                            zzhmVar.zze = this.r[af];
                            fksVar.f16943a = this.f8916c[af];
                            fksVar.f16944b = this.u[af];
                            fksVar.f16945c = this.f8919f[af];
                            i2 = -4;
                        } else {
                            zzhmVar.zzd = true;
                        }
                    }
                    ac(zzadVar, zzkjVar);
                    i2 = -5;
                } else {
                    if (!z && !this.m) {
                        zzad zzadVar2 = this.f8918e;
                        if (zzadVar2 == null || (!z3 && zzadVar2 == this.aa)) {
                        }
                        ac(zzadVar2, zzkjVar);
                        i2 = -5;
                    }
                    zzhmVar.zzc(4);
                    zzhmVar.zze = Long.MIN_VALUE;
                    i2 = -4;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (i2 != -4) {
            return i2;
        }
        if (!zzhmVar.zzf()) {
            int i5 = i & 1;
            if ((i & 4) == 0) {
                if (i5 != 0) {
                    eda edaVar = this.k;
                    eda.h(edaVar.f15335f, zzhmVar, this.t, edaVar.f15332c);
                    return -4;
                }
                eda edaVar2 = this.k;
                edaVar2.f15335f = eda.h(edaVar2.f15335f, zzhmVar, this.t, edaVar2.f15332c);
            }
            this.f8914ab++;
        }
        return -4;
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final /* synthetic */ int zzf(zzn zznVar, int i, boolean z) {
        return zzadv.zza(this, zznVar, i, z);
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final int zzg(zzn zznVar, int i, boolean z, int i2) throws IOException {
        eda edaVar = this.k;
        int k = edaVar.k(i);
        fcw fcwVar = edaVar.f15330a;
        zzyl zzylVar = (zzyl) fcwVar.f16580a;
        byte[] bArr = zzylVar.zza;
        long j = edaVar.f15331b - fcwVar.f16582d;
        int i3 = zzylVar.zzb;
        int zza = zznVar.zza(bArr, (int) j, k);
        if (zza == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        long j2 = edaVar.f15331b + zza;
        edaVar.f15331b = j2;
        fcw fcwVar2 = edaVar.f15330a;
        if (j2 == fcwVar2.f16583e) {
            edaVar.f15330a = (fcw) fcwVar2.f16581b;
        }
        return zza;
    }

    public final synchronized long zzh() {
        return this.l;
    }

    public final synchronized zzad zzi() {
        if (this.z) {
            return null;
        }
        return this.f8918e;
    }

    public final void zzj(long j, boolean z, boolean z2) {
        Throwable th;
        long j2;
        eda edaVar = this.k;
        synchronized (this) {
            try {
                try {
                    int i = this.f8917d;
                    if (i != 0) {
                        long[] jArr = this.r;
                        int i2 = this.v;
                        if (j >= jArr[i2]) {
                            if (z2) {
                                try {
                                    int i3 = this.f8914ab;
                                    if (i3 != i) {
                                        i = i3 + 1;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    throw th;
                                }
                            }
                            int ae = ae(i2, j, i, false);
                            if (ae != -1) {
                                j2 = ag(ae);
                                edaVar.j(j2);
                            }
                            j2 = -1;
                            edaVar.j(j2);
                        }
                    }
                    j2 = -1;
                    edaVar.j(j2);
                } catch (Throwable th3) {
                    th = th3;
                    th = th;
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                th = th;
                throw th;
            }
        }
    }

    public final void zzk() {
        long ag;
        eda edaVar = this.k;
        synchronized (this) {
            int i = this.f8917d;
            ag = i == 0 ? -1L : ag(i);
        }
        edaVar.j(ag);
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final void zzl(zzad zzadVar) {
        boolean z;
        synchronized (this) {
            z = false;
            try {
                this.z = false;
                if (!Objects.equals(zzadVar, this.f8918e)) {
                    if (!(((SparseArray) this.y.f14704a).size() == 0)) {
                        if (((fru) ((SparseArray) this.y.f14704a).valueAt(r1.size() - 1)).f17310a.equals(zzadVar)) {
                            this.f8918e = ((fru) ((SparseArray) this.y.f14704a).valueAt(r1.size() - 1)).f17310a;
                            boolean z2 = this.f8913a;
                            zzad zzadVar2 = this.f8918e;
                            this.f8913a = z2 & zzbg.zzf(zzadVar2.zzo, zzadVar2.zzk);
                            this.w = false;
                            z = true;
                        }
                    }
                    this.f8918e = zzadVar;
                    boolean z22 = this.f8913a;
                    zzad zzadVar22 = this.f8918e;
                    this.f8913a = z22 & zzbg.zzf(zzadVar22.zzo, zzadVar22.zzk);
                    this.w = false;
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzwd zzwdVar = this.o;
        if (zzwdVar == null || !z) {
            return;
        }
        zzwdVar.zzM(zzadVar);
    }

    public final void zzm() throws IOException {
        zzrq zzrqVar = this.h;
        if (zzrqVar != null) {
            throw zzrqVar.zza();
        }
    }

    public final void zzn() {
        zzk();
        if (this.h != null) {
            this.h = null;
            this.aa = null;
        }
    }

    public final void zzo() {
        zzp(true);
        if (this.h != null) {
            this.h = null;
            this.aa = null;
        }
    }

    public final void zzp(boolean z) {
        eda edaVar = this.k;
        zzys zzysVar = edaVar.f15333d;
        fcw fcwVar = edaVar.f15334e;
        if (((zzyl) fcwVar.f16580a) != null) {
            zzysVar.zzd(fcwVar);
            fcwVar.f16580a = null;
            fcwVar.f16581b = null;
        }
        fcw fcwVar2 = edaVar.f15334e;
        zzdb.zzf(((zzyl) fcwVar2.f16580a) == null);
        fcwVar2.f16582d = 0L;
        fcwVar2.f16583e = 65536L;
        fcw fcwVar3 = edaVar.f15334e;
        edaVar.f15335f = fcwVar3;
        edaVar.f15330a = fcwVar3;
        edaVar.f15331b = 0L;
        zzysVar.zzg();
        this.f8917d = 0;
        this.q = 0;
        this.v = 0;
        this.f8914ab = 0;
        this.n = true;
        this.p = Long.MIN_VALUE;
        this.x = Long.MIN_VALUE;
        this.l = Long.MIN_VALUE;
        this.m = false;
        dsg dsgVar = this.y;
        SparseArray sparseArray = (SparseArray) dsgVar.f14704a;
        for (int i = 0; i < sparseArray.size(); i++) {
            ((zzwa) dsgVar.f14705b).zza(sparseArray.valueAt(i));
        }
        dsgVar.f14707d = -1;
        sparseArray.clear();
        if (z) {
            this.f8918e = null;
            this.z = true;
            this.f8913a = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final /* synthetic */ void zzq(zzed zzedVar, int i) {
        zzadv.zzb(this, zzedVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final void zzr(zzed zzedVar, int i, int i2) {
        while (true) {
            eda edaVar = this.k;
            if (i <= 0) {
                edaVar.getClass();
                return;
            }
            int k = edaVar.k(i);
            fcw fcwVar = edaVar.f15330a;
            zzyl zzylVar = (zzyl) fcwVar.f16580a;
            byte[] bArr = zzylVar.zza;
            long j = edaVar.f15331b - fcwVar.f16582d;
            int i3 = zzylVar.zzb;
            zzedVar.zzH(bArr, (int) j, k);
            i -= k;
            long j2 = edaVar.f15331b + k;
            edaVar.f15331b = j2;
            fcw fcwVar2 = edaVar.f15330a;
            if (j2 == fcwVar2.f16583e) {
                edaVar.f15330a = (fcw) fcwVar2.f16581b;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00bd, code lost:
    
        if (((g.fru) ((android.util.SparseArray) r9.y.f14704a).valueAt(r10.size() - 1)).f17310a.equals(r9.f8918e) == false) goto L41;
     */
    @Override // com.google.android.gms.internal.ads.zzadx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzs(long j, int i, int i2, int i3, zzadw zzadwVar) {
        if (this.n) {
            if ((i & 1) == 0) {
                return;
            } else {
                this.n = false;
            }
        }
        if (this.f8913a) {
            if (j < this.p) {
                return;
            }
            if ((i & 1) == 0) {
                if (!this.w) {
                    zzdt.zzf("SampleQueue", "Overriding unexpected non-sync sample for format: ".concat(String.valueOf(this.f8918e)));
                    this.w = true;
                }
                i |= 1;
            }
        }
        long j2 = (this.k.f15331b - i2) - i3;
        synchronized (this) {
            try {
                int i4 = this.f8917d;
                if (i4 > 0) {
                    int af = af(i4 - 1);
                    zzdb.zzd(this.u[af] + ((long) this.f8916c[af]) <= j2);
                }
                this.m = (536870912 & i) != 0;
                this.l = Math.max(this.l, j);
                int af2 = af(this.f8917d);
                this.r[af2] = j;
                this.u[af2] = j2;
                this.f8916c[af2] = i2;
                this.i[af2] = i;
                this.f8919f[af2] = zzadwVar;
                this.s[af2] = 0;
                if (!(((SparseArray) this.y.f14704a).size() == 0)) {
                }
                zzad zzadVar = this.f8918e;
                if (zzadVar == null) {
                    throw null;
                }
                zzro zzb = this.f8920g.zzb(this.j, zzadVar);
                dsg dsgVar = this.y;
                int i5 = this.q + this.f8917d;
                fru fruVar = new fru(zzadVar, zzb);
                SparseArray sparseArray = (SparseArray) dsgVar.f14704a;
                if (dsgVar.f14707d == -1) {
                    zzdb.zzf(sparseArray.size() == 0);
                    dsgVar.f14707d = 0;
                }
                if (sparseArray.size() > 0) {
                    int keyAt = sparseArray.keyAt(sparseArray.size() - 1);
                    zzdb.zzd(i5 >= keyAt);
                    if (keyAt == i5) {
                        ((zzwa) dsgVar.f14705b).zza(sparseArray.valueAt(sparseArray.size() - 1));
                    }
                }
                sparseArray.append(i5, fruVar);
                int i6 = this.f8917d + 1;
                this.f8917d = i6;
                int i7 = this.f8915b;
                if (i6 == i7) {
                    int i8 = i7 + 1000;
                    long[] jArr = new long[i8];
                    long[] jArr2 = new long[i8];
                    long[] jArr3 = new long[i8];
                    int[] iArr = new int[i8];
                    int[] iArr2 = new int[i8];
                    zzadw[] zzadwVarArr = new zzadw[i8];
                    int i9 = this.v;
                    int i10 = i7 - i9;
                    System.arraycopy(this.u, i9, jArr2, 0, i10);
                    System.arraycopy(this.r, this.v, jArr3, 0, i10);
                    System.arraycopy(this.i, this.v, iArr, 0, i10);
                    System.arraycopy(this.f8916c, this.v, iArr2, 0, i10);
                    System.arraycopy(this.f8919f, this.v, zzadwVarArr, 0, i10);
                    System.arraycopy(this.s, this.v, jArr, 0, i10);
                    int i11 = this.v;
                    System.arraycopy(this.u, 0, jArr2, i10, i11);
                    System.arraycopy(this.r, 0, jArr3, i10, i11);
                    System.arraycopy(this.i, 0, iArr, i10, i11);
                    System.arraycopy(this.f8916c, 0, iArr2, i10, i11);
                    System.arraycopy(this.f8919f, 0, zzadwVarArr, i10, i11);
                    System.arraycopy(this.s, 0, jArr, i10, i11);
                    this.u = jArr2;
                    this.r = jArr3;
                    this.i = iArr;
                    this.f8916c = iArr2;
                    this.f8919f = zzadwVarArr;
                    this.s = jArr;
                    this.v = 0;
                    this.f8915b = i8;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzt(long j) {
        this.p = j;
    }

    public final void zzu(zzwd zzwdVar) {
        this.o = zzwdVar;
    }

    public final synchronized void zzv(int i) {
        boolean z = false;
        if (i >= 0) {
            try {
                if (this.f8914ab + i <= this.f8917d) {
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzdb.zzd(z);
        this.f8914ab += i;
    }

    public final synchronized boolean zzw() {
        return this.m;
    }

    public final synchronized boolean zzx(boolean z) {
        int i = this.f8914ab;
        boolean z2 = false;
        if (i != this.f8917d) {
            if (((fru) this.y.o(this.q + i)).f17310a != this.aa) {
                return true;
            }
            int af = af(this.f8914ab);
            if (this.h != null) {
                int i2 = this.i[af];
            } else {
                z2 = true;
            }
            return z2;
        }
        if (!z && !this.m) {
            zzad zzadVar = this.f8918e;
            if (zzadVar != null) {
                if (zzadVar == this.aa) {
                    return false;
                }
            }
            return z2;
        }
        z2 = true;
        return z2;
    }

    public final synchronized boolean zzy(int i) {
        ad();
        int i2 = this.q;
        if (i >= i2 && i <= this.f8917d + i2) {
            this.p = Long.MIN_VALUE;
            this.f8914ab = i - i2;
            return true;
        }
        return false;
    }

    public final synchronized boolean zzz(long j, boolean z) {
        Throwable th;
        zzwf zzwfVar;
        long j2;
        int ae;
        try {
            try {
                ad();
                int i = this.f8914ab;
                int af = af(i);
                int i2 = this.f8914ab;
                int i3 = this.f8917d;
                if ((i2 != i3) && j >= this.r[af]) {
                    if (j > this.l) {
                        if (z) {
                            z = true;
                        }
                    }
                    if (this.f8913a) {
                        int i4 = i3 - i;
                        int i5 = 0;
                        while (true) {
                            if (i5 < i4) {
                                try {
                                    if (this.r[af] >= j) {
                                        zzwfVar = this;
                                        j2 = j;
                                        ae = i5;
                                        break;
                                    }
                                    af++;
                                    if (af == this.f8915b) {
                                        af = 0;
                                    }
                                    i5++;
                                } catch (Throwable th2) {
                                    th = th2;
                                    throw th;
                                }
                            } else if (z) {
                                ae = i4;
                                j2 = j;
                                zzwfVar = this;
                            } else {
                                zzwfVar = this;
                                j2 = j;
                                ae = -1;
                            }
                        }
                    } else {
                        int i6 = i3 - i;
                        zzwfVar = this;
                        j2 = j;
                        ae = zzwfVar.ae(af, j2, i6, true);
                    }
                    if (ae == -1) {
                        return false;
                    }
                    zzwfVar.p = j2;
                    zzwfVar.f8914ab += ae;
                    return true;
                }
                return false;
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }
}
