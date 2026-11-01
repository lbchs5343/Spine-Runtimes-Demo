package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.C;
import g.alv;
import g.aot;
import g.bb;
import g.cyw;
import g.ddl;
import g.enm;
import g.gcf;
import g.hes;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzaej implements zzacr {

    /* renamed from: a, reason: collision with root package name */
    public long f4143a;

    /* renamed from: b, reason: collision with root package name */
    public g.ae f4144b;

    /* renamed from: c, reason: collision with root package name */
    public int f4145c;

    /* renamed from: d, reason: collision with root package name */
    public long f4146d;

    /* renamed from: e, reason: collision with root package name */
    public final zzakg f4147e;

    /* renamed from: f, reason: collision with root package name */
    public int f4148f;

    /* renamed from: g, reason: collision with root package name */
    public int f4149g;
    public final zzed h;
    public zzacu i;
    public boolean j;
    public long k;
    public g.ae[] l;
    public final aot m;
    public long n;
    public final boolean o;
    public ddl p;

    @Deprecated
    public zzaej() {
        this(1, zzakg.zza);
    }

    public zzaej(int i, zzakg zzakgVar) {
        this.f4147e = zzakgVar;
        this.o = 1 == (i ^ 1);
        this.h = new zzed(12);
        this.m = new aot(4);
        this.i = new zzadl();
        this.l = new g.ae[0];
        this.k = -1L;
        this.f4146d = -1L;
        this.f4148f = -1;
        this.f4143a = -9223372036854775807L;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0394  */
    @Override // com.google.android.gms.internal.ads.zzacr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzb(zzacs zzacsVar, zzadn zzadnVar) throws IOException {
        boolean z;
        int i;
        g.ae aeVar;
        long j;
        g.ae aeVar2;
        long j2 = this.n;
        if (j2 != -1) {
            long zzf = zzacsVar.zzf();
            if (j2 < zzf || j2 > 262144 + zzf) {
                zzadnVar.zza = j2;
                z = true;
                this.n = -1L;
                if (!z) {
                    return 1;
                }
                int i2 = this.f4149g;
                g.ae aeVar3 = null;
                if (i2 == 0) {
                    if (!zzi(zzacsVar)) {
                        throw zzbh.zza("AVI Header List not found", null);
                    }
                    zzacsVar.zzk(12);
                    this.f4149g = 1;
                    return 0;
                }
                aot aotVar = this.m;
                zzed zzedVar = this.h;
                if (i2 == 1) {
                    zzacsVar.zzi(zzedVar.zzN(), 0, 12);
                    zzedVar.zzL(0);
                    aotVar.getClass();
                    aotVar.f10586b = zzedVar.zzi();
                    aotVar.f10587c = zzedVar.zzi();
                    int i3 = aotVar.f10586b;
                    if (i3 != 1414744396) {
                        throw zzbh.zza("LIST expected, found: " + i3, null);
                    }
                    int zzi = zzedVar.zzi();
                    if (zzi == 1819436136) {
                        this.f4148f = aotVar.f10587c;
                        this.f4149g = 2;
                        return 0;
                    }
                    throw zzbh.zza("hdrl expected, found: " + zzi, null);
                }
                if (i2 == 2) {
                    int i4 = this.f4148f - 4;
                    zzed zzedVar2 = new zzed(i4);
                    zzacsVar.zzi(zzedVar2.zzN(), 0, i4);
                    hes c2 = hes.c(1819436136, zzedVar2);
                    int i5 = c2.f19358b;
                    if (i5 != 1819436136) {
                        throw zzbh.zza("Unexpected header list type " + i5, null);
                    }
                    ddl ddlVar = (ddl) c2.d(ddl.class);
                    if (ddlVar == null) {
                        throw zzbh.zza("AviHeader not found", null);
                    }
                    this.p = ddlVar;
                    this.f4143a = ddlVar.f14021c * ddlVar.f14019a;
                    ArrayList arrayList = new ArrayList();
                    zzfzo zzfzoVar = c2.f19357a;
                    int size = zzfzoVar.size();
                    int i6 = 0;
                    for (int i7 = 0; i7 < size; i7++) {
                        alv alvVar = (alv) zzfzoVar.get(i7);
                        if (alvVar.zza() == 1819440243) {
                            hes hesVar = (hes) alvVar;
                            int i8 = i6 + 1;
                            cyw cywVar = (cyw) hesVar.d(cyw.class);
                            bb bbVar = (bb) hesVar.d(bb.class);
                            if (cywVar == null) {
                                zzdt.zzf("AviExtractor", "Missing Stream Header");
                            } else if (bbVar == null) {
                                zzdt.zzf("AviExtractor", "Missing Stream Format");
                            } else {
                                int i9 = cywVar.f13781a;
                                int i10 = cywVar.f13784d;
                                int i11 = cywVar.f13785e;
                                zzad zzadVar = bbVar.f11208a;
                                i = i8;
                                long zzu = zzen.zzu(i9, i10 * C.MICROS_PER_SECOND, i11, RoundingMode.FLOOR);
                                zzab zzb = zzadVar.zzb();
                                zzb.zzK(i6);
                                int i12 = cywVar.f13782b;
                                if (i12 != 0) {
                                    zzb.zzQ(i12);
                                }
                                gcf gcfVar = (gcf) hesVar.d(gcf.class);
                                if (gcfVar != null) {
                                    zzb.zzN(gcfVar.f17881a);
                                }
                                int zzb2 = zzbg.zzb(zzadVar.zzo);
                                if (zzb2 != 1) {
                                    if (zzb2 == 2) {
                                        zzb2 = 2;
                                    }
                                    aeVar = null;
                                    if (aeVar != null) {
                                        arrayList.add(aeVar);
                                    }
                                    i6 = i;
                                }
                                zzadx zzw = this.i.zzw(i6, zzb2);
                                zzw.zzl(zzb.zzaf());
                                aeVar = new g.ae(i6, zzb2, zzu, cywVar.f13781a, zzw);
                                this.f4143a = zzu;
                                if (aeVar != null) {
                                }
                                i6 = i;
                            }
                            i = i8;
                            aeVar = null;
                            if (aeVar != null) {
                            }
                            i6 = i;
                        }
                    }
                    this.l = (g.ae[]) arrayList.toArray(new g.ae[0]);
                    this.i.zzD();
                    this.f4149g = 3;
                    return 0;
                }
                if (i2 == 3) {
                    long j3 = this.k;
                    if (j3 != -1 && zzacsVar.zzf() != j3) {
                        this.n = j3;
                        return 0;
                    }
                    zzacsVar.zzh(zzedVar.zzN(), 0, 12);
                    zzacsVar.zzj();
                    zzedVar.zzL(0);
                    aotVar.getClass();
                    aotVar.f10586b = zzedVar.zzi();
                    aotVar.f10587c = zzedVar.zzi();
                    int zzi2 = zzedVar.zzi();
                    int i13 = aotVar.f10586b;
                    if (i13 == 1179011410) {
                        zzacsVar.zzk(12);
                        return 0;
                    }
                    if (i13 != 1414744396 || zzi2 != 1769369453) {
                        this.n = zzacsVar.zzf() + aotVar.f10587c + 8;
                        return 0;
                    }
                    long zzf2 = zzacsVar.zzf();
                    this.k = zzf2;
                    long j4 = zzf2 + aotVar.f10587c + 8;
                    this.f4146d = j4;
                    if (!this.j) {
                        ddl ddlVar2 = this.p;
                        ddlVar2.getClass();
                        if ((ddlVar2.f14020b & 16) == 16) {
                            this.f4149g = 4;
                            this.n = j4;
                            return 0;
                        }
                        this.i.zzO(new zzadp(this.f4143a, 0L));
                        this.j = true;
                    }
                    this.n = zzacsVar.zzf() + 12;
                    this.f4149g = 6;
                    return 0;
                }
                if (i2 == 4) {
                    zzacsVar.zzi(zzedVar.zzN(), 0, 8);
                    zzedVar.zzL(0);
                    int zzi3 = zzedVar.zzi();
                    int zzi4 = zzedVar.zzi();
                    if (zzi3 != 829973609) {
                        this.n = zzacsVar.zzf() + zzi4;
                        return 0;
                    }
                    this.f4149g = 5;
                    this.f4145c = zzi4;
                    return 0;
                }
                if (i2 != 5) {
                    if (zzacsVar.zzf() >= this.f4146d) {
                        return -1;
                    }
                    g.ae aeVar4 = this.f4144b;
                    if (aeVar4 != null) {
                        zzadx zzadxVar = aeVar4.f10076f;
                        int i14 = aeVar4.m;
                        int zzf3 = i14 - zzadxVar.zzf(zzacsVar, i14, false);
                        aeVar4.m = zzf3;
                        boolean z2 = zzf3 == 0;
                        if (z2) {
                            if (aeVar4.f10077g > 0) {
                                int i15 = aeVar4.f10071a;
                                zzadxVar.zzs((aeVar4.f10073c * i15) / aeVar4.f10075e, Arrays.binarySearch(aeVar4.h, i15) >= 0 ? 1 : 0, aeVar4.f10077g, 0, null);
                            }
                            aeVar4.f10071a++;
                        }
                        if (!z2) {
                            return 0;
                        }
                        this.f4144b = null;
                        return 0;
                    }
                    if ((zzacsVar.zzf() & 1) == 1) {
                        zzacsVar.zzk(1);
                    }
                    zzacsVar.zzh(zzedVar.zzN(), 0, 12);
                    zzedVar.zzL(0);
                    int zzi5 = zzedVar.zzi();
                    if (zzi5 == 1414744396) {
                        zzedVar.zzL(8);
                        zzacsVar.zzk(zzedVar.zzi() != 1769369453 ? 8 : 12);
                        zzacsVar.zzj();
                        return 0;
                    }
                    int zzi6 = zzedVar.zzi();
                    if (zzi5 == 1263424842) {
                        this.n = zzacsVar.zzf() + zzi6 + 8;
                        return 0;
                    }
                    zzacsVar.zzk(8);
                    zzacsVar.zzj();
                    for (g.ae aeVar5 : this.l) {
                        if (aeVar5.j == zzi5 || aeVar5.l == zzi5) {
                            aeVar3 = aeVar5;
                            break;
                        }
                    }
                    if (aeVar3 == null) {
                        this.n = zzacsVar.zzf() + zzi6;
                        return 0;
                    }
                    aeVar3.f10077g = zzi6;
                    aeVar3.m = zzi6;
                    this.f4144b = aeVar3;
                    return 0;
                }
                zzed zzedVar3 = new zzed(this.f4145c);
                zzacsVar.zzi(zzedVar3.zzN(), 0, this.f4145c);
                if (zzedVar3.zzb() < 16) {
                    j = 0;
                } else {
                    int zzd = zzedVar3.zzd();
                    zzedVar3.zzM(8);
                    long zzi7 = zzedVar3.zzi();
                    long j5 = this.k;
                    j = zzi7 > j5 ? 0L : j5 + 8;
                    zzedVar3.zzL(zzd);
                }
                while (zzedVar3.zzb() >= 16) {
                    int zzi8 = zzedVar3.zzi();
                    int zzi9 = zzedVar3.zzi();
                    long zzi10 = zzedVar3.zzi() + j;
                    zzedVar3.zzi();
                    g.ae[] aeVarArr = this.l;
                    int length = aeVarArr.length;
                    int i16 = 0;
                    while (true) {
                        if (i16 >= length) {
                            aeVar2 = null;
                            break;
                        }
                        aeVar2 = aeVarArr[i16];
                        if (aeVar2.j == zzi8 || aeVar2.l == zzi8) {
                            break;
                        }
                        i16++;
                    }
                    if (aeVar2 != null) {
                        boolean z3 = (zzi9 & 16) == 16;
                        if (aeVar2.f10072b == -1) {
                            aeVar2.f10072b = zzi10;
                        }
                        if (z3) {
                            if (aeVar2.k == aeVar2.h.length) {
                                long[] jArr = aeVar2.f10074d;
                                aeVar2.f10074d = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
                                int[] iArr = aeVar2.h;
                                aeVar2.h = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
                            }
                            long[] jArr2 = aeVar2.f10074d;
                            int i17 = aeVar2.k;
                            jArr2[i17] = zzi10;
                            aeVar2.h[i17] = aeVar2.i;
                            aeVar2.k = i17 + 1;
                        }
                        aeVar2.i++;
                    }
                }
                for (g.ae aeVar6 : this.l) {
                    aeVar6.f10074d = Arrays.copyOf(aeVar6.f10074d, aeVar6.k);
                    aeVar6.h = Arrays.copyOf(aeVar6.h, aeVar6.k);
                }
                this.j = true;
                this.i.zzO(new enm(this, this.f4143a));
                this.f4149g = 6;
                this.n = this.k;
                return 0;
            }
            zzacsVar.zzk((int) (j2 - zzf));
        }
        z = false;
        this.n = -1L;
        if (!z) {
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
        this.f4149g = 0;
        if (this.o) {
            zzacuVar = new zzakj(zzacuVar, this.f4147e);
        }
        this.i = zzacuVar;
        this.n = -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zzf(long j, long j2) {
        this.n = -1L;
        this.f4144b = null;
        for (g.ae aeVar : this.l) {
            if (aeVar.k == 0) {
                aeVar.f10071a = 0;
            } else {
                aeVar.f10071a = aeVar.h[zzen.zzd(aeVar.f10074d, j, true, true)];
            }
        }
        if (j == 0) {
            this.f4149g = this.l.length != 0 ? 3 : 0;
        } else {
            this.f4149g = 6;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final boolean zzi(zzacs zzacsVar) throws IOException {
        zzed zzedVar = this.h;
        zzacsVar.zzh(zzedVar.zzN(), 0, 12);
        zzedVar.zzL(0);
        if (zzedVar.zzi() != 1179011410) {
            return false;
        }
        zzedVar.zzM(4);
        return zzedVar.zzi() == 541677121;
    }
}
