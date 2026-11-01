package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import g.kj;

/* loaded from: classes3.dex */
public final class zzamz implements zzamm {

    /* renamed from: b, reason: collision with root package name */
    public int f4371b;

    /* renamed from: c, reason: collision with root package name */
    public int f4372c;

    /* renamed from: d, reason: collision with root package name */
    public int f4373d;

    /* renamed from: f, reason: collision with root package name */
    public int f4375f;

    /* renamed from: g, reason: collision with root package name */
    public String f4376g;
    public boolean i;
    public zzadx j;
    public int k;
    public boolean n;

    /* renamed from: e, reason: collision with root package name */
    public int f4374e = 0;
    public final zzed h = new zzed(new byte[15], 2);
    public final zzec o = new zzec();
    public final zzed s = new zzed();
    public final zzana l = new zzana();
    public int q = -2147483647;
    public int u = -1;
    public long r = -1;
    public boolean p = true;
    public boolean m = true;
    public double t = -9.223372036854776E18d;

    /* renamed from: a, reason: collision with root package name */
    public double f4370a = -9.223372036854776E18d;

    public static final void v(zzed zzedVar, zzed zzedVar2, boolean z) {
        int zzd = zzedVar.zzd();
        int min = Math.min(zzedVar.zzb(), zzedVar2.zzb());
        zzedVar.zzH(zzedVar2.zzN(), zzedVar2.zzd(), min);
        zzedVar2.zzM(min);
        if (z) {
            zzedVar.zzL(zzd);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:211:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0405  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0479 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzamm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(zzed zzedVar) throws zzbh {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        char c2;
        byte[] bArr;
        long j;
        long j2;
        int i6;
        char c3;
        long j3;
        zzdb.zzb(this.j);
        while (zzedVar.zzb() > 0) {
            int i7 = this.f4374e;
            int i8 = 8;
            if (i7 != 0) {
                zzed zzedVar2 = this.s;
                zzana zzanaVar = this.l;
                if (i7 != 1) {
                    int i9 = zzanaVar.zza;
                    if (i9 == 1 || i9 == 17) {
                        v(zzedVar, zzedVar2, true);
                    }
                    int min = Math.min(zzedVar.zzb(), zzanaVar.zzc - this.f4373d);
                    this.j.zzq(zzedVar, min);
                    int i10 = this.f4373d + min;
                    this.f4373d = i10;
                    if (i10 != zzanaVar.zzc) {
                        continue;
                    } else {
                        int i11 = zzanaVar.zza;
                        if (i11 == 1) {
                            byte[] zzN = zzedVar2.zzN();
                            zzec zzecVar = new zzec(zzN, zzN.length);
                            int zzd = zzecVar.zzd(8);
                            int zzd2 = zzecVar.zzd(5);
                            if (zzd2 != 31) {
                                switch (zzd2) {
                                    case 0:
                                        i4 = 96000;
                                        break;
                                    case 1:
                                        i4 = 88200;
                                        break;
                                    case 2:
                                        i4 = 64000;
                                        break;
                                    case 3:
                                        i4 = 48000;
                                        break;
                                    case 4:
                                        i4 = 44100;
                                        break;
                                    case 5:
                                        i4 = 32000;
                                        break;
                                    case 6:
                                        i4 = 24000;
                                        break;
                                    case 7:
                                        i4 = 22050;
                                        break;
                                    case 8:
                                        i4 = 16000;
                                        break;
                                    case 9:
                                        i4 = 12000;
                                        break;
                                    case 10:
                                        i4 = 11025;
                                        break;
                                    case 11:
                                        i4 = AVMDLDataLoader.KeyIsLiveSetLoaderType;
                                        break;
                                    case 12:
                                        i4 = 7350;
                                        break;
                                    case 13:
                                    case 14:
                                    default:
                                        throw zzbh.zzc("Unsupported sampling rate index " + zzd2);
                                    case 15:
                                        i4 = 57600;
                                        break;
                                    case 16:
                                        i4 = 51200;
                                        break;
                                    case 17:
                                        i4 = 40000;
                                        break;
                                    case 18:
                                        i4 = 38400;
                                        break;
                                    case 19:
                                        i4 = 34150;
                                        break;
                                    case 20:
                                        i4 = 28800;
                                        break;
                                    case 21:
                                        i4 = 25600;
                                        break;
                                    case 22:
                                        i4 = AdBaseConstants.DEFAULT_INSTALL_FINISH_TRY_INTERVAL_MS;
                                        break;
                                    case 23:
                                        i4 = 19200;
                                        break;
                                    case 24:
                                        i4 = 17075;
                                        break;
                                    case 25:
                                        i4 = 14400;
                                        break;
                                    case 26:
                                        i4 = 12800;
                                        break;
                                    case 27:
                                        i4 = 9600;
                                        break;
                                }
                            } else {
                                i4 = zzecVar.zzd(24);
                            }
                            int zzd3 = zzecVar.zzd(3);
                            int i12 = 4;
                            if (zzd3 == 0) {
                                i5 = 768;
                            } else if (zzd3 == 1) {
                                i5 = 1024;
                            } else if (zzd3 == 2 || zzd3 == 3) {
                                i5 = 2048;
                            } else {
                                if (zzd3 != 4) {
                                    throw zzbh.zzc("Unsupported coreSbrFrameLengthIndex " + zzd3);
                                }
                                i5 = 4096;
                            }
                            if (zzd3 == 0 || zzd3 == 1) {
                                c2 = 0;
                            } else if (zzd3 == 2) {
                                c2 = 2;
                            } else if (zzd3 == 3) {
                                c2 = 3;
                            } else {
                                if (zzd3 != 4) {
                                    throw zzbh.zzc("Unsupported coreSbrFrameLengthIndex " + zzd3);
                                }
                                c2 = 1;
                            }
                            zzecVar.zzn(2);
                            kj.ab(zzecVar);
                            int zzd4 = zzecVar.zzd(5);
                            int i13 = 0;
                            int i14 = 0;
                            while (true) {
                                int i15 = 16;
                                if (i13 < zzd4 + 1) {
                                    int zzd5 = zzecVar.zzd(3);
                                    i14 = kj.o(zzecVar, 5, 8, 16) + 1 + i14;
                                    if ((zzd5 == 0 || zzd5 == 2) && zzecVar.zzp()) {
                                        kj.ab(zzecVar);
                                    }
                                    i13++;
                                } else {
                                    int o = kj.o(zzecVar, 4, 8, 16) + 1;
                                    zzecVar.zzm();
                                    int i16 = 0;
                                    while (true) {
                                        double d2 = 2.0d;
                                        if (i16 < o) {
                                            int zzd6 = zzecVar.zzd(2);
                                            if (zzd6 == 0) {
                                                zzecVar.zzn(3);
                                                if (zzecVar.zzp()) {
                                                    zzecVar.zzn(13);
                                                }
                                                if (c2 > 0) {
                                                    kj.q(zzecVar);
                                                }
                                            } else if (zzd6 == 1) {
                                                zzecVar.zzn(3);
                                                boolean zzp = zzecVar.zzp();
                                                if (zzp) {
                                                    zzecVar.zzn(13);
                                                }
                                                if (zzp) {
                                                    zzecVar.zzm();
                                                }
                                                if (c2 > 0) {
                                                    kj.q(zzecVar);
                                                    i6 = zzecVar.zzd(2);
                                                    c3 = c2;
                                                } else {
                                                    i6 = 0;
                                                    c3 = 0;
                                                }
                                                if (i6 > 0) {
                                                    zzecVar.zzn(6);
                                                    int zzd7 = zzecVar.zzd(2);
                                                    zzecVar.zzn(i12);
                                                    if (zzecVar.zzp()) {
                                                        zzecVar.zzn(5);
                                                    }
                                                    if (i6 == 2 || i6 == 3) {
                                                        zzecVar.zzn(6);
                                                    }
                                                    if (zzd7 == 2) {
                                                        zzecVar.zzm();
                                                    }
                                                }
                                                int floor = ((int) Math.floor(Math.log(i14 - 1) / Math.log(2.0d))) + 1;
                                                int zzd8 = zzecVar.zzd(2);
                                                if (zzd8 > 0 && zzecVar.zzp()) {
                                                    zzecVar.zzn(floor);
                                                }
                                                if (zzecVar.zzp()) {
                                                    zzecVar.zzn(floor);
                                                }
                                                if (c3 == 0 && zzd8 == 0) {
                                                    zzecVar.zzm();
                                                }
                                            } else if (zzd6 == 3) {
                                                kj.o(zzecVar, i12, i8, i15);
                                                int o2 = kj.o(zzecVar, i12, i8, i15);
                                                if (zzecVar.zzp()) {
                                                    kj.o(zzecVar, i8, i15, 0);
                                                }
                                                zzecVar.zzm();
                                                if (o2 > 0) {
                                                    zzecVar.zzn(o2 * 8);
                                                }
                                            }
                                            i16++;
                                            i8 = 8;
                                            i15 = 16;
                                            i12 = 4;
                                        } else {
                                            if (zzecVar.zzp()) {
                                                int i17 = 8;
                                                int o3 = kj.o(zzecVar, 2, 4, 8) + 1;
                                                int i18 = 0;
                                                bArr = null;
                                                while (i18 < o3) {
                                                    int o4 = kj.o(zzecVar, 4, i17, 16);
                                                    int o5 = kj.o(zzecVar, 4, i17, 16);
                                                    if (o4 == 7) {
                                                        int zzd9 = zzecVar.zzd(4) + 1;
                                                        zzecVar.zzn(4);
                                                        byte[] bArr2 = new byte[zzd9];
                                                        for (int i19 = 0; i19 < zzd9; i19++) {
                                                            bArr2[i19] = (byte) zzecVar.zzd(i17);
                                                        }
                                                        bArr = bArr2;
                                                    } else {
                                                        zzecVar.zzn(o5 * 8);
                                                    }
                                                    i18++;
                                                    i17 = 8;
                                                }
                                            } else {
                                                bArr = null;
                                            }
                                            switch (i4) {
                                                case 14700:
                                                case 16000:
                                                    d2 = 3.0d;
                                                    zzanb zzanbVar = new zzanb(zzd, bArr, (int) (i4 * d2), (int) (i5 * d2));
                                                    this.q = zzanbVar.zzb;
                                                    this.u = zzanbVar.zzc;
                                                    j = this.r;
                                                    j2 = zzanaVar.zzb;
                                                    if (j != j2) {
                                                        this.r = j2;
                                                        int i20 = zzanbVar.zza;
                                                        String concat = i20 != -1 ? "mhm1".concat(String.format(".%02X", Integer.valueOf(i20))) : "mhm1";
                                                        byte[] bArr3 = zzanbVar.zzd;
                                                        zzfzo zzp2 = (bArr3 == null || bArr3.length <= 0) ? null : zzfzo.zzp(zzen.zzf, bArr3);
                                                        zzab zzabVar = new zzab();
                                                        zzabVar.zzL(this.f4376g);
                                                        zzabVar.zzZ("audio/mhm1");
                                                        zzabVar.zzaa(this.q);
                                                        zzabVar.zzA(concat);
                                                        zzabVar.zzM(zzp2);
                                                        this.j.zzl(zzabVar.zzaf());
                                                    }
                                                    i2 = 1;
                                                    this.i = true;
                                                    break;
                                                case 22050:
                                                case 24000:
                                                    zzanb zzanbVar2 = new zzanb(zzd, bArr, (int) (i4 * d2), (int) (i5 * d2));
                                                    this.q = zzanbVar2.zzb;
                                                    this.u = zzanbVar2.zzc;
                                                    j = this.r;
                                                    j2 = zzanaVar.zzb;
                                                    if (j != j2) {
                                                    }
                                                    i2 = 1;
                                                    this.i = true;
                                                    break;
                                                case 29400:
                                                case 32000:
                                                case 58800:
                                                case 64000:
                                                    d2 = 1.5d;
                                                    zzanb zzanbVar22 = new zzanb(zzd, bArr, (int) (i4 * d2), (int) (i5 * d2));
                                                    this.q = zzanbVar22.zzb;
                                                    this.u = zzanbVar22.zzc;
                                                    j = this.r;
                                                    j2 = zzanaVar.zzb;
                                                    if (j != j2) {
                                                    }
                                                    i2 = 1;
                                                    this.i = true;
                                                    break;
                                                case 44100:
                                                case 48000:
                                                case 88200:
                                                case 96000:
                                                    d2 = 1.0d;
                                                    zzanb zzanbVar222 = new zzanb(zzd, bArr, (int) (i4 * d2), (int) (i5 * d2));
                                                    this.q = zzanbVar222.zzb;
                                                    this.u = zzanbVar222.zzc;
                                                    j = this.r;
                                                    j2 = zzanaVar.zzb;
                                                    if (j != j2) {
                                                    }
                                                    i2 = 1;
                                                    this.i = true;
                                                    break;
                                                default:
                                                    throw zzbh.zzc("Unsupported sampling rate " + i4);
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            if (i11 == 17) {
                                byte[] zzN2 = zzedVar2.zzN();
                                zzec zzecVar2 = new zzec(zzN2, zzN2.length);
                                if (zzecVar2.zzp()) {
                                    zzecVar2.zzn(2);
                                    i3 = zzecVar2.zzd(13);
                                } else {
                                    i3 = 0;
                                }
                                this.k = i3;
                            } else if (i11 == 2) {
                                if (this.i) {
                                    this.p = false;
                                    i = 1;
                                } else {
                                    i = 0;
                                }
                                int i21 = this.u - this.k;
                                double d3 = this.q;
                                long round = Math.round(this.t);
                                if (this.n) {
                                    this.n = false;
                                    this.t = this.f4370a;
                                } else {
                                    this.t += (i21 * 1000000.0d) / d3;
                                }
                                this.j.zzs(round, i, this.f4372c, 0, null);
                                this.i = false;
                                this.k = 0;
                                this.f4372c = 0;
                            }
                            i2 = 1;
                        }
                        this.f4374e = i2;
                    }
                } else {
                    zzed zzedVar3 = this.h;
                    v(zzedVar, zzedVar3, false);
                    if (zzedVar3.zzb() == 0) {
                        int zze = zzedVar3.zze();
                        byte[] zzN3 = zzedVar3.zzN();
                        zzec zzecVar3 = this.o;
                        zzecVar3.zzk(zzN3, zze);
                        zzecVar3.zzb();
                        int o6 = kj.o(zzecVar3, 3, 8, 8);
                        zzanaVar.zza = o6;
                        if (o6 != -1) {
                            zzdb.zzd(Math.max(Math.max(2, 8), 32) <= 63);
                            zzgcm.zza(zzgcm.zza(3L, 255L), 4294967296L);
                            if (zzecVar3.zza() >= 2) {
                                long zze2 = zzecVar3.zze(2);
                                if (zze2 == 3) {
                                    if (zzecVar3.zza() >= 8) {
                                        long zze3 = zzecVar3.zze(8);
                                        long j4 = zze3 + 3;
                                        if (zze3 != 255) {
                                            zze2 = j4;
                                        } else if (zzecVar3.zza() >= 32) {
                                            zze2 = zzecVar3.zze(32) + j4;
                                        }
                                    }
                                }
                                j3 = zze2;
                                zzanaVar.zzb = j3;
                                if (j3 != -1) {
                                    if (j3 > 16) {
                                        throw zzbh.zzc("Contains sub-stream with an invalid packet label " + j3);
                                    }
                                    if (j3 == 0) {
                                        int i22 = zzanaVar.zza;
                                        if (i22 == 1) {
                                            throw zzbh.zza("Mpegh3daConfig packet with invalid packet label 0", null);
                                        }
                                        if (i22 == 2) {
                                            throw zzbh.zza("Mpegh3daFrame packet with invalid packet label 0", null);
                                        }
                                        if (i22 == 17) {
                                            throw zzbh.zza("AudioTruncation packet with invalid packet label 0", null);
                                        }
                                    }
                                    int o7 = kj.o(zzecVar3, 11, 24, 24);
                                    zzanaVar.zzc = o7;
                                    if (o7 != -1) {
                                        this.f4373d = 0;
                                        this.f4372c = o7 + zze + this.f4372c;
                                        zzedVar3.zzL(0);
                                        this.j.zzq(zzedVar3, zzedVar3.zze());
                                        zzedVar3.zzI(2);
                                        zzedVar2.zzI(zzanaVar.zzc);
                                        this.m = true;
                                        this.f4374e = 2;
                                    }
                                }
                            }
                            j3 = -1;
                            zzanaVar.zzb = j3;
                            if (j3 != -1) {
                            }
                        }
                        if (zzedVar3.zze() < 15) {
                            zzedVar3.zzK(zzedVar3.zze() + 1);
                        }
                    }
                    this.m = false;
                }
            } else {
                int i23 = this.f4371b;
                if ((i23 & 2) == 0) {
                    zzedVar.zzL(zzedVar.zze());
                } else {
                    if ((i23 & 4) == 0) {
                        while (zzedVar.zzb() > 0) {
                            int i24 = this.f4375f << 8;
                            this.f4375f = i24;
                            int zzm = i24 | zzedVar.zzm();
                            this.f4375f = zzm;
                            if ((zzm & 16777215) == 12583333) {
                                zzedVar.zzL(zzedVar.zzd() - 3);
                                this.f4375f = 0;
                            }
                        }
                    }
                    this.f4374e = 1;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzb(zzacu zzacuVar, zzaoa zzaoaVar) {
        zzaoaVar.zzc();
        this.f4376g = zzaoaVar.zzb();
        this.j = zzacuVar.zzw(zzaoaVar.zza(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzc(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzd(long j, int i) {
        this.f4371b = i;
        if (!this.p && (this.f4372c != 0 || !this.m)) {
            this.n = true;
        }
        if (j != -9223372036854775807L) {
            double d2 = j;
            if (this.n) {
                this.f4370a = d2;
            } else {
                this.t = d2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zze() {
        this.f4374e = 0;
        this.f4375f = 0;
        this.h.zzI(2);
        this.f4373d = 0;
        this.f4372c = 0;
        this.q = -2147483647;
        this.u = -1;
        this.k = 0;
        this.r = -1L;
        this.i = false;
        this.n = false;
        this.m = true;
        this.p = true;
        this.t = -9.223372036854776E18d;
        this.f4370a = -9.223372036854776E18d;
    }
}
