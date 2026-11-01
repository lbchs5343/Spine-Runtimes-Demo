package com.google.android.gms.internal.ads;

import android.util.Pair;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import g.akq;
import g.dub;
import g.eta;
import g.he;
import g.jk;
import g.vb;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/* loaded from: classes3.dex */
public final class zzait implements zzacr {

    /* renamed from: a, reason: collision with root package name */
    public static final zzad f4193a;

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f4194b = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    public final zzafp aa;

    /* renamed from: ab, reason: collision with root package name */
    public int f4195ab;
    public int ac;
    public zzed ad;
    public zzacu ae;
    public final List af;
    public boolean ag;
    public boolean ah;
    public long ai;
    public final zzed aj;
    public long ak;

    /* renamed from: c, reason: collision with root package name */
    public eta f4196c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f4197d;

    /* renamed from: e, reason: collision with root package name */
    public final zzed f4198e;

    /* renamed from: f, reason: collision with root package name */
    public zzadx[] f4199f;

    /* renamed from: g, reason: collision with root package name */
    public zzfzo f4200g;
    public long h;
    public zzadx[] i;
    public final zzft j;
    public final SparseArray k;
    public int l;
    public final ArrayDeque m;
    public final zzed n;
    public final zzakg o;
    public long p;
    public boolean q;
    public int r;
    public int s;
    public long t;
    public final zzed u;
    public int v;
    public int w;
    public final ArrayDeque x;
    public final zzed y;
    public final int z;

    static {
        zzab zzabVar = new zzab();
        zzabVar.zzZ("application/x-emsg");
        f4193a = zzabVar.zzaf();
    }

    @Deprecated
    public zzait() {
        this(zzakg.zza, 32, null, null, zzfzo.zzn(), null);
    }

