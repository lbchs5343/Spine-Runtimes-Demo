package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.akj;
import g.ezd;
import g.mr;
import java.util.Arrays;
import java.util.Collections;

/* loaded from: classes3.dex */
public final class zzamr implements zzamm {

    /* renamed from: a, reason: collision with root package name */
    public static final float[] f4329a = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    /* renamed from: b, reason: collision with root package name */
    public String f4330b;

    /* renamed from: c, reason: collision with root package name */
    public long f4331c;

    /* renamed from: d, reason: collision with root package name */
    public final ezd f4332d;

    /* renamed from: e, reason: collision with root package name */
    public final zzane f4333e;

    /* renamed from: f, reason: collision with root package name */
    public final akj f4334f;

    /* renamed from: g, reason: collision with root package name */
    public mr f4335g;
    public zzadx h;
    public final zzed i;
    public boolean j;
    public final boolean[] k;
    public long l;

    public zzamr() {
        this(null);
    }

    public zzamr(akj akjVar) {
        zzed zzedVar;
        this.f4334f = akjVar;
        this.k = new boolean[4];
        ezd ezdVar = new ezd();
        ezdVar.f16403c = new byte[TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME];
        this.f4332d = ezdVar;
        this.f4331c = -9223372036854775807L;
        if (akjVar != null) {
            this.f4333e = new zzane(MediaPlayer.MEDIA_PLAYER_OPTION_ABR_HIGH_THRESHOLD, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            zzedVar = new zzed();
        } else {
            zzedVar = null;
            this.f4333e = null;
        }
        this.i = zzedVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0146  */
    @Override // com.google.android.gms.internal.ads.zzamm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(zzed zzedVar) {
        ezd ezdVar;
        zzane zzaneVar;
        int i;
        int i2;
        boolean z;
        int i3;
        int i4;
        float f2;
        zzdb.zzb(this.f4335g);
        zzdb.zzb(this.h);
        int zzd = zzedVar.zzd();
        int zze = zzedVar.zze();
        byte[] zzN = zzedVar.zzN();
        this.l += zzedVar.zzb();
        this.h.zzq(zzedVar, zzedVar.zzb());
        while (true) {
            int zza = zzfp.zza(zzN, zzd, zze, this.k);
            ezdVar = this.f4332d;
            zzaneVar = this.f4333e;
            if (zza == zze) {
                break;
            }
            int i5 = zza + 3;
            byte b2 = zzedVar.zzN()[i5];
            int i6 = b2 & 255;
            int i7 = zza - zzd;
            if (this.j) {
                i = zze;
            } else {
                if (i7 > 0) {
                    ezdVar.g(zzN, zzd, zza);
                }
                int i8 = i7 < 0 ? -i7 : 0;
                int i9 = ezdVar.f16405e;
                if (i9 != 0) {
                    i = zze;
                    if (i9 == 1) {
                        i4 = 0;
                        if (i6 != 181) {
                            zzdt.zzf("H263Reader", "Unexpected start code value");
                            ezdVar.f16404d = false;
                            ezdVar.f16406f = 0;
                            ezdVar.f16405e = 0;
                        } else {
                            ezdVar.f16405e = 2;
                        }
                    } else if (i9 == 2) {
                        i4 = 0;
                        if (i6 > 31) {
                            zzdt.zzf("H263Reader", "Unexpected start code value");
                            ezdVar.f16404d = false;
                            ezdVar.f16406f = 0;
                            ezdVar.f16405e = 0;
                        } else {
                            ezdVar.f16405e = 3;
                        }
                    } else if (i9 != 3) {
                        if (i6 == 179 || i6 == 181) {
                            ezdVar.f16406f -= i8;
                            ezdVar.f16404d = false;
                            zzadx zzadxVar = this.h;
                            int i10 = ezdVar.f16402b;
                            String str = this.f4330b;
                            str.getClass();
                            byte[] copyOf = Arrays.copyOf(ezdVar.f16403c, ezdVar.f16406f);
                            zzec zzecVar = new zzec(copyOf, copyOf.length);
                            zzecVar.zzo(i10);
                            zzecVar.zzo(4);
                            zzecVar.zzm();
                            zzecVar.zzn(8);
                            if (zzecVar.zzp()) {
                                zzecVar.zzn(4);
                                zzecVar.zzn(3);
                            }
                            int zzd2 = zzecVar.zzd(4);
                            if (zzd2 == 15) {
                                int zzd3 = zzecVar.zzd(8);
                                int zzd4 = zzecVar.zzd(8);
                                if (zzd4 == 0) {
                                    zzdt.zzf("H263Reader", "Invalid aspect ratio");
                                    f2 = 1.0f;
                                    if (zzecVar.zzp()) {
                                        zzecVar.zzn(2);
                                        zzecVar.zzn(1);
                                        if (zzecVar.zzp()) {
                                            zzecVar.zzn(15);
                                            zzecVar.zzm();
                                            zzecVar.zzn(15);
                                            zzecVar.zzm();
                                            zzecVar.zzn(15);
                                            zzecVar.zzm();
                                            zzecVar.zzn(3);
                                            zzecVar.zzn(11);
                                            zzecVar.zzm();
                                            zzecVar.zzn(15);
                                            zzecVar.zzm();
                                        }
                                    }
                                    if (zzecVar.zzd(2) != 0) {
                                        zzdt.zzf("H263Reader", "Unhandled video object layer shape");
                                    }
                                    zzecVar.zzm();
                                    int zzd5 = zzecVar.zzd(16);
                                    zzecVar.zzm();
                                    if (zzecVar.zzp()) {
                                        if (zzd5 == 0) {
                                            zzdt.zzf("H263Reader", "Invalid vop_increment_time_resolution");
                                        } else {
                                            int i11 = zzd5 - 1;
                                            int i12 = 0;
                                            while (i11 > 0) {
                                                i11 >>= 1;
                                                i12++;
                                            }
                                            zzecVar.zzn(i12);
                                        }
                                    }
                                    zzecVar.zzm();
                                    int zzd6 = zzecVar.zzd(13);
                                    zzecVar.zzm();
                                    int zzd7 = zzecVar.zzd(13);
                                    zzecVar.zzm();
                                    zzecVar.zzm();
                                    zzab zzabVar = new zzab();
                                    zzabVar.zzL(str);
                                    zzabVar.zzZ("video/mp4v-es");
                                    zzabVar.zzae(zzd6);
                                    zzabVar.zzJ(zzd7);
                                    zzabVar.zzV(f2);
                                    zzabVar.zzM(Collections.singletonList(copyOf));
                                    zzadxVar.zzl(zzabVar.zzaf());
                                    this.j = true;
                                } else {
                                    f2 = zzd3 / zzd4;
                                    if (zzecVar.zzp()) {
                                    }
                                    if (zzecVar.zzd(2) != 0) {
                                    }
                                    zzecVar.zzm();
                                    int zzd52 = zzecVar.zzd(16);
                                    zzecVar.zzm();
                                    if (zzecVar.zzp()) {
                                    }
                                    zzecVar.zzm();
                                    int zzd62 = zzecVar.zzd(13);
                                    zzecVar.zzm();
                                    int zzd72 = zzecVar.zzd(13);
                                    zzecVar.zzm();
                                    zzecVar.zzm();
                                    zzab zzabVar2 = new zzab();
                                    zzabVar2.zzL(str);
                                    zzabVar2.zzZ("video/mp4v-es");
                                    zzabVar2.zzae(zzd62);
                                    zzabVar2.zzJ(zzd72);
                                    zzabVar2.zzV(f2);
                                    zzabVar2.zzM(Collections.singletonList(copyOf));
                                    zzadxVar.zzl(zzabVar2.zzaf());
                                    this.j = true;
                                }
                            } else if (zzd2 < 7) {
                                f2 = f4329a[zzd2];
                                if (zzecVar.zzp()) {
                                }
                                if (zzecVar.zzd(2) != 0) {
                                }
                                zzecVar.zzm();
                                int zzd522 = zzecVar.zzd(16);
                                zzecVar.zzm();
                                if (zzecVar.zzp()) {
                                }
                                zzecVar.zzm();
                                int zzd622 = zzecVar.zzd(13);
                                zzecVar.zzm();
                                int zzd722 = zzecVar.zzd(13);
                                zzecVar.zzm();
                                zzecVar.zzm();
                                zzab zzabVar22 = new zzab();
                                zzabVar22.zzL(str);
                                zzabVar22.zzZ("video/mp4v-es");
                                zzabVar22.zzae(zzd622);
                                zzabVar22.zzJ(zzd722);
                                zzabVar22.zzV(f2);
                                zzabVar22.zzM(Collections.singletonList(copyOf));
                                zzadxVar.zzl(zzabVar22.zzaf());
                                this.j = true;
                            } else {
                                zzdt.zzf("H263Reader", "Invalid aspect ratio");
                                f2 = 1.0f;
                                if (zzecVar.zzp()) {
                                }
                                if (zzecVar.zzd(2) != 0) {
                                }
                                zzecVar.zzm();
                                int zzd5222 = zzecVar.zzd(16);
                                zzecVar.zzm();
                                if (zzecVar.zzp()) {
                                }
                                zzecVar.zzm();
                                int zzd6222 = zzecVar.zzd(13);
                                zzecVar.zzm();
                                int zzd7222 = zzecVar.zzd(13);
                                zzecVar.zzm();
                                zzecVar.zzm();
                                zzab zzabVar222 = new zzab();
                                zzabVar222.zzL(str);
                                zzabVar222.zzZ("video/mp4v-es");
                                zzabVar222.zzae(zzd6222);
                                zzabVar222.zzJ(zzd7222);
                                zzabVar222.zzV(f2);
                                zzabVar222.zzM(Collections.singletonList(copyOf));
                                zzadxVar.zzl(zzabVar222.zzaf());
                                this.j = true;
                            }
                        } else {
                            i4 = 0;
                        }
                    } else if ((b2 & 240) != 32) {
                        zzdt.zzf("H263Reader", "Unexpected start code value");
                        i4 = 0;
                        ezdVar.f16404d = false;
                        ezdVar.f16406f = 0;
                        ezdVar.f16405e = 0;
                    } else {
                        i4 = 0;
                        ezdVar.f16402b = ezdVar.f16406f;
                        ezdVar.f16405e = 4;
                    }
                } else {
                    i = zze;
                    i4 = 0;
                    if (i6 == 176) {
                        ezdVar.f16405e = 1;
                        ezdVar.f16404d = true;
                    }
                }
                ezdVar.g(ezd.f16401a, i4, 3);
            }
            this.f4335g.i(zzN, zzd, zza);
            if (zzaneVar != null) {
                if (i7 > 0) {
                    zzaneVar.zza(zzN, zzd, zza);
                    i3 = 0;
                } else {
                    i3 = -i7;
                }
                if (zzaneVar.zzd(i3)) {
                    int zzb = zzfp.zzb(zzaneVar.zza, zzaneVar.zzb);
                    int i13 = zzen.zza;
                    byte[] bArr = zzaneVar.zza;
                    zzed zzedVar2 = this.i;
                    zzedVar2.zzJ(bArr, zzb);
                    this.f4334f.q(this.f4331c, zzedVar2);
                }
                if (i6 == 178) {
                    if (zzedVar.zzN()[zza + 2] == 1) {
                        zzaneVar.zzc(MediaPlayer.MEDIA_PLAYER_OPTION_ABR_HIGH_THRESHOLD);
                    }
                    i6 = MediaPlayer.MEDIA_PLAYER_OPTION_ABR_HIGH_THRESHOLD;
                    int i14 = i - zza;
                    this.f4335g.j(i14, this.j, this.l - i14);
                    mr mrVar = this.f4335g;
                    long j = this.f4331c;
                    mrVar.f19669c = i6;
                    mrVar.f19668b = false;
                    if (i6 != 182) {
                        i2 = i6;
                        z = true;
                    } else if (i6 == 179) {
                        z = true;
                        i2 = MediaPlayer.MEDIA_PLAYER_OPTION_ABR_PROBE_COUNT;
                    } else {
                        i2 = i6;
                        z = false;
                    }
                    mrVar.f19672f = z;
                    mrVar.f19673g = i2 != 182;
                    mrVar.f19671e = 0;
                    mrVar.f19667a = j;
                    zzd = i5;
                    zze = i;
                }
            }
            int i142 = i - zza;
            this.f4335g.j(i142, this.j, this.l - i142);
            mr mrVar2 = this.f4335g;
            long j2 = this.f4331c;
            mrVar2.f19669c = i6;
            mrVar2.f19668b = false;
            if (i6 != 182) {
            }
            mrVar2.f19672f = z;
            mrVar2.f19673g = i2 != 182;
            mrVar2.f19671e = 0;
            mrVar2.f19667a = j2;
            zzd = i5;
            zze = i;
        }
        if (!this.j) {
            ezdVar.g(zzN, zzd, zze);
        }
        this.f4335g.i(zzN, zzd, zze);
        if (zzaneVar != null) {
            zzaneVar.zza(zzN, zzd, zze);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzb(zzacu zzacuVar, zzaoa zzaoaVar) {
        zzaoaVar.zzc();
        this.f4330b = zzaoaVar.zzb();
        zzadx zzw = zzacuVar.zzw(zzaoaVar.zza(), 2);
        this.h = zzw;
        this.f4335g = new mr(zzw);
        akj akjVar = this.f4334f;
        if (akjVar != null) {
            akjVar.aj(zzacuVar, zzaoaVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzc(boolean z) {
        zzdb.zzb(this.f4335g);
        if (z) {
            this.f4335g.j(0, this.j, this.l);
            mr mrVar = this.f4335g;
            mrVar.f19672f = false;
            mrVar.f19673g = false;
            mrVar.f19668b = false;
            mrVar.f19669c = -1;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzd(long j, int i) {
        this.f4331c = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zze() {
        zzfp.zzh(this.k);
        ezd ezdVar = this.f4332d;
        ezdVar.f16404d = false;
        ezdVar.f16406f = 0;
        ezdVar.f16405e = 0;
        mr mrVar = this.f4335g;
        if (mrVar != null) {
            mrVar.f19672f = false;
            mrVar.f19673g = false;
            mrVar.f19668b = false;
            mrVar.f19669c = -1;
        }
        zzane zzaneVar = this.f4333e;
        if (zzaneVar != null) {
            zzaneVar.zzb();
        }
        this.l = 0L;
        this.f4331c = -9223372036854775807L;
    }
}
