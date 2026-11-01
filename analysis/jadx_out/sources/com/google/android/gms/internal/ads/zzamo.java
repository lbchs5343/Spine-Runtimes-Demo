package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.akj;
import g.avi;
import java.util.Arrays;
import java.util.Collections;

/* loaded from: classes3.dex */
public final class zzamo implements zzamm {

    /* renamed from: a, reason: collision with root package name */
    public static final double[] f4322a = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: b, reason: collision with root package name */
    public long f4323b;

    /* renamed from: c, reason: collision with root package name */
    public long f4324c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f4325d;

    /* renamed from: e, reason: collision with root package name */
    public long f4326e;

    /* renamed from: f, reason: collision with root package name */
    public final zzed f4327f;

    /* renamed from: g, reason: collision with root package name */
    public long f4328g;
    public final zzane h;
    public String i;
    public final boolean[] j;
    public boolean k;
    public long l;
    public boolean m;
    public zzadx n;
    public boolean o;
    public final akj p;
    public final avi q;

    public zzamo() {
        throw null;
    }

    public zzamo(akj akjVar) {
        zzed zzedVar;
        this.p = akjVar;
        this.j = new boolean[4];
        avi aviVar = new avi();
        aviVar.f10917b = new byte[TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME];
        this.q = aviVar;
        if (akjVar != null) {
            this.h = new zzane(MediaPlayer.MEDIA_PLAYER_OPTION_ABR_HIGH_THRESHOLD, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            zzedVar = new zzed();
        } else {
            zzedVar = null;
            this.h = null;
        }
        this.f4327f = zzedVar;
        this.f4328g = -9223372036854775807L;
        this.f4326e = -9223372036854775807L;
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x010c  */
    @Override // com.google.android.gms.internal.ads.zzamm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(zzed zzedVar) {
        avi aviVar;
        zzane zzaneVar;
        int i;
        int i2;
        int i3;
        int i4;
        float f2;
        int i5;
        long j;
        byte b2;
        int i6;
        zzdb.zzb(this.n);
        int zzd = zzedVar.zzd();
        int zze = zzedVar.zze();
        byte[] zzN = zzedVar.zzN();
        this.f4323b += zzedVar.zzb();
        zzed zzedVar2 = zzedVar;
        this.n.zzq(zzedVar2, zzedVar.zzb());
        while (true) {
            int zza = zzfp.zza(zzN, zzd, zze, this.j);
            aviVar = this.q;
            zzaneVar = this.h;
            if (zza == zze) {
                break;
            }
            int i7 = zza + 3;
            int i8 = zzedVar2.zzN()[i7] & 255;
            int i9 = zza - zzd;
            if (this.o) {
                i = zze;
            } else {
                if (i9 > 0) {
                    aviVar.f(zzN, zzd, zza);
                }
                int i10 = i9 < 0 ? -i9 : 0;
                if (aviVar.f10918c) {
                    int i11 = aviVar.f10919d - i10;
                    aviVar.f10919d = i11;
                    if (aviVar.f10920e == 0 && i8 == 181) {
                        aviVar.f10920e = i11;
                        i = zze;
                    } else {
                        aviVar.f10918c = false;
                        String str = this.i;
                        str.getClass();
                        byte[] copyOf = Arrays.copyOf(aviVar.f10917b, aviVar.f10919d);
                        int i12 = copyOf[4] & 255;
                        byte b3 = copyOf[5];
                        i = zze;
                        int i13 = copyOf[6] & 255;
                        int i14 = ((b3 & 255) >> 4) | (i12 << 4);
                        int i15 = (copyOf[7] & 240) >> 4;
                        int i16 = ((b3 & 15) << 8) | i13;
                        if (i15 == 2) {
                            i3 = i16 * 4;
                            i4 = i14 * 3;
                        } else if (i15 == 3) {
                            i3 = i16 * 16;
                            i4 = i14 * 9;
                        } else if (i15 != 4) {
                            f2 = 1.0f;
                            zzab zzabVar = new zzab();
                            zzabVar.zzL(str);
                            zzabVar.zzZ("video/mpeg2");
                            zzabVar.zzae(i14);
                            zzabVar.zzJ(i16);
                            zzabVar.zzV(f2);
                            zzabVar.zzM(Collections.singletonList(copyOf));
                            zzad zzaf = zzabVar.zzaf();
                            i5 = (copyOf[7] & 15) - 1;
                            j = 0;
                            if (i5 >= 0 && i5 < 8) {
                                double d2 = f4322a[i5];
                                b2 = copyOf[aviVar.f10920e + 9];
                                i6 = (b2 & 96) >> 5;
                                if (i6 != (b2 & 31)) {
                                    d2 *= (i6 + 1.0d) / (r5 + 1);
                                }
                                j = (long) (1000000.0d / d2);
                            }
                            Pair create = Pair.create(zzaf, Long.valueOf(j));
                            this.n.zzl((zzad) create.first);
                            this.f4324c = ((Long) create.second).longValue();
                            this.o = true;
                        } else {
                            i3 = i16 * 121;
                            i4 = i14 * 100;
                        }
                        f2 = i3 / i4;
                        zzab zzabVar2 = new zzab();
                        zzabVar2.zzL(str);
                        zzabVar2.zzZ("video/mpeg2");
                        zzabVar2.zzae(i14);
                        zzabVar2.zzJ(i16);
                        zzabVar2.zzV(f2);
                        zzabVar2.zzM(Collections.singletonList(copyOf));
                        zzad zzaf2 = zzabVar2.zzaf();
                        i5 = (copyOf[7] & 15) - 1;
                        j = 0;
                        if (i5 >= 0) {
                            double d22 = f4322a[i5];
                            b2 = copyOf[aviVar.f10920e + 9];
                            i6 = (b2 & 96) >> 5;
                            if (i6 != (b2 & 31)) {
                            }
                            j = (long) (1000000.0d / d22);
                        }
                        Pair create2 = Pair.create(zzaf2, Long.valueOf(j));
                        this.n.zzl((zzad) create2.first);
                        this.f4324c = ((Long) create2.second).longValue();
                        this.o = true;
                    }
                } else {
                    i = zze;
                    if (i8 == 179) {
                        aviVar.f10918c = true;
                    }
                }
                aviVar.f(avi.f10916a, 0, 3);
            }
            if (zzaneVar != null) {
                if (i9 > 0) {
                    zzaneVar.zza(zzN, zzd, zza);
                    i2 = 0;
                } else {
                    i2 = -i9;
                }
                if (zzaneVar.zzd(i2)) {
                    int zzb = zzfp.zzb(zzaneVar.zza, zzaneVar.zzb);
                    int i17 = zzen.zza;
                    byte[] bArr = zzaneVar.zza;
                    zzed zzedVar3 = this.f4327f;
                    zzedVar3.zzJ(bArr, zzb);
                    this.p.q(this.f4326e, zzedVar3);
                }
                if (i8 == 178) {
                    if (zzedVar.zzN()[zza + 2] == 1) {
                        zzaneVar.zzc(MediaPlayer.MEDIA_PLAYER_OPTION_ABR_HIGH_THRESHOLD);
                    }
                    i8 = MediaPlayer.MEDIA_PLAYER_OPTION_ABR_HIGH_THRESHOLD;
                }
            }
            if (i8 == 0 || i8 == 179) {
                int i18 = i - zza;
                if (this.k && this.o) {
                    long j2 = this.f4326e;
                    if (j2 != -9223372036854775807L) {
                        this.n.zzs(j2, this.f4325d ? 1 : 0, ((int) (this.f4323b - this.l)) - i18, i18, null);
                    }
                }
                if (!this.m || this.k) {
                    this.l = this.f4323b - i18;
                    long j3 = this.f4328g;
                    if (j3 == -9223372036854775807L) {
                        long j4 = this.f4326e;
                        j3 = j4 != -9223372036854775807L ? j4 + this.f4324c : -9223372036854775807L;
                    }
                    this.f4326e = j3;
                    this.f4325d = false;
                    this.f4328g = -9223372036854775807L;
                    this.m = true;
                }
                this.k = i8 == 0;
            } else if (i8 == 184) {
                this.f4325d = true;
            }
            zzedVar2 = zzedVar;
            zzd = i7;
            zze = i;
        }
        if (!this.o) {
            aviVar.f(zzN, zzd, zze);
        }
        if (zzaneVar != null) {
            zzaneVar.zza(zzN, zzd, zze);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzb(zzacu zzacuVar, zzaoa zzaoaVar) {
        zzaoaVar.zzc();
        this.i = zzaoaVar.zzb();
        this.n = zzacuVar.zzw(zzaoaVar.zza(), 2);
        akj akjVar = this.p;
        if (akjVar != null) {
            akjVar.aj(zzacuVar, zzaoaVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzc(boolean z) {
        zzdb.zzb(this.n);
        if (z) {
            boolean z2 = this.f4325d;
            long j = this.f4323b - this.l;
            this.n.zzs(this.f4326e, z2 ? 1 : 0, (int) j, 0, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzd(long j, int i) {
        this.f4328g = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zze() {
        zzfp.zzh(this.j);
        avi aviVar = this.q;
        aviVar.f10918c = false;
        aviVar.f10919d = 0;
        aviVar.f10920e = 0;
        zzane zzaneVar = this.h;
        if (zzaneVar != null) {
            zzaneVar.zzb();
        }
        this.f4323b = 0L;
        this.m = false;
        this.f4328g = -9223372036854775807L;
        this.f4326e = -9223372036854775807L;
    }
}
