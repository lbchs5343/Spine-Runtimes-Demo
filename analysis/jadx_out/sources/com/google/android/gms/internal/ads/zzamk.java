package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import j$.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class zzamk implements zzamm {

    /* renamed from: a, reason: collision with root package name */
    public int f4309a;

    /* renamed from: b, reason: collision with root package name */
    public zzad f4310b;

    /* renamed from: e, reason: collision with root package name */
    public final int f4313e;

    /* renamed from: f, reason: collision with root package name */
    public int f4314f;

    /* renamed from: g, reason: collision with root package name */
    public String f4315g;
    public final zzed h;
    public zzadx i;
    public int k;
    public int l;
    public long n;
    public final String o;
    public int p = 0;
    public long j = -9223372036854775807L;
    public final AtomicInteger m = new AtomicInteger();

    /* renamed from: d, reason: collision with root package name */
    public int f4312d = -1;

    /* renamed from: c, reason: collision with root package name */
    public int f4311c = -1;

    public zzamk(String str, int i, int i2) {
        this.h = new zzed(new byte[i2]);
        this.o = str;
        this.f4313e = i;
    }

    public final void q(zzaco zzacoVar) {
        int i;
        int i2 = zzacoVar.zzb;
        if (i2 == -2147483647 || (i = zzacoVar.zzc) == -1) {
            return;
        }
        zzad zzadVar = this.f4310b;
        if (zzadVar != null && i == zzadVar.zzC && i2 == zzadVar.zzD && Objects.equals(zzacoVar.zza, zzadVar.zzo)) {
            return;
        }
        zzad zzadVar2 = this.f4310b;
        zzab zzabVar = zzadVar2 == null ? new zzab() : zzadVar2.zzb();
        zzabVar.zzL(this.f4315g);
        zzabVar.zzZ(zzacoVar.zza);
        zzabVar.zzz(zzacoVar.zzc);
        zzabVar.zzaa(zzacoVar.zzb);
        zzabVar.zzP(this.o);
        zzabVar.zzX(this.f4313e);
        zzad zzaf = zzabVar.zzaf();
        this.f4310b = zzaf;
        this.i.zzl(zzaf);
    }

    public final boolean r(zzed zzedVar, byte[] bArr, int i) {
        int min = Math.min(zzedVar.zzb(), i - this.f4309a);
        zzedVar.zzH(bArr, this.f4309a, min);
        int i2 = this.f4309a + min;
        this.f4309a = i2;
        return i2 == i;
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01e1  */
    @Override // com.google.android.gms.internal.ads.zzamm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(zzed zzedVar) throws zzbh {
        char c2;
        char c3;
        char c4;
        int i;
        boolean z;
        int i2;
        int i3;
        byte b2;
        int i4;
        byte b3;
        int i5;
        int i6;
        byte b4;
        zzdb.zzb(this.i);
        while (zzedVar.zzb() > 0) {
            int i7 = this.p;
            zzed zzedVar2 = this.h;
            if (i7 == 0) {
                while (true) {
                    if (zzedVar.zzb() > 0) {
                        int i8 = this.l << 8;
                        this.l = i8;
                        int zzm = i8 | zzedVar.zzm();
                        this.l = zzm;
                        int i9 = (zzm == 2147385345 || zzm == -25230976 || zzm == 536864768 || zzm == -14745368) ? 1 : (zzm == 1683496997 || zzm == 622876772) ? 2 : (zzm == 1078008818 || zzm == -233094848) ? 3 : (zzm == 1908687592 || zzm == -398277519) ? 4 : 0;
                        this.k = i9;
                        if (i9 != 0) {
                            byte[] zzN = zzedVar2.zzN();
                            int i10 = this.l;
                            zzN[0] = (byte) ((i10 >> 24) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                            zzN[1] = (byte) ((i10 >> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                            zzN[2] = (byte) ((i10 >> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                            zzN[3] = (byte) (i10 & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                            this.f4309a = 4;
                            this.l = 0;
                            if (i9 == 3 || i9 == 4) {
                                this.p = 4;
                            } else if (i9 == 1) {
                                this.p = 1;
                            } else {
                                this.p = 2;
                            }
                        }
                    }
                }
            } else if (i7 != 1) {
                if (i7 != 2) {
                    if (i7 != 3) {
                        if (i7 != 4) {
                            if (i7 != 5) {
                                int min = Math.min(zzedVar.zzb(), this.f4314f - this.f4309a);
                                this.i.zzq(zzedVar, min);
                                int i11 = this.f4309a + min;
                                this.f4309a = i11;
                                if (i11 == this.f4314f) {
                                    zzdb.zzf(this.j != -9223372036854775807L);
                                    this.i.zzs(this.j, this.k == 4 ? 0 : 1, this.f4314f, 0, null);
                                    this.j += this.n;
                                    this.p = 0;
                                }
                            } else if (r(zzedVar, zzedVar2.zzN(), this.f4311c)) {
                                zzaco zze = zzacq.zze(zzedVar2.zzN(), this.m);
                                if (this.k == 3) {
                                    q(zze);
                                }
                                this.f4314f = zze.zzd;
                                long j = zze.zze;
                                this.n = j != -9223372036854775807L ? j : 0L;
                                zzedVar2.zzL(0);
                                this.i.zzq(zzedVar2, this.f4311c);
                                this.p = 6;
                            }
                        } else if (r(zzedVar, zzedVar2.zzN(), 6)) {
                            int zzb = zzacq.zzb(zzedVar2.zzN());
                            this.f4311c = zzb;
                            int i12 = this.f4309a;
                            if (i12 > zzb) {
                                int i13 = i12 - zzb;
                                this.f4309a = i12 - i13;
                                zzedVar.zzL(zzedVar.zzd() - i13);
                            }
                            this.p = 5;
                        }
                    } else if (r(zzedVar, zzedVar2.zzN(), this.f4312d)) {
                        zzaco zzd = zzacq.zzd(zzedVar2.zzN());
                        q(zzd);
                        this.f4314f = zzd.zzd;
                        long j2 = zzd.zze;
                        this.n = j2 != -9223372036854775807L ? j2 : 0L;
                        zzedVar2.zzL(0);
                        this.i.zzq(zzedVar2, this.f4312d);
                        this.p = 6;
                    }
                } else if (r(zzedVar, zzedVar2.zzN(), 7)) {
                    this.f4312d = zzacq.zza(zzedVar2.zzN());
                    this.p = 3;
                }
            } else if (r(zzedVar, zzedVar2.zzN(), 18)) {
                byte[] zzN2 = zzedVar2.zzN();
                if (this.f4310b == null) {
                    c2 = '\b';
                    c3 = 5;
                    zzad zzc = zzacq.zzc(zzN2, this.f4315g, this.o, this.f4313e, null);
                    this.f4310b = zzc;
                    this.i.zzl(zzc);
                } else {
                    c2 = '\b';
                    c3 = 5;
                }
                byte b5 = zzN2[0];
                if (b5 != -2) {
                    if (b5 == -1) {
                        c4 = 7;
                        i5 = (3 & zzN2[7]) << 12;
                        i6 = (zzN2[6] & 255) << 4;
                        b4 = zzN2[9];
                    } else if (b5 != 31) {
                        c4 = 7;
                        i = ((zzN2[c3] & 3) << 12) | ((zzN2[6] & 255) << 4) | ((zzN2[7] & 240) >> 4);
                    } else {
                        c4 = 7;
                        i5 = (3 & zzN2[6]) << 12;
                        i6 = (zzN2[7] & 255) << 4;
                        b4 = zzN2[c2];
                    }
                    i2 = (i5 | i6 | ((b4 & 60) >> 2)) + 1;
                    z = true;
                    if (z) {
                        i2 = (i2 * 16) / 14;
                    }
                    this.f4314f = i2;
                    if (b5 == -2) {
                        if (b5 == -1) {
                            i3 = (zzN2[4] & 7) << 4;
                            b3 = zzN2[c4];
                        } else if (b5 != 31) {
                            i3 = (zzN2[4] & 1) << 6;
                            b2 = zzN2[c3];
                        } else {
                            i3 = (zzN2[c3] & 7) << 4;
                            b3 = zzN2[6];
                        }
                        i4 = b3 & 60;
                        this.n = zzgcr.zzb(zzen.zzt((((i4 >> 2) | i3) + 1) * 32, this.f4310b.zzD));
                        zzedVar2.zzL(0);
                        this.i.zzq(zzedVar2, 18);
                        this.p = 6;
                    } else {
                        i3 = (zzN2[c3] & 1) << 6;
                        b2 = zzN2[4];
                    }
                    i4 = b2 & 252;
                    this.n = zzgcr.zzb(zzen.zzt((((i4 >> 2) | i3) + 1) * 32, this.f4310b.zzD));
                    zzedVar2.zzL(0);
                    this.i.zzq(zzedVar2, 18);
                    this.p = 6;
                } else {
                    c4 = 7;
                    i = ((3 & zzN2[4]) << 12) | ((zzN2[7] & 255) << 4) | ((zzN2[6] & 240) >> 4);
                }
                i2 = i + 1;
                z = false;
                if (z) {
                }
                this.f4314f = i2;
                if (b5 == -2) {
                }
                i4 = b2 & 252;
                this.n = zzgcr.zzb(zzen.zzt((((i4 >> 2) | i3) + 1) * 32, this.f4310b.zzD));
                zzedVar2.zzL(0);
                this.i.zzq(zzedVar2, 18);
                this.p = 6;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzb(zzacu zzacuVar, zzaoa zzaoaVar) {
        zzaoaVar.zzc();
        this.f4315g = zzaoaVar.zzb();
        this.i = zzacuVar.zzw(zzaoaVar.zza(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzc(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzd(long j, int i) {
        this.j = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zze() {
        this.p = 0;
        this.f4309a = 0;
        this.l = 0;
        this.j = -9223372036854775807L;
        this.m.set(0);
    }
}
