package com.google.android.gms.internal.ads;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.Arrays;
import java.util.Collections;

/* loaded from: classes3.dex */
public final class zzami implements zzamm {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f4301a = {73, 68, 51};

    /* renamed from: b, reason: collision with root package name */
    public zzadx f4302b;

    /* renamed from: f, reason: collision with root package name */
    public final String f4306f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f4307g;
    public final int h;
    public final boolean i;
    public zzadx j;
    public long k;
    public String l;
    public int m;
    public int n;
    public boolean o;
    public boolean s;
    public zzadx v;
    public final zzec q = new zzec(new byte[7], 7);
    public final zzed u = new zzed(Arrays.copyOf(f4301a, 10));
    public int p = 0;
    public int r = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f4303c = 256;

    /* renamed from: e, reason: collision with root package name */
    public int f4305e = -1;

    /* renamed from: d, reason: collision with root package name */
    public int f4304d = -1;
    public long w = -9223372036854775807L;
    public long t = -9223372036854775807L;

    public zzami(boolean z, String str, int i) {
        this.i = z;
        this.f4306f = str;
        this.h = i;
    }

    public static boolean zzf(int i) {
        return (i & 65526) == 65520;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0301  */
    @Override // com.google.android.gms.internal.ads.zzamm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(zzed zzedVar) throws zzbh {
        int i;
        byte b2;
        int i2;
        int i3;
        int i4;
        this.v.getClass();
        int i5 = zzen.zza;
        while (zzedVar.zzb() > 0) {
            int i6 = this.p;
            zzed zzedVar2 = this.u;
            int i7 = 4;
            zzec zzecVar = this.q;
            int i8 = 1;
            if (i6 == 0) {
                byte[] zzN = zzedVar.zzN();
                int zzd = zzedVar.zzd();
                int zze = zzedVar.zze();
                while (true) {
                    if (zzd >= zze) {
                        zzedVar.zzL(zzd);
                        break;
                    }
                    i = zzd + 1;
                    b2 = zzN[zzd];
                    int i9 = b2 & 255;
                    if (this.f4303c == 512 && zzf((((byte) i9) & 255) | 65280)) {
                        if (this.o) {
                            break;
                        }
                        int i10 = zzd - 1;
                        zzedVar.zzL(zzd);
                        byte[] bArr = zzecVar.zza;
                        if (zzedVar.zzb() >= i8) {
                            zzedVar.zzH(bArr, 0, i8);
                            zzecVar.zzl(i7);
                            int zzd2 = zzecVar.zzd(i8);
                            int i11 = this.f4305e;
                            if (i11 == -1 || zzd2 == i11) {
                                if (this.f4304d != -1) {
                                    byte[] bArr2 = zzecVar.zza;
                                    if (zzedVar.zzb() < i8) {
                                        break;
                                    }
                                    zzedVar.zzH(bArr2, 0, i8);
                                    zzecVar.zzl(2);
                                    i4 = 4;
                                    if (zzecVar.zzd(4) == this.f4304d) {
                                        zzedVar.zzL(i);
                                    }
                                } else {
                                    i4 = 4;
                                }
                                byte[] bArr3 = zzecVar.zza;
                                if (zzedVar.zzb() < i4) {
                                    break;
                                }
                                zzedVar.zzH(bArr3, 0, i4);
                                zzecVar.zzl(14);
                                int zzd3 = zzecVar.zzd(13);
                                if (zzd3 >= 7) {
                                    byte[] zzN2 = zzedVar.zzN();
                                    int zze2 = zzedVar.zze();
                                    int i12 = i10 + zzd3;
                                    if (i12 < zze2) {
                                        byte b3 = zzN2[i12];
                                        if (b3 != -1) {
                                            if (b3 == 73) {
                                                int i13 = i12 + 1;
                                                if (i13 == zze2) {
                                                    break;
                                                }
                                                if (zzN2[i13] == 68) {
                                                    int i14 = i12 + 2;
                                                    if (i14 == zze2) {
                                                        break;
                                                    } else if (zzN2[i14] == 51) {
                                                        break;
                                                    }
                                                }
                                            }
                                        } else {
                                            int i15 = i12 + 1;
                                            if (i15 == zze2) {
                                                break;
                                            }
                                            byte b4 = zzN2[i15];
                                            if (zzf((b4 & 255) | 65280) && ((b4 & 8) >> 3) == zzd2) {
                                                break;
                                            }
                                        }
                                    } else {
                                        break;
                                    }
                                }
                                int i16 = this.f4303c;
                                i2 = i9 | i16;
                                if (i2 != 329) {
                                    i3 = 768;
                                } else if (i2 == 511) {
                                    i3 = 512;
                                } else if (i2 == 836) {
                                    i3 = 1024;
                                } else {
                                    if (i2 == 1075) {
                                        this.p = 2;
                                        this.r = 3;
                                        this.m = 0;
                                        zzedVar2.zzL(0);
                                        zzedVar.zzL(i);
                                        break;
                                    }
                                    if (i16 != 256) {
                                        this.f4303c = 256;
                                        i7 = 4;
                                        i8 = 1;
                                    } else {
                                        zzd = i;
                                        i7 = 4;
                                        i8 = 1;
                                    }
                                }
                                this.f4303c = i3;
                                zzd = i;
                                i7 = 4;
                                i8 = 1;
                            }
                        }
                    }
                    int i162 = this.f4303c;
                    i2 = i9 | i162;
                    if (i2 != 329) {
                    }
                    this.f4303c = i3;
                    zzd = i;
                    i7 = 4;
                    i8 = 1;
                }
                this.n = (b2 & 8) >> 3;
                this.f4307g = 1 == (!(b2 & 1));
                if (this.o) {
                    this.p = 3;
                    this.r = 0;
                } else {
                    this.p = 1;
                    this.r = 0;
                }
                zzedVar.zzL(i);
            } else if (i6 != 1) {
                if (i6 == 2) {
                    byte[] zzN3 = zzedVar2.zzN();
                    int min = Math.min(zzedVar.zzb(), 10 - this.r);
                    zzedVar.zzH(zzN3, this.r, min);
                    int i17 = this.r + min;
                    this.r = i17;
                    if (i17 == 10) {
                        this.f4302b.zzq(zzedVar2, 10);
                        zzedVar2.zzL(6);
                        zzadx zzadxVar = this.f4302b;
                        int zzl = zzedVar2.zzl() + 10;
                        this.p = 4;
                        this.r = 10;
                        this.j = zzadxVar;
                        this.k = 0L;
                        this.m = zzl;
                    }
                } else if (i6 != 3) {
                    int min2 = Math.min(zzedVar.zzb(), this.m - this.r);
                    this.j.zzq(zzedVar, min2);
                    int i18 = this.r + min2;
                    this.r = i18;
                    if (i18 == this.m) {
                        zzdb.zzf(this.t != -9223372036854775807L);
                        this.j.zzs(this.t, 1, this.m, 0, null);
                        this.t += this.k;
                        this.p = 0;
                        this.r = 0;
                        this.f4303c = 256;
                    }
                } else {
                    int i19 = true != this.f4307g ? 5 : 7;
                    byte[] bArr4 = zzecVar.zza;
                    int min3 = Math.min(zzedVar.zzb(), i19 - this.r);
                    zzedVar.zzH(bArr4, this.r, min3);
                    int i20 = this.r + min3;
                    this.r = i20;
                    if (i20 == i19) {
                        zzecVar.zzl(0);
                        if (this.s) {
                            zzecVar.zzn(10);
                        } else {
                            int zzd4 = zzecVar.zzd(2) + 1;
                            if (zzd4 != 2) {
                                zzdt.zzf("AdtsReader", "Detected audio object type: " + zzd4 + ", but assuming AAC LC.");
                            }
                            zzecVar.zzn(5);
                            int zzd5 = zzecVar.zzd(3);
                            int i21 = this.f4304d;
                            byte[] bArr5 = {(byte) (((i21 >> 1) & 7) | 16), (byte) (((zzd5 << 3) & 120) | ((i21 << 7) & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME))};
                            zzabm zza = zzabo.zza(bArr5);
                            zzab zzabVar = new zzab();
                            zzabVar.zzL(this.l);
                            zzabVar.zzZ("audio/mp4a-latm");
                            zzabVar.zzA(zza.zzc);
                            zzabVar.zzz(zza.zzb);
                            zzabVar.zzaa(zza.zza);
                            zzabVar.zzM(Collections.singletonList(bArr5));
                            zzabVar.zzP(this.f4306f);
                            zzabVar.zzX(this.h);
                            zzad zzaf = zzabVar.zzaf();
                            this.w = 1024000000 / zzaf.zzD;
                            this.v.zzl(zzaf);
                            this.s = true;
                        }
                        zzecVar.zzn(4);
                        int zzd6 = zzecVar.zzd(13);
                        int i22 = zzd6 - 7;
                        if (this.f4307g) {
                            i22 = zzd6 - 9;
                        }
                        zzadx zzadxVar2 = this.v;
                        long j = this.w;
                        this.p = 4;
                        this.r = 0;
                        this.j = zzadxVar2;
                        this.k = j;
                        this.m = i22;
                    }
                }
            } else if (zzedVar.zzb() != 0) {
                zzecVar.zza[0] = zzedVar.zzN()[zzedVar.zzd()];
                zzecVar.zzl(2);
                int zzd7 = zzecVar.zzd(4);
                int i23 = this.f4304d;
                if (i23 == -1 || zzd7 == i23) {
                    if (!this.o) {
                        this.o = true;
                        this.f4305e = this.n;
                        this.f4304d = zzd7;
                    }
                    this.p = 3;
                    this.r = 0;
                } else {
                    this.o = false;
                    this.p = 0;
                    this.r = 0;
                    this.f4303c = 256;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzb(zzacu zzacuVar, zzaoa zzaoaVar) {
        zzaoaVar.zzc();
        this.l = zzaoaVar.zzb();
        zzadx zzw = zzacuVar.zzw(zzaoaVar.zza(), 1);
        this.v = zzw;
        this.j = zzw;
        if (!this.i) {
            this.f4302b = new zzacm();
            return;
        }
        zzaoaVar.zzc();
        zzadx zzw2 = zzacuVar.zzw(zzaoaVar.zza(), 5);
        this.f4302b = zzw2;
        zzab zzabVar = new zzab();
        zzabVar.zzL(zzaoaVar.zzb());
        zzabVar.zzZ("application/id3");
        zzw2.zzl(zzabVar.zzaf());
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzc(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzd(long j, int i) {
        this.t = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zze() {
        this.t = -9223372036854775807L;
        this.o = false;
        this.p = 0;
        this.r = 0;
        this.f4303c = 256;
    }
}
