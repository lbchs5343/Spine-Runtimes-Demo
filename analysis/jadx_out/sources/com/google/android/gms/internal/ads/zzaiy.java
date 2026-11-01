package com.google.android.gms.internal.ads;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.aei;
import g.dex;
import g.foy;
import j$.util.Objects;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzaiy implements zzacr, zzadq {

    /* renamed from: a, reason: collision with root package name */
    public long f4201a;
    public final ArrayDeque aa;

    /* renamed from: ab, reason: collision with root package name */
    public int f4202ab;

    /* renamed from: b, reason: collision with root package name */
    public final aei f4203b;

    /* renamed from: c, reason: collision with root package name */
    public int f4204c;

    /* renamed from: d, reason: collision with root package name */
    public zzed f4205d;

    /* renamed from: e, reason: collision with root package name */
    public int f4206e;

    /* renamed from: f, reason: collision with root package name */
    public int f4207f;

    /* renamed from: g, reason: collision with root package name */
    public final zzed f4208g;
    public zzagz h;
    public int i;
    public final zzed j;
    public final zzakg k;
    public boolean l;
    public zzacu m;
    public foy[] n;
    public final zzed o;
    public int p;
    public int q;
    public long r;
    public final ArrayList s;
    public final int t;
    public zzfzo u;
    public int v;
    public int w;
    public boolean x;
    public final zzed y;
    public long[][] z;

    @Deprecated
    public zzaiy() {
        this(zzakg.zza, 16);
    }

    public zzaiy(zzakg zzakgVar, int i) {
        this.k = zzakgVar;
        this.t = i;
        this.u = zzfzo.zzn();
        this.f4204c = (i & 4) != 0 ? 3 : 0;
        this.f4203b = new aei();
        this.s = new ArrayList();
        this.o = new zzed(16);
        this.aa = new ArrayDeque();
        this.y = new zzed(zzfp.zza);
        this.f4208g = new zzed(5);
        this.j = new zzed();
        this.q = -1;
        this.m = zzacu.zza;
        this.n = new foy[0];
        this.x = true;
    }

    public final void ac() {
        this.f4204c = 0;
        this.f4207f = 0;
    }

    public final void ad(long j) {
        zzbd zzbdVar;
        long j2;
        int i;
        ArrayDeque arrayDeque;
        List list;
        zzadf zzadfVar;
        ArrayList arrayList;
        int i2;
        while (true) {
            ArrayDeque arrayDeque2 = this.aa;
            if (arrayDeque2.isEmpty() || ((zzes) arrayDeque2.peek()).zza != j) {
                break;
            }
            zzes zzesVar = (zzes) arrayDeque2.pop();
            if (zzesVar.zzd == 1836019574) {
                zzes zza = zzesVar.zza(1835365473);
                new ArrayList();
                zzbd zzb = zza != null ? zzain.zzb(zza) : null;
                ArrayList arrayList2 = new ArrayList();
                boolean z = this.w == 1;
                zzadf zzadfVar2 = new zzadf();
                zzet zzb2 = zzesVar.zzb(1969517665);
                if (zzb2 != null) {
                    zzbd zzc = zzain.zzc(zzb2);
                    zzadfVar2.zzb(zzc);
                    zzbdVar = zzc;
                } else {
                    zzbdVar = null;
                }
                zzet zzb3 = zzesVar.zzb(1836476516);
                zzb3.getClass();
                ArrayList arrayList3 = arrayList2;
                zzbd zzbdVar2 = new zzbd(-9223372036854775807L, zzain.zzd(zzb3.zza));
                int i3 = this.t;
                List zzf = zzain.zzf(zzesVar, zzadfVar2, -9223372036854775807L, null, 1 == (i3 & 1), z, new zzfwh() { // from class: com.google.android.gms.internal.ads.zzaiw
                    @Override // com.google.android.gms.internal.ads.zzfwh
                    public final Object apply(Object obj) {
                        return (zzaje) obj;
                    }
                });
                long j3 = -9223372036854775807L;
                long j4 = -9223372036854775807L;
                int i4 = 0;
                int i5 = -1;
                int i6 = 0;
                while (true) {
                    j2 = 0;
                    if (i4 >= zzf.size()) {
                        break;
                    }
                    zzajh zzajhVar = (zzajh) zzf.get(i4);
                    if (zzajhVar.zzb == 0) {
                        arrayDeque = arrayDeque2;
                        list = zzf;
                        zzadfVar = zzadfVar2;
                        i = i6;
                        arrayList = arrayList3;
                    } else {
                        zzaje zzajeVar = zzajhVar.zza;
                        long j5 = zzajeVar.zze;
                        if (j5 == j4) {
                            j5 = zzajhVar.zzh;
                        }
                        j3 = Math.max(j3, j5);
                        i = i6 + 1;
                        arrayDeque = arrayDeque2;
                        foy foyVar = new foy(zzajeVar, zzajhVar, this.m.zzw(i6, zzajeVar.zzb));
                        int i7 = "audio/true-hd".equals(zzajeVar.zzf.zzo) ? zzajhVar.zze * 16 : zzajhVar.zze + 30;
                        zzab zzb4 = zzajeVar.zzf.zzb();
                        zzb4.zzQ(i7);
                        if (zzajeVar.zzb == 2) {
                            int i8 = zzajeVar.zzf.zzf;
                            if ((i3 & 8) != 0) {
                                i8 |= i5 == -1 ? 1 : 2;
                            }
                            if (j5 > 0 && (i2 = zzajhVar.zzb) > 0) {
                                zzb4.zzI(i2 / (j5 / 1000000.0f));
                            }
                            zzb4.zzX(i8);
                        }
                        if (zzajeVar.zzb == 1 && zzadfVar2.zza()) {
                            zzb4.zzG(zzadfVar2.zza);
                            zzb4.zzH(zzadfVar2.zzb);
                        }
                        int i9 = zzajeVar.zzb;
                        ArrayList arrayList4 = this.s;
                        zzbd[] zzbdVarArr = {arrayList4.isEmpty() ? null : new zzbd(arrayList4), zzbdVar, zzbdVar2};
                        list = zzf;
                        zzadfVar = zzadfVar2;
                        zzbd zzbdVar3 = new zzbd(j4, new zzbc[0]);
                        if (zzb != null) {
                            for (int i10 = 0; i10 < zzb.zza(); i10++) {
                                zzbc zzb5 = zzb.zzb(i10);
                                if (zzb5 instanceof zzer) {
                                    zzer zzerVar = (zzer) zzb5;
                                    if (!zzerVar.zza.equals("com.android.capture.fps")) {
                                        zzbdVar3 = zzbdVar3.zzc(zzerVar);
                                    } else if (i9 == 2) {
                                        zzbdVar3 = zzbdVar3.zzc(zzerVar);
                                    }
                                }
                            }
                        }
                        for (int i11 = 0; i11 < 3; i11++) {
                            zzbdVar3 = zzbdVar3.zzd(zzbdVarArr[i11]);
                        }
                        if (zzbdVar3.zza() > 0) {
                            zzb4.zzS(zzbdVar3);
                        }
                        foyVar.f17176e.zzl(zzb4.zzaf());
                        if (zzajeVar.zzb == 2 && i5 == -1) {
                            i5 = arrayList3.size();
                        }
                        arrayList = arrayList3;
                        arrayList.add(foyVar);
                    }
                    i4++;
                    arrayList3 = arrayList;
                    i6 = i;
                    arrayDeque2 = arrayDeque;
                    zzf = list;
                    zzadfVar2 = zzadfVar;
                    j4 = -9223372036854775807L;
                }
                ArrayDeque arrayDeque3 = arrayDeque2;
                this.f4206e = i5;
                this.f4201a = j3;
                foy[] foyVarArr = (foy[]) arrayList3.toArray(new foy[0]);
                this.n = foyVarArr;
                int length = foyVarArr.length;
                long[][] jArr = new long[length][];
                int[] iArr = new int[length];
                long[] jArr2 = new long[length];
                boolean[] zArr = new boolean[length];
                for (int i12 = 0; i12 < foyVarArr.length; i12++) {
                    jArr[i12] = new long[foyVarArr[i12].f17175d.zzb];
                    jArr2[i12] = foyVarArr[i12].f17175d.zzf[0];
                }
                int i13 = 0;
                while (i13 < foyVarArr.length) {
                    long j6 = Long.MAX_VALUE;
                    int i14 = -1;
                    for (int i15 = 0; i15 < foyVarArr.length; i15++) {
                        if (!zArr[i15]) {
                            long j7 = jArr2[i15];
                            if (j7 <= j6) {
                                i14 = i15;
                                j6 = j7;
                            }
                        }
                    }
                    int i16 = iArr[i14];
                    long[] jArr3 = jArr[i14];
                    jArr3[i16] = j2;
                    zzajh zzajhVar2 = foyVarArr[i14].f17175d;
                    j2 += zzajhVar2.zzd[i16];
                    int i17 = i16 + 1;
                    iArr[i14] = i17;
                    if (i17 < jArr3.length) {
                        jArr2[i14] = zzajhVar2.zzf[i17];
                    } else {
                        zArr[i14] = true;
                        i13++;
                    }
                }
                this.z = jArr;
                this.m.zzD();
                this.m.zzO(this);
                arrayDeque3.clear();
                this.f4204c = 2;
            } else if (!arrayDeque2.isEmpty()) {
                ((zzes) arrayDeque2.peek()).zzc(zzesVar);
            }
        }
        if (this.f4204c != 2) {
            ac();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final long zza() {
        return this.f4201a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x02c7, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x029a, code lost:
    
        if (r34 < r29) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x02c5, code lost:
    
        if (r5 == (-1)) goto L147;
     */
    /* JADX WARN: Removed duplicated region for block: B:341:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x02aa A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r12v23 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r12v9 */
    @Override // com.google.android.gms.internal.ads.zzacr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzb(zzacs zzacsVar, zzadn zzadnVar) throws IOException {
        char c2;
        ?? r12;
        int i;
        long j;
        char c3;
        char c4;
        boolean z;
        while (true) {
            int i2 = this.f4204c;
            ArrayDeque arrayDeque = this.aa;
            zzed zzedVar = this.j;
            if (i2 == 0) {
                int i3 = this.f4207f;
                zzed zzedVar2 = this.o;
                if (i3 == 0) {
                    if (zzacsVar.zzn(zzedVar2.zzN(), 0, 8, true)) {
                        this.f4207f = 8;
                        zzedVar2.zzL(0);
                        this.r = zzedVar2.zzu();
                        this.i = zzedVar2.zzg();
                    } else if (this.w == 2 && (this.t & 2) != 0) {
                        zzadx zzw = this.m.zzw(0, 4);
                        zzagz zzagzVar = this.h;
                        zzbd zzbdVar = zzagzVar == null ? null : new zzbd(-9223372036854775807L, zzagzVar);
                        zzab zzabVar = new zzab();
                        zzabVar.zzS(zzbdVar);
                        zzw.zzl(zzabVar.zzaf());
                        this.m.zzD();
                        this.m.zzO(new zzadp(-9223372036854775807L, 0L));
                        return -1;
                    }
                }
                long j2 = this.r;
                if (j2 == 1) {
                    zzacsVar.zzi(zzedVar2.zzN(), 8, 8);
                    this.f4207f += 8;
                    this.r = zzedVar2.zzw();
                } else if (j2 == 0) {
                    long zzd = zzacsVar.zzd();
                    if (zzd == -1) {
                        zzes zzesVar = (zzes) arrayDeque.peek();
                        zzd = zzesVar != null ? zzesVar.zza : -1L;
                    }
                    if (zzd != -1) {
                        this.r = (zzd - zzacsVar.zzf()) + this.f4207f;
                    }
                }
                long j3 = this.r;
                int i4 = this.f4207f;
                if (j3 < i4) {
                    throw zzbh.zzc("Atom size less than header length (unsupported).");
                }
                int i5 = this.i;
                if (i5 == 1836019574 || i5 == 1953653099 || i5 == 1835297121 || i5 == 1835626086 || i5 == 1937007212 || i5 == 1701082227 || i5 == 1835365473 || i5 == 1701082724) {
                    long zzf = zzacsVar.zzf();
                    long j4 = this.r;
                    long j5 = zzf + j4;
                    long j6 = this.f4207f;
                    if (j4 != j6 && this.i == 1835365473) {
                        zzedVar.zzI(8);
                        zzacsVar.zzh(zzedVar.zzN(), 0, 8);
                        zzain.zzg(zzedVar);
                        zzacsVar.zzk(zzedVar.zzd());
                        zzacsVar.zzj();
                    }
                    long j7 = j5 - j6;
                    arrayDeque.push(new zzes(this.i, j7));
                    if (this.r == this.f4207f) {
                        ad(j7);
                    } else {
                        ac();
                    }
                } else if (i5 == 1835296868 || i5 == 1836476516 || i5 == 1751411826 || i5 == 1937011556 || i5 == 1937011827 || i5 == 1937011571 || i5 == 1668576371 || i5 == 1701606260 || i5 == 1937011555 || i5 == 1937011578 || i5 == 1937013298 || i5 == 1937007471 || i5 == 1668232756 || i5 == 1953196132 || i5 == 1718909296 || i5 == 1969517665 || i5 == 1801812339 || i5 == 1768715124) {
                    zzdb.zzf(i4 == 8);
                    zzdb.zzf(this.r <= 2147483647L);
                    zzed zzedVar3 = new zzed((int) this.r);
                    System.arraycopy(zzedVar2.zzN(), 0, zzedVar3.zzN(), 0, 8);
                    this.f4205d = zzedVar3;
                    this.f4204c = 1;
                } else {
                    long zzf2 = zzacsVar.zzf();
                    long j8 = this.f4207f;
                    long j9 = zzf2 - j8;
                    if (this.i == 1836086884) {
                        this.h = new zzagz(0L, j9, -9223372036854775807L, j9 + j8, this.r - j8);
                    }
                    this.f4205d = null;
                    this.f4204c = 1;
                }
            } else {
                if (i2 != 1) {
                    if (i2 != 2) {
                        aei aeiVar = this.f4203b;
                        ArrayList arrayList = aeiVar.f10092c;
                        int i6 = aeiVar.f10093d;
                        if (i6 != 0) {
                            if (i6 != 1) {
                                short s = 2817;
                                if (i6 != 2) {
                                    long zzf3 = zzacsVar.zzf();
                                    int zzd2 = (int) ((zzacsVar.zzd() - zzacsVar.zzf()) - aeiVar.f10094e);
                                    zzed zzedVar4 = new zzed(zzd2);
                                    zzacsVar.zzi(zzedVar4.zzN(), 0, zzd2);
                                    for (int i7 = 0; i7 < arrayList.size(); i7++) {
                                        dex dexVar = (dex) arrayList.get(i7);
                                        zzedVar4.zzL((int) (dexVar.f14076a - zzf3));
                                        zzedVar4.zzM(4);
                                        int zzi = zzedVar4.zzi();
                                        Charset charset = StandardCharsets.UTF_8;
                                        String zzB = zzedVar4.zzB(zzi, charset);
                                        switch (zzB.hashCode()) {
                                            case -1711564334:
                                                if (zzB.equals("SlowMotion_Data")) {
                                                    c3 = 0;
                                                    break;
                                                }
                                                c3 = 65535;
                                                break;
                                            case -1332107749:
                                                if (zzB.equals("Super_SlowMotion_Edit_Data")) {
                                                    c3 = 3;
                                                    break;
                                                }
                                                c3 = 65535;
                                                break;
                                            case -1251387154:
                                                if (zzB.equals("Super_SlowMotion_Data")) {
                                                    c3 = 1;
                                                    break;
                                                }
                                                c3 = 65535;
                                                break;
                                            case -830665521:
                                                if (zzB.equals("Super_SlowMotion_Deflickering_On")) {
                                                    c3 = 4;
                                                    break;
                                                }
                                                c3 = 65535;
                                                break;
                                            case 1760745220:
                                                if (zzB.equals("Super_SlowMotion_BGM")) {
                                                    c3 = 2;
                                                    break;
                                                }
                                                c3 = 65535;
                                                break;
                                            default:
                                                c3 = 65535;
                                                break;
                                        }
                                        if (c3 == 0) {
                                            c4 = 2192;
                                        } else if (c3 == 1) {
                                            c4 = 2816;
                                        } else if (c3 == 2) {
                                            c4 = 2817;
                                        } else if (c3 == 3) {
                                            c4 = 2819;
                                        } else {
                                            if (c3 != 4) {
                                                throw zzbh.zza("Invalid SEF name", null);
                                            }
                                            c4 = 2820;
                                        }
                                        int i8 = dexVar.f14077b - (zzi + 8);
                                        if (c4 == 2192) {
                                            ArrayList arrayList2 = new ArrayList();
                                            List zze = aei.f10091b.zze(zzedVar4.zzB(i8, charset));
                                            for (int i9 = 0; i9 < zze.size(); i9++) {
                                                List zze2 = aei.f10090a.zze((CharSequence) zze.get(i9));
                                                if (zze2.size() != 3) {
                                                    throw zzbh.zza(null, null);
                                                }
                                                try {
                                                    arrayList2.add(new zzahc(Long.parseLong((String) zze2.get(0)), Long.parseLong((String) zze2.get(1)), 1 << (Integer.parseInt((String) zze2.get(2)) - 1)));
                                                } catch (NumberFormatException e2) {
                                                    throw zzbh.zza(null, e2);
                                                }
                                            }
                                            this.s.add(new zzahd(arrayList2));
                                        } else if (c4 != 2816 && c4 != 2817 && c4 != 2819 && c4 != 2820) {
                                            throw new IllegalStateException();
                                        }
                                    }
                                    zzadnVar.zza = 0L;
                                } else {
                                    long zzd3 = zzacsVar.zzd();
                                    int i10 = aeiVar.f10094e - 20;
                                    zzed zzedVar5 = new zzed(i10);
                                    zzacsVar.zzi(zzedVar5.zzN(), 0, i10);
                                    int i11 = 0;
                                    while (i11 < i10 / 12) {
                                        zzedVar5.zzM(2);
                                        short zzD = zzedVar5.zzD();
                                        if (zzD != 2192) {
                                            if (zzD != 2816 && zzD != s && zzD != 2819) {
                                                if (zzD != 2820) {
                                                    zzedVar5.zzM(8);
                                                    j = zzd3;
                                                    i11++;
                                                    zzd3 = j;
                                                    s = 2817;
                                                }
                                            }
                                        }
                                        j = zzd3;
                                        arrayList.add(new dex(zzedVar5.zzi(), (zzd3 - aeiVar.f10094e) - zzedVar5.zzi()));
                                        i11++;
                                        zzd3 = j;
                                        s = 2817;
                                    }
                                    if (arrayList.isEmpty()) {
                                        zzadnVar.zza = 0L;
                                    } else {
                                        aeiVar.f10093d = 3;
                                        zzadnVar.zza = ((dex) arrayList.get(0)).f14076a;
                                    }
                                }
                            } else {
                                zzed zzedVar6 = new zzed(8);
                                zzacsVar.zzi(zzedVar6.zzN(), 0, 8);
                                aeiVar.f10094e = zzedVar6.zzi() + 8;
                                if (zzedVar6.zzg() != 1397048916) {
                                    zzadnVar.zza = 0L;
                                } else {
                                    zzadnVar.zza = zzacsVar.zzf() - (aeiVar.f10094e - 12);
                                    aeiVar.f10093d = 2;
                                }
                            }
                            i = 1;
                        } else {
                            long zzd4 = zzacsVar.zzd();
                            zzadnVar.zza = (zzd4 == -1 || zzd4 < 8) ? 0L : zzd4 - 8;
                            i = 1;
                            aeiVar.f10093d = 1;
                        }
                        if (zzadnVar.zza != 0) {
                            return 1;
                        }
                        ac();
                        return i;
                    }
                    long zzf4 = zzacsVar.zzf();
                    int i12 = this.q;
                    if (i12 == -1) {
                        int i13 = -1;
                        int i14 = -1;
                        int i15 = 0;
                        boolean z2 = true;
                        boolean z3 = true;
                        long j10 = Long.MAX_VALUE;
                        long j11 = Long.MAX_VALUE;
                        long j12 = Long.MAX_VALUE;
                        while (true) {
                            foy[] foyVarArr = this.n;
                            if (i15 >= foyVarArr.length) {
                                break;
                            }
                            foy foyVar = foyVarArr[i15];
                            int i16 = foyVar.f17173b;
                            zzajh zzajhVar = foyVar.f17175d;
                            if (i16 != zzajhVar.zzb) {
                                long j13 = zzajhVar.zzc[i16];
                                long[][] jArr = this.z;
                                int i17 = zzen.zza;
                                long j14 = jArr[i15][i16];
                                long j15 = j13 - zzf4;
                                boolean z4 = j15 < 0 || j15 >= 262144;
                                if (!z4) {
                                    if (!z2) {
                                        z2 = false;
                                    }
                                    z2 = z4;
                                    i14 = i15;
                                    j12 = j15;
                                    j11 = j14;
                                    if (j14 >= j10) {
                                        z3 = z4;
                                        i13 = i15;
                                        j10 = j14;
                                    }
                                }
                                if (z4 == z2) {
                                }
                                if (j14 >= j10) {
                                }
                            }
                            i15++;
                        }
                        c2 = 2;
                        i12 = (j10 == Long.MAX_VALUE || !z3 || j11 < j10 + 10485760) ? i14 : i13;
                        this.q = i12;
                    } else {
                        c2 = 2;
                    }
                    foy foyVar2 = this.n[i12];
                    zzadx zzadxVar = foyVar2.f17176e;
                    zzaje zzajeVar = foyVar2.f17174c;
                    zzajh zzajhVar2 = foyVar2.f17175d;
                    int i18 = foyVar2.f17173b;
                    long j16 = zzajhVar2.zzc[i18];
                    int i19 = zzajhVar2.zzd[i18];
                    zzady zzadyVar = foyVar2.f17172a;
                    long j17 = (j16 - zzf4) + this.v;
                    if (j17 < 0 || j17 >= 262144) {
                        zzadnVar.zza = j16;
                        return 1;
                    }
                    if (zzajeVar.zzg == 1) {
                        j17 += 8;
                        i19 -= 8;
                    }
                    zzacsVar.zzk((int) j17);
                    if (!Objects.equals(zzajeVar.zzf.zzo, "video/avc")) {
                        this.x = true;
                    }
                    int i20 = zzajeVar.zzj;
                    if (i20 == 0) {
                        if ("audio/ac4".equals(zzajeVar.zzf.zzo)) {
                            if (this.f4202ab == 0) {
                                zzabu.zzb(i19, zzedVar);
                                zzadxVar.zzq(zzedVar, 7);
                                this.f4202ab += 7;
                            }
                            i19 += 7;
                        } else if (zzadyVar != null) {
                            zzadyVar.zzd(zzacsVar);
                        }
                        while (true) {
                            int i21 = this.f4202ab;
                            if (i21 >= i19) {
                                break;
                            }
                            int zzf5 = zzadxVar.zzf(zzacsVar, i19 - i21, false);
                            this.v += zzf5;
                            this.f4202ab += zzf5;
                            this.p -= zzf5;
                        }
                    } else {
                        zzed zzedVar7 = this.f4208g;
                        byte[] zzN = zzedVar7.zzN();
                        zzN[0] = 0;
                        zzN[1] = 0;
                        zzN[c2] = 0;
                        int i22 = i20 + 1;
                        int i23 = 4 - i20;
                        while (this.f4202ab < i19) {
                            int i24 = this.p;
                            if (i24 == 0) {
                                zzacsVar.zzi(zzN, i23, i22);
                                this.v += i22;
                                zzedVar7.zzL(0);
                                int zzg = zzedVar7.zzg();
                                if (zzg <= 0) {
                                    throw zzbh.zza("Invalid NAL length", null);
                                }
                                this.p = zzg - 1;
                                zzed zzedVar8 = this.y;
                                zzedVar8.zzL(0);
                                zzadxVar.zzq(zzedVar8, 4);
                                zzadxVar.zzq(zzedVar7, 1);
                                this.f4202ab += 5;
                                i19 += i23;
                                if (!this.x && zzfp.zzi(zzN[4])) {
                                    this.x = true;
                                }
                            } else {
                                int zzf6 = zzadxVar.zzf(zzacsVar, i24, false);
                                this.v += zzf6;
                                this.f4202ab += zzf6;
                                this.p -= zzf6;
                            }
                        }
                    }
                    int i25 = i19;
                    long j18 = zzajhVar2.zzf[i18];
                    int i26 = zzajhVar2.zzg[i18];
                    if (!this.x) {
                        i26 |= TTAdConstant.KEY_CLICK_AREA;
                    }
                    int i27 = i26;
                    if (zzadyVar != null) {
                        zzadyVar.zzc(zzadxVar, j18, i27, i25, 0, null);
                        r12 = 1;
                        r12 = 1;
                        if (i18 + 1 == zzajhVar2.zzb) {
                            zzadyVar.zza(zzadxVar, null);
                        }
                    } else {
                        r12 = 1;
                        zzadxVar.zzs(j18, i27, i25, 0, null);
                    }
                    foyVar2.f17173b += r12;
                    this.q = -1;
                    this.v = 0;
                    this.f4202ab = 0;
                    this.p = 0;
                    this.x = r12;
                    return 0;
                }
                long j19 = this.r - this.f4207f;
                long zzf7 = zzacsVar.zzf() + j19;
                zzed zzedVar9 = this.f4205d;
                if (zzedVar9 != null) {
                    zzacsVar.zzi(zzedVar9.zzN(), this.f4207f, (int) j19);
                    if (this.i == 1718909296) {
                        this.l = true;
                        zzedVar9.zzL(8);
                        int zzg2 = zzedVar9.zzg();
                        int i28 = zzg2 != 1751476579 ? zzg2 != 1903435808 ? 0 : 1 : 2;
                        if (i28 == 0) {
                            zzedVar9.zzM(4);
                            while (true) {
                                if (zzedVar9.zzb() <= 0) {
                                    i28 = 0;
                                    break;
                                }
                                int zzg3 = zzedVar9.zzg();
                                i28 = zzg3 != 1751476579 ? zzg3 != 1903435808 ? 0 : 1 : 2;
                                if (i28 != 0) {
                                    break;
                                }
                            }
                        }
                        this.w = i28;
                    } else if (!arrayDeque.isEmpty()) {
                        ((zzes) arrayDeque.peek()).zzd(new zzet(this.i, zzedVar9));
                    }
                } else {
                    if (!this.l && this.i == 1835295092) {
                        this.w = 1;
                    }
                    if (j19 < 262144) {
                        zzacsVar.zzk((int) j19);
                    } else {
                        zzadnVar.zza = zzacsVar.zzf() + j19;
                        z = true;
                        ad(zzf7);
                        if (z && this.f4204c != 2) {
                            return 1;
                        }
                    }
                }
                z = false;
                ad(zzf7);
                if (z) {
                    return 1;
                }
                continue;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final /* synthetic */ zzacr zzc() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final /* synthetic */ List zzd() {
        return this.u;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zze(zzacu zzacuVar) {
        if ((this.t & 16) == 0) {
            zzacuVar = new zzakj(zzacuVar, this.k);
        }
        this.m = zzacuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zzf(long j, long j2) {
        this.aa.clear();
        this.f4207f = 0;
        this.q = -1;
        this.v = 0;
        this.f4202ab = 0;
        this.p = 0;
        this.x = true;
        if (j == 0) {
            if (this.f4204c != 3) {
                ac();
                return;
            }
            aei aeiVar = this.f4203b;
            aeiVar.f10092c.clear();
            aeiVar.f10093d = 0;
            this.s.clear();
            return;
        }
        for (foy foyVar : this.n) {
            zzajh zzajhVar = foyVar.f17175d;
            int zza = zzajhVar.zza(j2);
            if (zza == -1) {
                zza = zzajhVar.zzb(j2);
            }
            foyVar.f17173b = zza;
            zzady zzadyVar = foyVar.f17172a;
            if (zzadyVar != null) {
                zzadyVar.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final zzado zzg(long j) {
        long j2;
        long j3;
        long j4;
        long j5;
        int zzb;
        long j6 = j;
        foy[] foyVarArr = this.n;
        if (foyVarArr.length == 0) {
            zzadr zzadrVar = zzadr.zza;
            return new zzado(zzadrVar, zzadrVar);
        }
        int i = this.f4206e;
        long j7 = -1;
        if (i != -1) {
            zzajh zzajhVar = foyVarArr[i].f17175d;
            int zza = zzajhVar.zza(j6);
            if (zza == -1) {
                zza = zzajhVar.zzb(j6);
            }
            if (zza == -1) {
                zzadr zzadrVar2 = zzadr.zza;
                return new zzado(zzadrVar2, zzadrVar2);
            }
            long j8 = zzajhVar.zzf[zza];
            j2 = zzajhVar.zzc[zza];
            if (j8 >= j6 || zza >= zzajhVar.zzb - 1 || (zzb = zzajhVar.zzb(j6)) == -1 || zzb == zza) {
                j5 = -9223372036854775807L;
            } else {
                long j9 = zzajhVar.zzf[zzb];
                j7 = zzajhVar.zzc[zzb];
                j5 = j9;
            }
            j3 = j5;
            j6 = j8;
        } else {
            j2 = Long.MAX_VALUE;
            j3 = -9223372036854775807L;
        }
        int i2 = 0;
        while (true) {
            foy[] foyVarArr2 = this.n;
            if (i2 >= foyVarArr2.length) {
                break;
            }
            if (i2 != this.f4206e) {
                zzajh zzajhVar2 = foyVarArr2[i2].f17175d;
                int zza2 = zzajhVar2.zza(j6);
                if (zza2 == -1) {
                    zza2 = zzajhVar2.zzb(j6);
                }
                if (zza2 == -1) {
                    j4 = -9223372036854775807L;
                } else {
                    j4 = -9223372036854775807L;
                    j2 = Math.min(zzajhVar2.zzc[zza2], j2);
                }
                if (j3 != j4) {
                    int zza3 = zzajhVar2.zza(j3);
                    if (zza3 == -1) {
                        zza3 = zzajhVar2.zzb(j3);
                    }
                    if (zza3 != -1) {
                        j7 = Math.min(zzajhVar2.zzc[zza3], j7);
                    }
                }
            }
            i2++;
        }
        zzadr zzadrVar3 = new zzadr(j6, j2);
        return j3 == -9223372036854775807L ? new zzado(zzadrVar3, zzadrVar3) : new zzado(zzadrVar3, new zzadr(j3, j7));
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final boolean zzh() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final boolean zzi(zzacs zzacsVar) throws IOException {
        zzadu zzb = zzajd.zzb(zzacsVar, (this.t & 2) != 0);
        this.u = zzb != null ? zzfzo.zzo(zzb) : zzfzo.zzn();
        return zzb == null;
    }
}
