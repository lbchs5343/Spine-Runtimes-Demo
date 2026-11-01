package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import g.bsk;
import g.clx;
import g.dby;
import g.dsg;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzanw implements zzacr {

    /* renamed from: a, reason: collision with root package name */
    public final SparseBooleanArray f4406a;

    /* renamed from: b, reason: collision with root package name */
    public dby f4407b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4408c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f4409d;

    /* renamed from: e, reason: collision with root package name */
    public final SparseIntArray f4410e;

    /* renamed from: f, reason: collision with root package name */
    public zzacu f4411f;

    /* renamed from: g, reason: collision with root package name */
    public final zzanz f4412g;
    public final int h;
    public final zzakg i;
    public int j;
    public boolean k;
    public final SparseBooleanArray l;
    public final List m;
    public final bsk n;
    public final zzed o;
    public final SparseArray p;

    @Deprecated
    public zzanw() {
        this(1, 1, zzakg.zza, new zzek(0L), new zzamj(0), 112800);
    }

    public zzanw(int i, int i2, zzakg zzakgVar, zzek zzekVar, zzanz zzanzVar, int i3) {
        this.f4412g = zzanzVar;
        this.h = i2;
        this.i = zzakgVar;
        this.m = Collections.singletonList(zzekVar);
        this.o = new zzed(new byte[AVMDLDataLoader.KeyIsIgnorePlayInfo], 0);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.f4406a = sparseBooleanArray;
        this.l = new SparseBooleanArray();
        SparseArray sparseArray = new SparseArray();
        this.p = sparseArray;
        this.f4410e = new SparseIntArray();
        this.n = new bsk(1);
        this.f4411f = zzacu.zza;
        this.j = -1;
        sparseBooleanArray.clear();
        sparseArray.clear();
        SparseArray zza = zzanzVar.zza();
        int size = zza.size();
        for (int i4 = 0; i4 < size; i4++) {
            this.p.put(zza.keyAt(i4), (zzaob) zza.valueAt(i4));
        }
        this.p.put(0, new zzano(new clx(this)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:164:0x0290, code lost:
    
        if (r4 == false) goto L150;
     */
    @Override // com.google.android.gms.internal.ads.zzacr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzb(zzacs zzacsVar, zzadn zzadnVar) throws IOException {
        zzacs zzacsVar2;
        long j;
        int i;
        long j2;
        long zzd = zzacsVar.zzd();
        if (this.k) {
            long j3 = -9223372036854775807L;
            bsk bskVar = this.n;
            if (zzd != -1 && !bskVar.f12125g) {
                int i2 = this.j;
                zzed zzedVar = bskVar.f12124f;
                if (i2 <= 0) {
                    bskVar.k(zzacsVar);
                    return 0;
                }
                if (bskVar.f12121c) {
                    if (bskVar.h == -9223372036854775807L) {
                        bskVar.k(zzacsVar);
                        return 0;
                    }
                    if (bskVar.f12120b) {
                        long j4 = bskVar.f12123e;
                        if (j4 == -9223372036854775807L) {
                            bskVar.k(zzacsVar);
                            return 0;
                        }
                        zzek zzekVar = bskVar.f12122d;
                        bskVar.f12119a = zzekVar.zzc(bskVar.h) - zzekVar.zzb(j4);
                        bskVar.k(zzacsVar);
                        return 0;
                    }
                    int min = (int) Math.min(112800L, zzacsVar.zzd());
                    if (zzacsVar.zzf() != 0) {
                        zzadnVar.zza = 0L;
                        return 1;
                    }
                    zzedVar.zzI(min);
                    zzacsVar.zzj();
                    zzacsVar.zzh(zzedVar.zzN(), 0, min);
                    int zzd2 = zzedVar.zzd();
                    int zze = zzedVar.zze();
                    while (true) {
                        if (zzd2 >= zze) {
                            j2 = -9223372036854775807L;
                            break;
                        }
                        if (zzedVar.zzN()[zzd2] == 71) {
                            j2 = zzaoc.zzb(zzedVar, zzd2, i2);
                            if (j2 != -9223372036854775807L) {
                                break;
                            }
                        }
                        zzd2++;
                    }
                    bskVar.f12123e = j2;
                    bskVar.f12120b = true;
                    return 0;
                }
                long zzd3 = zzacsVar.zzd();
                int min2 = (int) Math.min(112800L, zzd3);
                long j5 = zzd3 - min2;
                if (zzacsVar.zzf() != j5) {
                    zzadnVar.zza = j5;
                    return 1;
                }
                zzedVar.zzI(min2);
                zzacsVar.zzj();
                zzacsVar.zzh(zzedVar.zzN(), 0, min2);
                int zzd4 = zzedVar.zzd();
                int zze2 = zzedVar.zze();
                int i3 = zze2 - 188;
                while (true) {
                    if (i3 < zzd4) {
                        break;
                    }
                    byte[] zzN = zzedVar.zzN();
                    int i4 = -4;
                    int i5 = 0;
                    while (true) {
                        if (i4 > 4) {
                            break;
                        }
                        int i6 = (i4 * MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION) + i3;
                        if (i6 < zzd4 || i6 >= zze2 || zzN[i6] != 71) {
                            i5 = 0;
                        } else {
                            i5++;
                            if (i5 == 5) {
                                long zzb = zzaoc.zzb(zzedVar, i3, i2);
                                if (zzb != -9223372036854775807L) {
                                    j3 = zzb;
                                    break;
                                }
                            }
                        }
                        i4++;
                    }
                    i3--;
                }
                bskVar.h = j3;
                bskVar.f12121c = true;
                return 0;
            }
            if (this.f4409d) {
                j = 0;
                i = 1;
            } else {
                this.f4409d = true;
                long j6 = bskVar.f12119a;
                if (j6 != -9223372036854775807L) {
                    i = 1;
                    j = 0;
                    dby dbyVar = new dby(new zzabx(), new dsg(this.j, bskVar.f12122d), j6, j6 + 1, 0L, zzd, 188L, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_PARAMS);
                    this.f4407b = dbyVar;
                    this.f4411f.zzO(dbyVar.zzb());
                } else {
                    j = 0;
                    i = 1;
                    this.f4411f.zzO(new zzadp(j6, 0L));
                }
            }
            if (this.f4408c) {
                this.f4408c = false;
                zzf(j, j);
                if (zzacsVar.zzf() != j) {
                    zzadnVar.zza = j;
                    return i;
                }
            }
            dby dbyVar2 = this.f4407b;
            if (dbyVar2 != null && dbyVar2.zze()) {
                return dbyVar2.zza(zzacsVar, zzadnVar);
            }
            zzacsVar2 = zzacsVar;
        } else {
            zzacsVar2 = zzacsVar;
        }
        zzed zzedVar2 = this.o;
        byte[] zzN2 = zzedVar2.zzN();
        if (9400 - zzedVar2.zzd() < 188) {
            int zzb2 = zzedVar2.zzb();
            if (zzb2 > 0) {
                System.arraycopy(zzN2, zzedVar2.zzd(), zzN2, 0, zzb2);
            }
            zzedVar2.zzJ(zzN2, zzb2);
        }
        while (true) {
            int zzb3 = zzedVar2.zzb();
            SparseArray sparseArray = this.p;
            if (zzb3 >= 188) {
                int zza = zzaoc.zza(zzedVar2.zzN(), zzedVar2.zzd(), zzedVar2.zze());
                zzedVar2.zzL(zza);
                int i7 = zza + MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION;
                int zze3 = zzedVar2.zze();
                if (i7 > zze3) {
                    return 0;
                }
                int zzg = zzedVar2.zzg();
                if ((8388608 & zzg) != 0) {
                    zzedVar2.zzL(i7);
                    return 0;
                }
                int i8 = (4194304 & zzg) != 0 ? 1 : 0;
                int i9 = zzg & 32;
                int i10 = (zzg >> 8) & 8191;
                zzaob zzaobVar = (zzg & 16) != 0 ? (zzaob) sparseArray.get(i10) : null;
                if (zzaobVar == null) {
                    zzedVar2.zzL(i7);
                    return 0;
                }
                int i11 = zzg & 15;
                SparseIntArray sparseIntArray = this.f4410e;
                int i12 = sparseIntArray.get(i10, i11 - 1);
                sparseIntArray.put(i10, i11);
                if (i12 == i11) {
                    zzedVar2.zzL(i7);
                    return 0;
                }
                if (i11 != ((i12 + 1) & 15)) {
                    zzaobVar.zzc();
                }
                if (i9 != 0) {
                    int zzm = zzedVar2.zzm();
                    i8 |= (zzedVar2.zzm() & 64) != 0 ? 2 : 0;
                    zzedVar2.zzM(zzm - 1);
                }
                boolean z = this.k;
                if (z || !this.l.get(i10, false)) {
                    zzedVar2.zzK(i7);
                    zzaobVar.zza(zzedVar2, i8);
                    zzedVar2.zzK(zze3);
                }
                if (this.k && zzd != -1) {
                    this.f4408c = true;
                }
                zzedVar2.zzL(i7);
                return 0;
            }
            int zze4 = zzedVar2.zze();
            int zza2 = zzacsVar2.zza(zzN2, zze4, 9400 - zze4);
            if (zza2 == -1) {
                for (int i13 = 0; i13 < sparseArray.size(); i13++) {
                    zzaob zzaobVar2 = (zzaob) sparseArray.valueAt(i13);
                    if (zzaobVar2 instanceof zzang) {
                        zzang zzangVar = (zzang) zzaobVar2;
                        if (zzangVar.zzd(false)) {
                            zzangVar.zza(new zzed(), 1);
                        }
                    }
                }
                return -1;
            }
            zzedVar2.zzK(zze4 + zza2);
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
        if (this.h == 0) {
            zzacuVar = new zzakj(zzacuVar, this.i);
        }
        this.f4411f = zzacuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zzf(long j, long j2) {
        dby dbyVar;
        List list = this.m;
        int size = list.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            zzek zzekVar = (zzek) list.get(i2);
            if (zzekVar.zzf() != -9223372036854775807L) {
                long zzd = zzekVar.zzd();
                if (zzd != -9223372036854775807L) {
                    if (zzd != 0) {
                        if (zzd == j2) {
                        }
                    }
                }
            }
            zzekVar.zzi(j2);
        }
        if (j2 != 0 && (dbyVar = this.f4407b) != null) {
            dbyVar.zzd(j2);
        }
        this.o.zzI(0);
        this.f4410e.clear();
        while (true) {
            SparseArray sparseArray = this.p;
            if (i >= sparseArray.size()) {
                return;
            }
            ((zzaob) sparseArray.valueAt(i)).zzc();
            i++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0020, code lost:
    
        r1 = r1 + 1;
     */
    @Override // com.google.android.gms.internal.ads.zzacr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzi(zzacs zzacsVar) throws IOException {
        byte[] zzN = this.o.zzN();
        zzacg zzacgVar = (zzacg) zzacsVar;
        zzacgVar.zzm(zzN, 0, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_PARAMS, false);
        int i = 0;
        while (i < 188) {
            for (int i2 = 0; i2 < 5; i2++) {
                if (zzN[(i2 * MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION) + i] != 71) {
                    break;
                }
            }
            zzacgVar.zzo(i, false);
            return true;
        }
        return false;
    }
}