    public zzait(zzakg zzakgVar, int i, zzek zzekVar, zzaje zzajeVar, List list, zzadx zzadxVar) {
        this.o = zzakgVar;
        this.z = i;
        this.af = Collections.unmodifiableList(list);
        this.aa = new zzafp();
        this.f4198e = new zzed(16);
        this.n = new zzed(zzfp.zza);
        this.u = new zzed(5);
        this.aj = new zzed();
        byte[] bArr = new byte[16];
        this.f4197d = bArr;
        this.y = new zzed(bArr);
        this.m = new ArrayDeque();
        this.x = new ArrayDeque();
        this.k = new SparseArray();
        this.f4200g = zzfzo.zzn();
        this.ai = -9223372036854775807L;
        this.t = -9223372036854775807L;
        this.h = -9223372036854775807L;
        this.ae = zzacu.zza;
        this.i = new zzadx[0];
        this.f4199f = new zzadx[0];
        this.j = new zzft(new zzfr() { // from class: com.google.android.gms.internal.ads.zzaiq
            @Override // com.google.android.gms.internal.ads.zzfr
            public final void zza(long j, zzed zzedVar) {
                zzacd.zza(j, zzedVar, zzait.this.f4199f);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00e0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzw al(List list) {
        int i;
        zzaja zzajaVar;
        UUID uuid;
        int size = list.size();
        int i2 = 0;
        ArrayList arrayList = null;
        while (i2 < size) {
            zzet zzetVar = (zzet) list.get(i2);
            if (zzetVar.zzd == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] zzN = zzetVar.zza.zzN();
                zzed zzedVar = new zzed(zzN);
                if (zzedVar.zze() >= 32) {
                    zzedVar.zzL(0);
                    int zzb = zzedVar.zzb();
                    int zzg = zzedVar.zzg();
                    if (zzg != zzb) {
                        zzdt.zzf("PsshAtomUtil", "Advertised atom size (" + zzg + ") does not match buffer size: " + zzb);
                    } else {
                        int zzg2 = zzedVar.zzg();
                        if (zzg2 != 1886614376) {
                            dub.g(zzg2, "Atom type is not pssh: ", "PsshAtomUtil");
                        } else {
                            int zza = zzain.zza(zzedVar.zzg());
                            if (zza > 1) {
                                dub.g(zza, "Unsupported pssh version: ", "PsshAtomUtil");
                            } else {
                                UUID uuid2 = new UUID(zzedVar.zzt(), zzedVar.zzt());
                                if (zza == 1) {
                                    int zzp = zzedVar.zzp();
                                    UUID[] uuidArr = new UUID[zzp];
                                    int i3 = 0;
                                    while (i3 < zzp) {
                                        uuidArr[i3] = new UUID(zzedVar.zzt(), zzedVar.zzt());
                                        i3++;
                                        i2 = i2;
                                    }
                                }
                                i = i2;
                                int zzp2 = zzedVar.zzp();
                                int zzb2 = zzedVar.zzb();
                                if (zzp2 != zzb2) {
                                    zzdt.zzf("PsshAtomUtil", "Atom data size (" + zzp2 + ") does not match the bytes left: " + zzb2);
                                    zzajaVar = null;
                                    uuid = zzajaVar == null ? null : zzajaVar.zza;
                                    if (uuid == null) {
                                        zzdt.zzf("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                                    } else {
                                        arrayList.add(new zzv(uuid, null, "video/mp4", zzN));
                                        i2 = i + 1;
                                    }
                                } else {
                                    zzedVar.zzH(new byte[zzp2], 0, zzp2);
                                    zzajaVar = new zzaja(uuid2);
                                    if (zzajaVar == null) {
                                    }
                                    if (uuid == null) {
                                    }
                                }
                            }
                        }
                    }
                }
                i = i2;
                zzajaVar = null;
                if (zzajaVar == null) {
                }
                if (uuid == null) {
                }
            } else {
                i = i2;
            }
            i2 = i + 1;
        }
        if (arrayList == null) {
            return null;
        }
        return new zzw(arrayList);
    }

    public static void am(zzed zzedVar, int i, jk jkVar) {
        zzedVar.zzL(i + 8);
        int zzg = zzedVar.zzg();
        byte[] bArr = zzain.f4192a;
        if ((zzg & 1) != 0) {
            throw zzbh.zzc("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z = (zzg & 2) != 0;
        int zzp = zzedVar.zzp();
        if (zzp == 0) {
            Arrays.fill(jkVar.f19489f, 0, jkVar.f19490g, false);
            return;
        }
        int i2 = jkVar.f19490g;
        zzed zzedVar2 = jkVar.f19487d;
        if (zzp != i2) {
            throw zzbh.zza("Senc sample count " + zzp + " is different from fragment sample count" + i2, null);
        }
        Arrays.fill(jkVar.f19489f, 0, zzp, z);
        zzedVar2.zzI(zzedVar.zzb());
        jkVar.f19485b = true;
        jkVar.f19486c = true;
        zzedVar.zzH(zzedVar2.zzN(), 0, zzedVar2.zze());
        zzedVar2.zzL(0);
        jkVar.f19486c = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:138:0x0366, code lost:
    
        if (com.google.android.gms.internal.ads.zzen.zzu(r39, com.bykv.vk.component.ttvideo.player.C.MICROS_PER_SECOND, r1.zzd, java.math.RoundingMode.FLOOR) < r1.zze) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:376:0x073d, code lost:
    
        ao();
     */
    /* JADX WARN: Code restructure failed: missing block: B:377:0x0740, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:90:0x039c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void an(long j) {
        akq akqVar;
        akq akqVar2;
        zzw zzwVar;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z;
        int i6;
        int i7;
        List list;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        akq akqVar3;
        int i16;
        boolean z2;
        long[] jArr;
        while (true) {
            ArrayDeque arrayDeque = this.m;
            if (arrayDeque.isEmpty() || ((zzes) arrayDeque.peek()).zza != j) {
                break;
            }
            zzes zzesVar = (zzes) arrayDeque.pop();
            int i17 = zzesVar.zzd;
            int i18 = this.z;
            int i19 = 12;
            SparseArray sparseArray = this.k;
            if (i17 == 1836019574) {
                zzw al = al(zzesVar.zzb);
                zzes zza = zzesVar.zza(1836475768);
                zza.getClass();
                SparseArray sparseArray2 = new SparseArray();
                int size = zza.zzb.size();
                long j2 = -9223372036854775807L;
                int i20 = 0;
                while (i20 < size) {
                    zzet zzetVar = (zzet) zza.zzb.get(i20);
                    int i21 = zzetVar.zzd;
                    if (i21 == 1953654136) {
                        zzed zzedVar = zzetVar.zza;
                        zzedVar.zzL(i19);
                        zzwVar = al;
                        Pair create = Pair.create(Integer.valueOf(zzedVar.zzg()), new akq(zzedVar.zzg() - 1, zzedVar.zzg(), zzedVar.zzg(), zzedVar.zzg()));
                        sparseArray2.put(((Integer) create.first).intValue(), (akq) create.second);
                    } else {
                        zzwVar = al;
                        if (i21 == 1835362404) {
                            zzed zzedVar2 = zzetVar.zza;
                            zzedVar2.zzL(8);
                            j2 = zzain.zza(zzedVar2.zzg()) == 0 ? zzedVar2.zzu() : zzedVar2.zzw();
                        }
                    }
                    i20++;
                    al = zzwVar;
                    i19 = 12;
                }
                List zzf = zzain.zzf(zzesVar, new zzadf(), j2, al, (i18 & 16) != 0, false, new zzfwh(this) { // from class: com.google.android.gms.internal.ads.zzaip
                    @Override // com.google.android.gms.internal.ads.zzfwh
                    public final Object apply(Object obj) {
                        return (zzaje) obj;
                    }
                });
                int size2 = zzf.size();
                if (sparseArray.size() == 0) {
                    for (int i22 = 0; i22 < size2; i22++) {
                        zzajh zzajhVar = (zzajh) zzf.get(i22);
                        zzaje zzajeVar = zzajhVar.zza;
                        zzadx zzw = this.ae.zzw(i22, zzajeVar.zzb);
                        int i23 = zzajeVar.zza;
                        if (sparseArray2.size() == 1) {
                            akqVar = (akq) sparseArray2.valueAt(0);
                        } else {
                            akqVar = (akq) sparseArray2.get(i23);
                            akqVar.getClass();
                        }
                        sparseArray.put(zzajeVar.zza, new eta(zzw, zzajhVar, akqVar));
                        this.ai = Math.max(this.ai, zzajeVar.zze);
                    }
                    this.ae.zzD();
                } else {
                    zzdb.zzf(sparseArray.size() == size2);
                    for (int i24 = 0; i24 < size2; i24++) {
                        zzajh zzajhVar2 = (zzajh) zzf.get(i24);
                        zzaje zzajeVar2 = zzajhVar2.zza;
                        eta etaVar = (eta) sparseArray.get(zzajeVar2.zza);
                        int i25 = zzajeVar2.zza;
                        if (sparseArray2.size() == 1) {
                            akqVar2 = (akq) sparseArray2.valueAt(0);
                        } else {
                            akqVar2 = (akq) sparseArray2.get(i25);
                            akqVar2.getClass();
                        }
                        etaVar.f16133c = zzajhVar2;
                        etaVar.f16135e = akqVar2;
                        etaVar.f16136f.zzl(zzajhVar2.zza.zzf);
                        etaVar.m();
                    }
                }
            } else if (i17 == 1836019558) {
                int size3 = zzesVar.zzc.size();
                int i26 = 0;
                while (i26 < size3) {
                    zzes zzesVar2 = (zzes) zzesVar.zzc.get(i26);
                    if (zzesVar2.zzd == 1953653094) {
                        zzet zzb = zzesVar2.zzb(1952868452);
                        zzb.getClass();
                        zzed zzedVar3 = zzb.zza;
                        zzedVar3.zzL(8);
                        int zzg = zzedVar3.zzg();
                        byte[] bArr = zzain.f4192a;
                        eta etaVar2 = (eta) sparseArray.get(zzedVar3.zzg());
                        if (etaVar2 == null) {
                            etaVar2 = null;
                        } else {
                            jk jkVar = etaVar2.i;
                            if ((zzg & 1) != 0) {
                                long zzw2 = zzedVar3.zzw();
                                jkVar.m = zzw2;
                                jkVar.p = zzw2;
                            }
                            akq akqVar4 = etaVar2.f16135e;
                            jkVar.h = new akq((zzg & 2) != 0 ? zzedVar3.zzg() - 1 : akqVar4.f10401b, (zzg & 8) != 0 ? zzedVar3.zzg() : akqVar4.f10402c, (zzg & 16) != 0 ? zzedVar3.zzg() : akqVar4.f10403d, (zzg & 32) != 0 ? zzedVar3.zzg() : akqVar4.f10400a);
                        }
                        if (etaVar2 == null) {
                            i = size3;
                            i2 = i18;
                            i3 = i26;
                        } else {
                            jk jkVar2 = etaVar2.i;
                            long j3 = jkVar2.j;
                            boolean z3 = jkVar2.o;
                            etaVar2.m();
                            etaVar2.f16134d = true;
                            zzet zzb2 = zzesVar2.zzb(1952867444);
                            if (zzb2 == null || (i18 & 2) != 0) {
                                jkVar2.j = j3;
                                jkVar2.o = z3;
                            } else {
                                zzed zzedVar4 = zzb2.zza;
                                zzedVar4.zzL(8);
                                jkVar2.j = zzain.zza(zzedVar4.zzg()) == 1 ? zzedVar4.zzw() : zzedVar4.zzu();
                                jkVar2.o = true;
                            }
                            List list2 = zzesVar2.zzb;
                            int size4 = list2.size();
                            int i27 = 0;
                            int i28 = 0;
                            int i29 = 0;
                            while (true) {
                                i4 = 1953658222;
                                if (i27 >= size4) {
                                    break;
                                }
                                zzet zzetVar2 = (zzet) list2.get(i27);
                                int i30 = size3;
                                if (zzetVar2.zzd == 1953658222) {
                                    zzed zzedVar5 = zzetVar2.zza;
                                    zzedVar5.zzL(12);
                                    int zzp = zzedVar5.zzp();
                                    if (zzp > 0) {
                                        i29 += zzp;
                                        i28++;
                                    }
                                }
                                i27++;
                                size3 = i30;
                            }
                            i = size3;
                            etaVar2.f16131a = 0;
                            etaVar2.l = 0;
                            etaVar2.f16137g = 0;
                            jkVar2.f19488e = i28;
                            jkVar2.f19490g = i29;
                            if (jkVar2.q.length < i28) {
                                jkVar2.i = new long[i28];
                                jkVar2.q = new int[i28];
                            }
                            if (jkVar2.f19484a.length < i29) {
                                int i31 = (i29 * 125) / 100;
                                jkVar2.f19484a = new int[i31];
                                jkVar2.l = new long[i31];
                                jkVar2.n = new boolean[i31];
                                jkVar2.f19489f = new boolean[i31];
                            }
                            int i32 = 0;
                            int i33 = 0;
                            int i34 = 0;
                            while (true) {
                                long j4 = 0;
                                if (i32 < size4) {
                                    zzet zzetVar3 = (zzet) list2.get(i32);
                                    if (zzetVar3.zzd == i4) {
                                        int i35 = i33 + 1;
                                        zzed zzedVar6 = zzetVar3.zza;
                                        zzedVar6.zzL(8);
                                        int zzg2 = zzedVar6.zzg();
                                        i6 = i32;
                                        zzaje zzajeVar3 = etaVar2.f16133c.zza;
                                        int i36 = i33;
                                        akq akqVar5 = jkVar2.h;
                                        int i37 = zzen.zza;
                                        i7 = i18;
                                        jkVar2.q[i36] = zzedVar6.zzp();
                                        long[] jArr2 = jkVar2.i;
                                        list = list2;
                                        i8 = size4;
                                        long j5 = jkVar2.m;
                                        jArr2[i36] = j5;
                                        if ((zzg2 & 1) != 0) {
                                            jArr2[i36] = j5 + zzedVar6.zzg();
                                        }
                                        boolean z4 = (zzg2 & 4) != 0;
                                        int i38 = akqVar5.f10400a;
                                        if (z4) {
                                            i38 = zzedVar6.zzg();
                                        }
                                        int i39 = zzg2 & 256;
                                        boolean z5 = z4;
                                        int i40 = zzg2 & 512;
                                        int i41 = zzg2 & 1024;
                                        int i42 = zzg2 & 2048;
                                        long[] jArr3 = zzajeVar3.zzh;
                                        if (jArr3 != null) {
                                            i10 = i38;
                                            if (jArr3.length == 1 && (jArr = zzajeVar3.zzi) != null) {
                                                long j6 = jArr3[0];
                                                if (j6 == 0) {
                                                    i11 = i39;
                                                } else {
                                                    long j7 = j6 + jArr[0];
                                                    i11 = i39;
                                                }
                                                j4 = zzajeVar3.zzi[0];
                                                int[] iArr = jkVar2.f19484a;
                                                long[] jArr4 = jkVar2.l;
                                                int i43 = i11;
                                                boolean[] zArr = jkVar2.n;
                                                boolean z6 = (zzajeVar3.zzb == 2 || (i7 & 1) == 0) ? false : true;
                                                i12 = jkVar2.q[i36] + i34;
                                                i9 = i26;
                                                long j8 = zzajeVar3.zzc;
                                                long j9 = jkVar2.j;
                                                while (i34 < i12) {
                                                    int zzg3 = i43 != 0 ? zzedVar6.zzg() : akqVar5.f10402c;
                                                    boolean z7 = z6;
                                                    if (zzg3 < 0) {
                                                        throw zzbh.zza("Unexpected negative value: " + zzg3, null);
                                                    }
                                                    if (i40 != 0) {
                                                        i13 = i12;
                                                        i14 = zzedVar6.zzg();
                                                    } else {
                                                        i13 = i12;
                                                        i14 = akqVar5.f10403d;
                                                    }
                                                    if (i14 < 0) {
                                                        throw zzbh.zza("Unexpected negative value: " + i14, null);
                                                    }
                                                    if (i41 != 0) {
                                                        i15 = zzedVar6.zzg();
                                                    } else {
                                                        if (i34 == 0) {
                                                            if (z5) {
                                                                i15 = i10;
                                                                i34 = 0;
                                                            } else {
                                                                i34 = 0;
                                                            }
                                                        }
                                                        i15 = akqVar5.f10400a;
                                                    }
                                                    if (i42 != 0) {
                                                        akqVar3 = akqVar5;
                                                        i16 = zzedVar6.zzg();
                                                    } else {
                                                        akqVar3 = akqVar5;
                                                        i16 = 0;
                                                    }
                                                    int i44 = i35;
                                                    zzed zzedVar7 = zzedVar6;
                                                    long zzu = zzen.zzu((i16 + j9) - j4, C.MICROS_PER_SECOND, j8, RoundingMode.FLOOR);
                                                    jArr4[i34] = zzu;
                                                    if (!jkVar2.o) {
                                                        jArr4[i34] = zzu + etaVar2.f16133c.zzh;
                                                    }
                                                    iArr[i34] = i14;
                                                    if (((i15 >> 16) & 1) == 0) {
                                                        if (!z7) {
                                                            z2 = true;
                                                        } else if (i34 == 0) {
                                                            z2 = true;
                                                            i34 = 0;
                                                        }
                                                        zArr[i34] = z2;
                                                        j9 += zzg3;
                                                        i34++;
                                                        i12 = i13;
                                                        z6 = z7;
                                                        akqVar5 = akqVar3;
                                                        i35 = i44;
                                                        zzedVar6 = zzedVar7;
                                                    }
                                                    z2 = false;
                                                    zArr[i34] = z2;
                                                    j9 += zzg3;
                                                    i34++;
                                                    i12 = i13;
                                                    z6 = z7;
                                                    akqVar5 = akqVar3;
                                                    i35 = i44;
                                                    zzedVar6 = zzedVar7;
                                                }
                                                jkVar2.j = j9;
                                                i34 = i12;
                                                i33 = i35;
                                            }
                                        } else {
                                            i10 = i38;
                                        }
                                        i11 = i39;
                                        int[] iArr2 = jkVar2.f19484a;
                                        long[] jArr42 = jkVar2.l;
                                        int i432 = i11;
                                        boolean[] zArr2 = jkVar2.n;
                                        if (zzajeVar3.zzb == 2) {
                                        }
                                        i12 = jkVar2.q[i36] + i34;
                                        i9 = i26;
                                        long j82 = zzajeVar3.zzc;
                                        long j92 = jkVar2.j;
                                        while (i34 < i12) {
                                        }
                                        jkVar2.j = j92;
                                        i34 = i12;
                                        i33 = i35;
                                    } else {
                                        i6 = i32;
                                        i7 = i18;
                                        list = list2;
                                        i8 = size4;
                                        i9 = i26;
                                    }
                                    i32 = i6 + 1;
                                    i18 = i7;
                                    list2 = list;
                                    size4 = i8;
                                    i26 = i9;
                                    i4 = 1953658222;
                                } else {
                                    i2 = i18;
                                    i3 = i26;
                                    zzaje zzajeVar4 = etaVar2.f16133c.zza;
                                    akq akqVar6 = jkVar2.h;
                                    akqVar6.getClass();
                                    zzajf zza2 = zzajeVar4.zza(akqVar6.f10401b);
                                    zzet zzb3 = zzesVar2.zzb(1935763834);
                                    if (zzb3 != null) {
                                        zza2.getClass();
                                        int i45 = zza2.zzd;
                                        zzed zzedVar8 = zzb3.zza;
                                        zzedVar8.zzL(8);
                                        if ((zzedVar8.zzg() & 1) == 1) {
                                            zzedVar8.zzM(8);
                                        }
                                        int zzm = zzedVar8.zzm();
                                        int zzp2 = zzedVar8.zzp();
                                        int i46 = jkVar2.f19490g;
                                        if (zzp2 > i46) {
                                            throw zzbh.zza("Saiz sample count " + zzp2 + " is greater than fragment sample count" + i46, null);
                                        }
                                        if (zzm == 0) {
                                            boolean[] zArr3 = jkVar2.f19489f;
                                            i5 = 0;
                                            for (int i47 = 0; i47 < zzp2; i47++) {
                                                int zzm2 = zzedVar8.zzm();
                                                i5 += zzm2;
                                                zArr3[i47] = zzm2 > i45;
                                            }
                                            z = false;
                                        } else {
                                            i5 = zzm * zzp2;
                                            z = false;
                                            Arrays.fill(jkVar2.f19489f, 0, zzp2, zzm > i45);
                                        }
                                        Arrays.fill(jkVar2.f19489f, zzp2, jkVar2.f19490g, z);
                                        if (i5 > 0) {
                                            jkVar2.f19487d.zzI(i5);
                                            jkVar2.f19485b = true;
                                            jkVar2.f19486c = true;
                                        }
                                    }
                                    zzet zzb4 = zzesVar2.zzb(1935763823);
                                    if (zzb4 != null) {
                                        zzed zzedVar9 = zzb4.zza;
                                        zzedVar9.zzL(8);
                                        int zzg4 = zzedVar9.zzg();
                                        if ((zzg4 & 1) == 1) {
                                            zzedVar9.zzM(8);
                                        }
                                        int zzp3 = zzedVar9.zzp();
                                        if (zzp3 != 1) {
                                            throw zzbh.zza("Unexpected saio entry count: " + zzp3, null);
                                        }
                                        jkVar2.p += zzain.zza(zzg4) == 0 ? zzedVar9.zzu() : zzedVar9.zzw();
                                    }
                                    byte[] bArr2 = null;
                                    zzet zzb5 = zzesVar2.zzb(1936027235);
                                    if (zzb5 != null) {
                                        am(zzb5.zza, 0, jkVar2);
                                    }
                                    String str = zza2 != null ? zza2.zzb : null;
                                    zzed zzedVar10 = null;
                                    zzed zzedVar11 = null;
                                    for (int i48 = 0; i48 < zzesVar2.zzb.size(); i48++) {
                                        zzet zzetVar4 = (zzet) zzesVar2.zzb.get(i48);
                                        zzed zzedVar12 = zzetVar4.zza;
                                        int i49 = zzetVar4.zzd;
                                        if (i49 == 1935828848) {
                                            zzedVar12.zzL(12);
                                            if (zzedVar12.zzg() == 1936025959) {
                                                zzedVar10 = zzedVar12;
                                            }
                                        } else if (i49 == 1936158820) {
                                            zzedVar12.zzL(12);
                                            if (zzedVar12.zzg() == 1936025959) {
                                                zzedVar11 = zzedVar12;
                                            }
                                        }
                                    }
                                    if (zzedVar10 != null && zzedVar11 != null) {
                                        zzedVar10.zzL(8);
                                        int zza3 = zzain.zza(zzedVar10.zzg());
                                        zzedVar10.zzM(4);
                                        if (zza3 == 1) {
                                            zzedVar10.zzM(4);
                                        }
                                        if (zzedVar10.zzg() != 1) {
                                            throw zzbh.zzc("Entry count in sbgp != 1 (unsupported).");
                                        }
                                        zzedVar11.zzL(8);
                                        int zza4 = zzain.zza(zzedVar11.zzg());
                                        zzedVar11.zzM(4);
                                        if (zza4 == 1) {
                                            if (zzedVar11.zzu() == 0) {
                                                throw zzbh.zzc("Variable length description in sgpd found (unsupported)");
                                            }
                                        } else if (zza4 >= 2) {
                                            zzedVar11.zzM(4);
                                        }
                                        if (zzedVar11.zzu() != 1) {
                                            throw zzbh.zzc("Entry count in sgpd != 1 (unsupported).");
                                        }
                                        zzedVar11.zzM(1);
                                        int zzm3 = zzedVar11.zzm();
                                        int i50 = (zzm3 & MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA) >> 4;
                                        int i51 = zzm3 & 15;
                                        if (zzedVar11.zzm() == 1) {
                                            int zzm4 = zzedVar11.zzm();
                                            byte[] bArr3 = new byte[16];
                                            zzedVar11.zzH(bArr3, 0, 16);
                                            if (zzm4 == 0) {
                                                int zzm5 = zzedVar11.zzm();
                                                bArr2 = new byte[zzm5];
                                                zzedVar11.zzH(bArr2, 0, zzm5);
                                            }
                                            jkVar2.f19485b = true;
                                            jkVar2.k = new zzajf(true, str, zzm4, bArr3, i50, i51, bArr2);
                                        }
                                    }
                                    int size5 = zzesVar2.zzb.size();
                                    for (int i52 = 0; i52 < size5; i52++) {
                                        zzet zzetVar5 = (zzet) zzesVar2.zzb.get(i52);
                                        if (zzetVar5.zzd == 1970628964) {
                                            zzed zzedVar13 = zzetVar5.zza;
                                            zzedVar13.zzL(8);
                                            byte[] bArr4 = this.f4197d;
                                            zzedVar13.zzH(bArr4, 0, 16);
                                            if (Arrays.equals(bArr4, f4194b)) {
                                                am(zzedVar13, 16, jkVar2);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        i = size3;
                        i2 = i18;
                        i3 = i26;
                    }
                    i26 = i3 + 1;
                    size3 = i;
                    i18 = i2;
                }
                zzw al2 = al(zzesVar.zzb);
                if (al2 != null) {
                    int size6 = sparseArray.size();
                    for (int i53 = 0; i53 < size6; i53++) {
                        eta etaVar3 = (eta) sparseArray.valueAt(i53);
                        zzaje zzajeVar5 = etaVar3.f16133c.zza;
                        akq akqVar7 = etaVar3.i.h;
                        int i54 = zzen.zza;
                        zzajf zza5 = zzajeVar5.zza(akqVar7.f10401b);
                        zzw zzb6 = al2.zzb(zza5 != null ? zza5.zzb : null);
                        zzab zzb7 = etaVar3.f16133c.zza.zzf.zzb();
                        zzb7.zzF(zzb6);
                        etaVar3.f16136f.zzl(zzb7.zzaf());
                    }
                }
                if (this.t != -9223372036854775807L) {
                    int size7 = sparseArray.size();
                    for (int i55 = 0; i55 < size7; i55++) {
                        eta etaVar4 = (eta) sparseArray.valueAt(i55);
                        long j10 = this.t;
                        int i56 = etaVar4.f16137g;
                        while (true) {
                            jk jkVar3 = etaVar4.i;
                            if (i56 < jkVar3.f19490g && jkVar3.l[i56] <= j10) {
                                if (jkVar3.n[i56]) {
                                    etaVar4.h = i56;
                                }
                                i56++;
                            }
                        }
                    }
                    this.t = -9223372036854775807L;
                }
            } else if (!arrayDeque.isEmpty()) {
                ((zzes) arrayDeque.peek()).zzc(zzesVar);
            }
        }
    }

    public final void ao() {
        this.w = 0;
        this.v = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:317:0x00b1, code lost:
    
        r3 = r2.i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x00b6, code lost:
    
        if (r36.w != 3) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x00ba, code lost:
    
        if (r2.f16134d != false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x00bc, code lost:
    
        r5 = r2.f16133c.zzd[r2.f16137g];
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x00cb, code lost:
    
        r36.ac = r5;
        r36.q = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x00d4, code lost:
    
        if (r2.f16137g >= r2.h) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x00d6, code lost:
    
        r37.zzk(r5);
        r1 = r2.q();
     */
    /* JADX WARN: Code restructure failed: missing block: B:325:0x00dd, code lost:
    
        if (r1 != null) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x00e0, code lost:
    
        r5 = r3.f19487d;
        r1 = r1.zzd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:327:0x00e4, code lost:
    
        if (r1 == 0) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x00e6, code lost:
    
        r5.zzM(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x00e9, code lost:
    
        r1 = r2.f16137g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x00ed, code lost:
    
        if (r3.f19485b == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x00f3, code lost:
    
        if (r3.f19489f[r1] == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x00f5, code lost:
    
        r5.zzM(r5.zzq() * 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x0102, code lost:
    
        if (r2.n() != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x0104, code lost:
    
        r36.f4196c = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x0307, code lost:
    
        r36.w = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x030b, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:341:0x0110, code lost:
    
        if (r2.f16133c.zza.zzg != 1) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x0112, code lost:
    
        r36.ac = r5 - 8;
        r37.zzk(8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x0129, code lost:
    
        if ("audio/ac4".equals(r2.f16133c.zza.zzf.zzo) == false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:345:0x012b, code lost:
    
        r36.l = r2.p(r36.ac, 7);
        r5 = r36.ac;
        r9 = r36.y;
        com.google.android.gms.internal.ads.zzabu.zzb(r5, r9);
        r2.f16136f.zzq(r9, 7);
        r5 = r36.l + 7;
        r36.l = r5;
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x0150, code lost:
    
        r36.ac += r5;
        r36.w = 4;
        r36.r = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x0147, code lost:
    
        r8 = 0;
        r5 = r2.p(r36.ac, 0);
        r36.l = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x00c5, code lost:
    
        r5 = r3.f19484a[r2.f16137g];
     */
    /* JADX WARN: Code restructure failed: missing block: B:349:0x015a, code lost:
    
        r5 = r2.f16133c;
        r8 = r5.zza;
        r9 = r2.f16136f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x0162, code lost:
    
        if (r2.f16134d != false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x0164, code lost:
    
        r12 = r5.zzf[r2.f16137g];
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x0171, code lost:
    
        r3 = r8.zzj;
     */
    /* JADX WARN: Code restructure failed: missing block: B:353:0x0173, code lost:
    
        if (r3 != 0) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x0175, code lost:
    
        r3 = r36.l;
        r5 = r36.ac;
     */
    /* JADX WARN: Code restructure failed: missing block: B:355:0x0179, code lost:
    
        if (r3 >= r5) goto L426;
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x017b, code lost:
    
        r36.l += r9.zzf(r37, r5 - r3, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x02ae, code lost:
    
        r27 = r2.o();
        r1 = r2.q();
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x02b6, code lost:
    
        if (r1 == null) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x02b8, code lost:
    
        r30 = r1.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x02bf, code lost:
    
        r25 = r12;
        r9.zzs(r25, r27, r36.ac, 0, r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x02d0, code lost:
    
        if (r15.isEmpty() != false) goto L427;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x02d2, code lost:
    
        r1 = (g.vb) r15.removeFirst();
        r36.s -= r1.f20140c;
        r3 = r1.f20138a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:0x02e3, code lost:
    
        if (r1.f20139b == false) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x02e5, code lost:
    
        r3 = r3 + r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x02e7, code lost:
    
        r6 = r3;
        r3 = r36.i;
        r4 = r3.length;
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:369:0x02ec, code lost:
    
        if (r12 >= r4) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x02ee, code lost:
    
        r3[r12].zzs(r6, 1, r1.f20140c, r36.s, null);
        r12 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:375:0x0300, code lost:
    
        if (r2.n() != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:376:0x0302, code lost:
    
        r36.f4196c = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:377:0x02bd, code lost:
    
        r30 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:378:0x0187, code lost:
    
        r5 = r36.u;
        r14 = r5.zzN();
        r14[0] = 0;
        r14[1] = 0;
        r14[r18] = 0;
        r10 = r3 + 1;
        r3 = 4 - r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:380:0x01a0, code lost:
    
        if (r36.l >= r36.ac) goto L431;
     */
    /* JADX WARN: Code restructure failed: missing block: B:381:0x01a2, code lost:
    
        r4 = r36.r;
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x01a6, code lost:
    
        if (r4 != 0) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:383:0x01a8, code lost:
    
        r37.zzi(r14, r3, r10);
        r5.zzL(0);
        r16 = r5.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:384:0x01b3, code lost:
    
        if (r16 <= 0) goto L432;
     */
    /* JADX WARN: Code restructure failed: missing block: B:385:0x01b5, code lost:
    
        r36.r = r16 - 1;
        r6 = r36.n;
        r6.zzL(0);
        r9.zzq(r6, 4);
        r9.zzq(r5, 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:386:0x01cd, code lost:
    
        if (r36.f4199f.length <= 0) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x01cf, code lost:
    
        r6 = r8.zzf.zzo;
        r16 = r14[4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:388:0x01d9, code lost:
    
        if ("video/avc".equals(r6) == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:389:0x01db, code lost:
    
        r18 = r3;
        r22 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:390:0x01e2, code lost:
    
        if ((r16 & 31) == 6) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x01e5, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:392:0x0205, code lost:
    
        r36.ah = r3;
        r36.l += 5;
        r36.ac += r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:393:0x0215, code lost:
    
        if (r36.q != false) goto L434;
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x0223, code lost:
    
        if (j$.util.Objects.equals(r2.f16133c.zza.zzf.zzo, "video/avc") == false) goto L435;
     */
    /* JADX WARN: Code restructure failed: missing block: B:397:0x022d, code lost:
    
        if (com.google.android.gms.internal.ads.zzfp.zzi(r14[4]) == false) goto L436;
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x022f, code lost:
    
        r36.q = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x0232, code lost:
    
        r3 = r18;
        r5 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:405:0x01f0, code lost:
    
        if ("video/hevc".equals(r6) == false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:407:0x01fa, code lost:
    
        if (((r16 & 126) >> 1) != 39) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:408:0x01fd, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:409:0x01e7, code lost:
    
        r18 = r3;
        r22 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:410:0x01ff, code lost:
    
        r18 = r3;
        r22 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:413:0x0241, code lost:
    
        throw com.google.android.gms.internal.ads.zzbh.zza("Invalid NAL length", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:414:0x0242, code lost:
    
        r18 = r3;
        r22 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:415:0x0249, code lost:
    
        if (r36.ah == false) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:416:0x024b, code lost:
    
        r3 = r36.aj;
        r3.zzI(r4);
        r37.zzi(r3.zzN(), 0, r36.r);
        r9.zzq(r3, r36.r);
        r4 = r36.r;
        r5 = com.google.android.gms.internal.ads.zzfp.zzb(r3.zzN(), r3.zze());
        r3.zzL("video/hevc".equals(r8.zzf.zzo) ? 1 : 0);
        r3.zzK(r5);
        r5 = r8.zzf.zzq;
     */
    /* JADX WARN: Code restructure failed: missing block: B:417:0x0280, code lost:
    
        if (r5 == (-1)) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:419:0x0286, code lost:
    
        if (r5 == r7.zza()) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:420:0x0288, code lost:
    
        r7.zzd(r8.zzf.zzq);
     */
    /* JADX WARN: Code restructure failed: missing block: B:421:0x028f, code lost:
    
        r7.zzb(r12, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:422:0x0298, code lost:
    
        if ((r2.o() & 5) == 0) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:423:0x029a, code lost:
    
        r7.zzc();
     */
    /* JADX WARN: Code restructure failed: missing block: B:424:0x02a3, code lost:
    
        r36.l += r4;
        r36.r -= r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:426:0x029e, code lost:
    
        r4 = r9.zzf(r37, r4, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:428:0x016b, code lost:
    
        r12 = r3.l[r2.f16137g];
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzacr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzb(zzacs zzacsVar, zzadn zzadnVar) throws IOException {
        char c2;
        String zzy;
        String zzy2;
        long zzu;
        long j;
        long zzu2;
        long zzu3;
        long zzw;
        long zzw2;
        while (true) {
            int i = this.w;
            zzft zzftVar = this.j;
            ArrayDeque arrayDeque = this.m;
            SparseArray sparseArray = this.k;
            if (i != 0) {
                ArrayDeque arrayDeque2 = this.x;
                if (i != 1) {
                    long j2 = Long.MAX_VALUE;
                    if (i != 2) {
                        eta etaVar = this.f4196c;
                        if (etaVar != null) {
                            c2 = 2;
                            break;
                        }
                        int size = sparseArray.size();
                        eta etaVar2 = null;
                        c2 = 2;
                        for (int i2 = 0; i2 < size; i2++) {
                            eta etaVar3 = (eta) sparseArray.valueAt(i2);
                            boolean z = etaVar3.f16134d;
                            jk jkVar = etaVar3.i;
                            if ((z || etaVar3.f16137g != etaVar3.f16133c.zzb) && (!z || etaVar3.f16131a != jkVar.f19488e)) {
                                long j3 = !z ? etaVar3.f16133c.zzc[etaVar3.f16137g] : jkVar.i[etaVar3.f16131a];
                                if (j3 < j2) {
                                    etaVar2 = etaVar3;
                                    j2 = j3;
                                }
                            }
                        }
                        if (etaVar2 == null) {
                            int zzf = (int) (this.p - zzacsVar.zzf());
                            if (zzf < 0) {
                                throw zzbh.zza("Offset to end of mdat was negative.", null);
                            }
                            zzacsVar.zzk(zzf);
                            ao();
                        } else {
                            int zzf2 = (int) ((!etaVar2.f16134d ? etaVar2.f16133c.zzc[etaVar2.f16137g] : etaVar2.i.i[etaVar2.f16131a]) - zzacsVar.zzf());
                            if (zzf2 < 0) {
                                zzdt.zzf("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                                zzf2 = 0;
                            }
                            zzacsVar.zzk(zzf2);
                            this.f4196c = etaVar2;
                            etaVar = etaVar2;
                        }
                    } else {
                        int size2 = sparseArray.size();
                        eta etaVar4 = null;
                        for (int i3 = 0; i3 < size2; i3++) {
                            jk jkVar2 = ((eta) sparseArray.valueAt(i3)).i;
                            if (jkVar2.f19486c) {
                                long j4 = jkVar2.p;
                                if (j4 < j2) {
                                    etaVar4 = (eta) sparseArray.valueAt(i3);
                                    j2 = j4;
                                }
                            }
                        }
                        if (etaVar4 == null) {
                            this.w = 3;
                        } else {
                            int zzf3 = (int) (j2 - zzacsVar.zzf());
                            if (zzf3 < 0) {
                                throw zzbh.zza("Offset to encryption data was negative.", null);
                            }
                            zzacsVar.zzk(zzf3);
                            jk jkVar3 = etaVar4.i;
                            zzed zzedVar = jkVar3.f19487d;
                            zzacsVar.zzi(zzedVar.zzN(), 0, zzedVar.zze());
                            jkVar3.f19487d.zzL(0);
                            jkVar3.f19486c = false;
                        }
                    }
                } else {
                    int i4 = ((int) this.ak) - this.v;
                    zzed zzedVar2 = this.ad;
                    if (zzedVar2 != null) {
                        zzacsVar.zzi(zzedVar2.zzN(), 8, i4);
                        zzet zzetVar = new zzet(this.f4195ab, zzedVar2);
                        long zzf4 = zzacsVar.zzf();
                        if (arrayDeque.isEmpty()) {
                            int i5 = zzetVar.zzd;
                            if (i5 == 1936286840) {
                                zzed zzedVar3 = zzetVar.zza;
                                zzedVar3.zzL(8);
                                int zza = zzain.zza(zzedVar3.zzg());
                                zzedVar3.zzM(4);
                                long zzu4 = zzedVar3.zzu();
                                if (zza == 0) {
                                    zzw = zzedVar3.zzu();
                                    zzw2 = zzedVar3.zzu();
                                } else {
                                    zzw = zzedVar3.zzw();
                                    zzw2 = zzedVar3.zzw();
                                }
                                long j5 = zzw2 + zzf4;
                                long j6 = zzw;
                                long j7 = j5;
                                long zzu5 = zzen.zzu(j6, C.MICROS_PER_SECOND, zzu4, RoundingMode.FLOOR);
                                zzedVar3.zzM(2);
                                int zzq = zzedVar3.zzq();
                                int[] iArr = new int[zzq];
                                long[] jArr = new long[zzq];
                                long[] jArr2 = new long[zzq];
                                long j8 = zzu5;
                                long[] jArr3 = new long[zzq];
                                int i6 = 0;
                                while (i6 < zzq) {
                                    int zzg = zzedVar3.zzg();
                                    if ((zzg & Integer.MIN_VALUE) != 0) {
                                        throw zzbh.zza("Unhandled indirect reference", null);
                                    }
                                    long zzu6 = zzedVar3.zzu();
                                    iArr[i6] = zzg & he.UNDEFINED_ITEM_ID;
                                    jArr3[i6] = j7;
                                    jArr2[i6] = j8;
                                    long j9 = j6 + zzu6;
                                    int i7 = i6;
                                    long[] jArr4 = jArr;
                                    long[] jArr5 = jArr2;
                                    long zzu7 = zzen.zzu(j9, C.MICROS_PER_SECOND, zzu4, RoundingMode.FLOOR);
                                    jArr4[i7] = zzu7 - jArr5[i7];
                                    zzedVar3.zzM(4);
                                    jArr3 = jArr3;
                                    jArr = jArr4;
                                    j7 += iArr[i7];
                                    i6 = i7 + 1;
                                    j6 = j9;
                                    jArr2 = jArr5;
                                    j8 = zzu7;
                                    zzu5 = zzu5;
                                }
                                Pair create = Pair.create(Long.valueOf(zzu5), new zzace(iArr, jArr3, jArr, jArr2));
                                this.h = ((Long) create.first).longValue();
                                this.ae.zzO((zzadq) create.second);
                                this.ag = true;
                            } else if (i5 == 1701671783) {
                                zzed zzedVar4 = zzetVar.zza;
                                if (this.i.length != 0) {
                                    zzedVar4.zzL(8);
                                    int zza2 = zzain.zza(zzedVar4.zzg());
                                    if (zza2 == 0) {
                                        zzy = zzedVar4.zzy((char) 0);
                                        zzy.getClass();
                                        zzy2 = zzedVar4.zzy((char) 0);
                                        zzy2.getClass();
                                        long zzu8 = zzedVar4.zzu();
                                        long zzu9 = zzedVar4.zzu();
                                        RoundingMode roundingMode = RoundingMode.FLOOR;
                                        zzu = zzen.zzu(zzu9, C.MICROS_PER_SECOND, zzu8, roundingMode);
                                        long j10 = this.h;
                                        j = j10 != -9223372036854775807L ? j10 + zzu : -9223372036854775807L;
                                        zzu2 = zzen.zzu(zzedVar4.zzu(), 1000L, zzu8, roundingMode);
                                        zzu3 = zzedVar4.zzu();
                                    } else if (zza2 != 1) {
                                        dub.g(zza2, "Skipping unsupported emsg version: ", "FragmentedMp4Extractor");
                                    } else {
                                        long zzu10 = zzedVar4.zzu();
                                        long zzw3 = zzedVar4.zzw();
                                        RoundingMode roundingMode2 = RoundingMode.FLOOR;
                                        j = zzen.zzu(zzw3, C.MICROS_PER_SECOND, zzu10, roundingMode2);
                                        long zzu11 = zzen.zzu(zzedVar4.zzu(), 1000L, zzu10, roundingMode2);
                                        long zzu12 = zzedVar4.zzu();
                                        zzy = zzedVar4.zzy((char) 0);
                                        zzy.getClass();
                                        zzy2 = zzedVar4.zzy((char) 0);
                                        zzy2.getClass();
                                        zzu2 = zzu11;
                                        zzu3 = zzu12;
                                        zzu = -9223372036854775807L;
                                    }
                                    String str = zzy;
                                    String str2 = zzy2;
                                    long j11 = j;
                                    byte[] bArr = new byte[zzedVar4.zzb()];
                                    zzedVar4.zzH(bArr, 0, zzedVar4.zzb());
                                    zzed zzedVar5 = new zzed(this.aa.zza(new zzafo(str, str2, zzu2, zzu3, bArr)));
                                    int zzb = zzedVar5.zzb();
                                    for (zzadx zzadxVar : this.i) {
                                        zzedVar5.zzL(0);
                                        zzadxVar.zzq(zzedVar5, zzb);
                                    }
                                    if (j11 == -9223372036854775807L) {
                                        arrayDeque2.addLast(new vb(zzb, true, zzu));
                                        this.s += zzb;
                                    } else if (arrayDeque2.isEmpty()) {
                                        for (zzadx zzadxVar2 : this.i) {
                                            zzadxVar2.zzs(j11, 1, zzb, 0, null);
                                        }
                                    } else {
                                        arrayDeque2.addLast(new vb(zzb, false, j11));
                                        this.s += zzb;
                                    }
                                }
                            }
                        } else {
                            ((zzes) arrayDeque.peek()).zzd(zzetVar);
                        }
                    } else {
                        zzacsVar.zzk(i4);
                    }
                    an(zzacsVar.zzf());
                }
            } else {
                int i8 = this.v;
                zzed zzedVar6 = this.f4198e;
                if (i8 == 0) {
                    if (!zzacsVar.zzn(zzedVar6.zzN(), 0, 8, true)) {
                        zzftVar.zzc();
                        return -1;
                    }
                    this.v = 8;
                    zzedVar6.zzL(0);
                    this.ak = zzedVar6.zzu();
                    this.f4195ab = zzedVar6.zzg();
                }
                long j12 = this.ak;
                if (j12 == 1) {
                    zzacsVar.zzi(zzedVar6.zzN(), 8, 8);
                    this.v += 8;
                    this.ak = zzedVar6.zzw();
                } else if (j12 == 0) {
                    long zzd = zzacsVar.zzd();
                    if (zzd == -1) {
                        zzd = !arrayDeque.isEmpty() ? ((zzes) arrayDeque.peek()).zza : -1L;
                    }
                    if (zzd != -1) {
                        this.ak = (zzd - zzacsVar.zzf()) + this.v;
                    }
                }
                long j13 = this.ak;
                long j14 = this.v;
                if (j13 < j14) {
                    throw zzbh.zzc("Atom size less than header length (unsupported).");
                }
                long zzf5 = zzacsVar.zzf() - j14;
                int i9 = this.f4195ab;
                if ((i9 == 1836019558 || i9 == 1835295092) && !this.ag) {
                    this.ae.zzO(new zzadp(this.ai, zzf5));
                    this.ag = true;
                }
                if (this.f4195ab == 1836019558) {
                    int size3 = sparseArray.size();
                    for (int i10 = 0; i10 < size3; i10++) {
                        jk jkVar4 = ((eta) sparseArray.valueAt(i10)).i;
                        jkVar4.p = zzf5;
                        jkVar4.m = zzf5;
                    }
                }
                int i11 = this.f4195ab;
                if (i11 == 1835295092) {
                    this.f4196c = null;
                    this.p = zzf5 + this.ak;
                    this.w = 2;
                } else if (i11 == 1836019574 || i11 == 1953653099 || i11 == 1835297121 || i11 == 1835626086 || i11 == 1937007212 || i11 == 1836019558 || i11 == 1953653094 || i11 == 1836475768 || i11 == 1701082227) {
                    long zzf6 = (zzacsVar.zzf() + this.ak) - 8;
                    arrayDeque.push(new zzes(i11, zzf6));
                    if (this.ak == this.v) {
                        an(zzf6);
                    } else {
                        ao();
                    }
                } else if (i11 == 1751411826 || i11 == 1835296868 || i11 == 1836476516 || i11 == 1936286840 || i11 == 1937011556 || i11 == 1937011827 || i11 == 1668576371 || i11 == 1937011555 || i11 == 1937011578 || i11 == 1937013298 || i11 == 1937007471 || i11 == 1668232756 || i11 == 1937011571 || i11 == 1952867444 || i11 == 1952868452 || i11 == 1953196132 || i11 == 1953654136 || i11 == 1953658222 || i11 == 1886614376 || i11 == 1935763834 || i11 == 1935763823 || i11 == 1936027235 || i11 == 1970628964 || i11 == 1935828848 || i11 == 1936158820 || i11 == 1701606260 || i11 == 1835362404 || i11 == 1701671783) {
                    if (this.v != 8) {
                        throw zzbh.zzc("Leaf atom defines extended atom size (unsupported).");
                    }
                    if (this.ak > 2147483647L) {
                        throw zzbh.zzc("Leaf atom with length > 2147483647 (unsupported).");
                    }
                    zzed zzedVar7 = new zzed((int) this.ak);
                    System.arraycopy(zzedVar6.zzN(), 0, zzedVar7.zzN(), 0, 8);
                    this.ad = zzedVar7;
                    this.w = 1;
                } else {
                    if (this.ak > 2147483647L) {
                        throw zzbh.zzc("Skipping atom with length > 2147483647 (unsupported).");
                    }
                    this.ad = null;
                    this.w = 1;
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
        return this.f4200g;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zze(zzacu zzacuVar) {
        int i;
        int i2 = this.z;
        if ((i2 & 32) == 0) {
            zzacuVar = new zzakj(zzacuVar, this.o);
        }
        this.ae = zzacuVar;
        ao();
        zzadx[] zzadxVarArr = new zzadx[2];
        this.i = zzadxVarArr;
        int i3 = 100;
        int i4 = 0;
        if ((i2 & 4) != 0) {
            zzadxVarArr[0] = this.ae.zzw(100, 5);
            i = 1;
            i3 = 101;
        } else {
            i = 0;
        }
        zzadx[] zzadxVarArr2 = (zzadx[]) zzen.zzO(this.i, i);
        this.i = zzadxVarArr2;
        for (zzadx zzadxVar : zzadxVarArr2) {
            zzadxVar.zzl(f4193a);
        }
        List list = this.af;
        this.f4199f = new zzadx[list.size()];
        while (i4 < this.f4199f.length) {
            zzadx zzw = this.ae.zzw(i3, 3);
            zzw.zzl((zzad) list.get(i4));
            this.f4199f[i4] = zzw;
            i4++;
            i3++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zzf(long j, long j2) {
        SparseArray sparseArray = this.k;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            ((eta) sparseArray.valueAt(i)).m();
        }
        this.x.clear();
        this.s = 0;
        this.j.zzc();
        this.t = j2;
        this.m.clear();
        ao();
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final boolean zzi(zzacs zzacsVar) throws IOException {
        zzadu zza = zzajd.zza(zzacsVar);
        this.f4200g = zza != null ? zzfzo.zzo(zza) : zzfzo.zzn();
        return zza == null;
    }
}
