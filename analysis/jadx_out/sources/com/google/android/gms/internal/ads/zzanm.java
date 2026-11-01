package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.ss.android.download.api.constant.BaseConstants;
import g.bak;
import g.bsk;
import g.dby;
import g.fdy;
import java.io.IOException;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzanm implements zzacr {

    /* renamed from: a, reason: collision with root package name */
    public long f4390a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f4391b;

    /* renamed from: d, reason: collision with root package name */
    public boolean f4393d;

    /* renamed from: f, reason: collision with root package name */
    public boolean f4395f;

    /* renamed from: g, reason: collision with root package name */
    public dby f4396g;
    public zzacu i;
    public boolean k;

    /* renamed from: e, reason: collision with root package name */
    public final zzek f4394e = new zzek(0);
    public final zzed j = new zzed(4096);
    public final SparseArray h = new SparseArray();

    /* renamed from: c, reason: collision with root package name */
    public final bsk f4392c = new bsk(0);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v9 */
    @Override // com.google.android.gms.internal.ads.zzacr
    public final int zzb(zzacs zzacsVar, zzadn zzadnVar) throws IOException {
        ?? r3;
        long j;
        zzamm zzamoVar;
        long j2;
        zzdb.zzb(this.i);
        long zzd = zzacsVar.zzd();
        long j3 = -9223372036854775807L;
        bsk bskVar = this.f4392c;
        if (zzd != -1) {
            boolean z = bskVar.f12125g;
            zzed zzedVar = bskVar.f12124f;
            if (!z) {
                if (!bskVar.f12121c) {
                    long zzd2 = zzacsVar.zzd();
                    int min = (int) Math.min(20000L, zzd2);
                    long j4 = zzd2 - min;
                    if (zzacsVar.zzf() != j4) {
                        zzadnVar.zza = j4;
                        return 1;
                    }
                    zzedVar.zzI(min);
                    zzacsVar.zzj();
                    zzacsVar.zzh(zzedVar.zzN(), 0, min);
                    int zzd3 = zzedVar.zzd();
                    int zze = zzedVar.zze() - 4;
                    while (true) {
                        if (zze < zzd3) {
                            break;
                        }
                        if (bsk.j(zze, zzedVar.zzN()) == 442) {
                            zzedVar.zzL(zze + 4);
                            long i = bsk.i(zzedVar);
                            if (i != -9223372036854775807L) {
                                j3 = i;
                                break;
                            }
                        }
                        zze--;
                    }
                    bskVar.h = j3;
                    bskVar.f12121c = true;
                    return 0;
                }
                if (bskVar.h == -9223372036854775807L) {
                    byte[] bArr = zzen.zzf;
                    int length = bArr.length;
                    zzedVar.zzJ(bArr, 0);
                    bskVar.f12125g = true;
                    zzacsVar.zzj();
                    return 0;
                }
                if (bskVar.f12120b) {
                    long j5 = bskVar.f12123e;
                    if (j5 == -9223372036854775807L) {
                        byte[] bArr2 = zzen.zzf;
                        int length2 = bArr2.length;
                        zzedVar.zzJ(bArr2, 0);
                        bskVar.f12125g = true;
                        zzacsVar.zzj();
                        return 0;
                    }
                    zzek zzekVar = bskVar.f12122d;
                    bskVar.f12119a = zzekVar.zzc(bskVar.h) - zzekVar.zzb(j5);
                    byte[] bArr3 = zzen.zzf;
                    int length3 = bArr3.length;
                    zzedVar.zzJ(bArr3, 0);
                    bskVar.f12125g = true;
                    zzacsVar.zzj();
                    return 0;
                }
                int min2 = (int) Math.min(20000L, zzacsVar.zzd());
                if (zzacsVar.zzf() != 0) {
                    zzadnVar.zza = 0L;
                    return 1;
                }
                zzedVar.zzI(min2);
                zzacsVar.zzj();
                zzacsVar.zzh(zzedVar.zzN(), 0, min2);
                int zzd4 = zzedVar.zzd();
                int zze2 = zzedVar.zze();
                while (true) {
                    if (zzd4 >= zze2 - 3) {
                        j2 = -9223372036854775807L;
                        break;
                    }
                    if (bsk.j(zzd4, zzedVar.zzN()) == 442) {
                        zzedVar.zzL(zzd4 + 4);
                        j2 = bsk.i(zzedVar);
                        if (j2 != -9223372036854775807L) {
                            break;
                        }
                    }
                    zzd4++;
                }
                bskVar.f12123e = j2;
                bskVar.f12120b = true;
                return 0;
            }
        }
        if (this.f4391b) {
            r3 = 1;
        } else {
            this.f4391b = true;
            long j6 = bskVar.f12119a;
            if (j6 != -9223372036854775807L) {
                r3 = 1;
                dby dbyVar = new dby(new zzabx(), new fdy(bskVar.f12122d), j6, j6 + 1, 0L, zzd, 188L, 1000);
                this.f4396g = dbyVar;
                this.i.zzO(dbyVar.zzb());
            } else {
                r3 = 1;
                this.i.zzO(new zzadp(j6, 0L));
            }
        }
        dby dbyVar2 = this.f4396g;
        if (dbyVar2 != null && dbyVar2.zze()) {
            return dbyVar2.zza(zzacsVar, zzadnVar);
        }
        zzacsVar.zzj();
        long zze3 = zzd != -1 ? zzd - zzacsVar.zze() : -1L;
        if (zze3 != -1 && zze3 < 4) {
            return -1;
        }
        zzed zzedVar2 = this.j;
        if (!zzacsVar.zzm(zzedVar2.zzN(), 0, 4, r3)) {
            return -1;
        }
        zzedVar2.zzL(0);
        int zzg = zzedVar2.zzg();
        if (zzg == 441) {
            return -1;
        }
        if (zzg == 442) {
            zzacsVar.zzh(zzedVar2.zzN(), 0, 10);
            zzedVar2.zzL(9);
            zzacsVar.zzk((zzedVar2.zzm() & 7) + 14);
            return 0;
        }
        if (zzg == 443) {
            zzacsVar.zzh(zzedVar2.zzN(), 0, 2);
            zzedVar2.zzL(0);
            zzacsVar.zzk(zzedVar2.zzq() + 6);
            return 0;
        }
        if ((zzg >> 8) != r3) {
            zzacsVar.zzk(r3);
            return 0;
        }
        int i2 = zzg & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        SparseArray sparseArray = this.h;
        bak bakVar = (bak) sparseArray.get(i2);
        if (!this.f4393d) {
            if (bakVar == null) {
                zzamm zzammVar = null;
                if (i2 == 189) {
                    zzame zzameVar = new zzame(null, 0);
                    this.f4395f = r3;
                    this.f4390a = zzacsVar.zzf();
                    zzammVar = zzameVar;
                } else {
                    if ((zzg & 224) == 192) {
                        zzamoVar = new zzamy(null, 0);
                        this.f4395f = r3;
                        this.f4390a = zzacsVar.zzf();
                    } else if ((zzg & MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA) == 224) {
                        zzamoVar = new zzamo(null);
                        this.k = r3;
                        this.f4390a = zzacsVar.zzf();
                    }
                    zzammVar = zzamoVar;
                }
                if (zzammVar != null) {
                    zzammVar.zzb(this.i, new zzaoa(Integer.MIN_VALUE, i2, 256));
                    bakVar = new bak(zzammVar, this.f4394e);
                    sparseArray.put(i2, bakVar);
                }
            }
            boolean z2 = this.f4395f;
            long j7 = BaseConstants.MB_VALUE;
            if (z2 && this.k) {
                j7 = 8192 + this.f4390a;
            }
            if (zzacsVar.zzf() > j7) {
                this.f4393d = r3;
                this.i.zzD();
            }
        }
        zzacsVar.zzh(zzedVar2.zzN(), 0, 2);
        zzedVar2.zzL(0);
        int zzq = zzedVar2.zzq() + 6;
        if (bakVar == null) {
            zzacsVar.zzk(zzq);
            return 0;
        }
        zzedVar2.zzI(zzq);
        zzacsVar.zzi(zzedVar2.zzN(), 0, zzq);
        zzedVar2.zzL(6);
        zzek zzekVar2 = bakVar.f11174e;
        zzamm zzammVar2 = bakVar.f11172c;
        zzec zzecVar = bakVar.f11175f;
        zzedVar2.zzH(zzecVar.zza, 0, 3);
        zzecVar.zzl(0);
        zzecVar.zzn(8);
        bakVar.f11170a = zzecVar.zzp();
        bakVar.f11171b = zzecVar.zzp();
        zzecVar.zzn(6);
        zzedVar2.zzH(zzecVar.zza, 0, zzecVar.zzd(8));
        zzecVar.zzl(0);
        if (bakVar.f11170a) {
            zzecVar.zzn(4);
            long zzd5 = zzecVar.zzd(3);
            zzecVar.zzn(r3);
            int zzd6 = zzecVar.zzd(15) << 15;
            zzecVar.zzn(r3);
            long zzd7 = zzecVar.zzd(15);
            zzecVar.zzn(r3);
            if (!bakVar.f11173d && bakVar.f11171b) {
                zzecVar.zzn(4);
                zzecVar.zzn(r3);
                int zzd8 = zzecVar.zzd(15) << 15;
                zzecVar.zzn(r3);
                long zzd9 = zzecVar.zzd(15);
                zzecVar.zzn(r3);
                zzekVar2.zzb((zzecVar.zzd(3) << 30) | zzd8 | zzd9);
                bakVar.f11173d = r3;
            }
            j = zzekVar2.zzb((zzd5 << 30) | zzd6 | zzd7);
        } else {
            j = 0;
        }
        zzammVar2.zzd(j, 4);
        zzammVar2.zza(zzedVar2);
        zzammVar2.zzc(false);
        zzedVar2.zzK(zzedVar2.zzc());
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
        this.i = zzacuVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001f, code lost:
    
        if (r0 != r7) goto L10;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0035 A[LOOP:0: B:13:0x002d->B:15:0x0035, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0045 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzacr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzf(long j, long j2) {
        dby dbyVar;
        int i;
        SparseArray sparseArray;
        zzek zzekVar = this.f4394e;
        if (zzekVar.zzf() != -9223372036854775807L) {
            long zzd = zzekVar.zzd();
            if (zzd != -9223372036854775807L) {
                if (zzd != 0) {
                }
            }
            dbyVar = this.f4396g;
            if (dbyVar != null) {
                dbyVar.zzd(j2);
            }
            i = 0;
            while (true) {
                sparseArray = this.h;
                if (i < sparseArray.size()) {
                    return;
                }
                bak bakVar = (bak) sparseArray.valueAt(i);
                bakVar.f11173d = false;
                bakVar.f11172c.zze();
                i++;
            }
        }
        zzekVar.zzi(j2);
        dbyVar = this.f4396g;
        if (dbyVar != null) {
        }
        i = 0;
        while (true) {
            sparseArray = this.h;
            if (i < sparseArray.size()) {
            }
            bak bakVar2 = (bak) sparseArray.valueAt(i);
            bakVar2.f11173d = false;
            bakVar2.f11172c.zze();
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final boolean zzi(zzacs zzacsVar) throws IOException {
        byte[] bArr = new byte[14];
        zzacg zzacgVar = (zzacg) zzacsVar;
        zzacgVar.zzm(bArr, 0, 14, false);
        if ((((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) != 442 || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        zzacgVar.zzl(bArr[13] & 7, false);
        zzacgVar.zzm(bArr, 0, 3, false);
        return ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255)) == 1;
    }
}
