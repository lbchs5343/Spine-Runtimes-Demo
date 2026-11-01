package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.abu;
import g.awf;
import g.bwi;
import g.el;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzaey implements zzacr {

    /* renamed from: a, reason: collision with root package name */
    public boolean f4160a;

    /* renamed from: b, reason: collision with root package name */
    public int f4161b;

    /* renamed from: c, reason: collision with root package name */
    public abu f4162c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f4163d;

    /* renamed from: f, reason: collision with root package name */
    public int f4165f;

    /* renamed from: g, reason: collision with root package name */
    public final bwi f4166g;
    public zzacu i;
    public el j;
    public long k;
    public long l;
    public int n;
    public int p;
    public final zzed h = new zzed(4);
    public final zzed m = new zzed(9);
    public final zzed o = new zzed(11);

    /* renamed from: e, reason: collision with root package name */
    public final zzed f4164e = new zzed();

    public zzaey() {
        bwi bwiVar = new bwi(6, new zzacm());
        bwiVar.f12315a = -9223372036854775807L;
        bwiVar.f12316b = new long[0];
        bwiVar.f12317c = new long[0];
        this.f4166g = bwiVar;
        this.p = 1;
    }

    public final zzed q(zzacs zzacsVar) {
        int i = this.f4165f;
        zzed zzedVar = this.f4164e;
        if (i > zzedVar.zzc()) {
            int zzc = zzedVar.zzc();
            zzedVar.zzJ(new byte[Math.max(zzc + zzc, this.f4165f)], 0);
        } else {
            zzedVar.zzL(0);
        }
        zzedVar.zzK(this.f4165f);
        zzacsVar.zzi(zzedVar.zzN(), 0, this.f4165f);
        return zzedVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x038e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0009 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzacr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzb(zzacs zzacsVar, zzadn zzadnVar) throws IOException {
        long j;
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        int i2;
        zzdb.zzb(this.i);
        while (true) {
            int i3 = this.p;
            int i4 = 8;
            if (i3 == 1) {
                zzed zzedVar = this.m;
                if (!zzacsVar.zzn(zzedVar.zzN(), 0, 9, true)) {
                    return -1;
                }
                zzedVar.zzL(0);
                zzedVar.zzM(4);
                int zzm = zzedVar.zzm();
                int i5 = zzm & 4;
                int i6 = zzm & 1;
                if (i5 != 0 && this.f4162c == null) {
                    this.f4162c = new abu(6, this.i.zzw(8, 1));
                }
                if (i6 != 0 && this.j == null) {
                    this.j = new el(this.i.zzw(9, 2));
                }
                this.i.zzD();
                this.n = zzedVar.zzg() - 5;
                this.p = 2;
            } else if (i3 == 2) {
                zzacsVar.zzk(this.n);
                this.n = 0;
                this.p = 3;
            } else if (i3 == 3) {
                zzed zzedVar2 = this.o;
                if (!zzacsVar.zzn(zzedVar2.zzN(), 0, 11, true)) {
                    return -1;
                }
                zzedVar2.zzL(0);
                this.f4161b = zzedVar2.zzm();
                this.f4165f = zzedVar2.zzo();
                this.k = zzedVar2.zzo();
                this.k = (this.k | (zzedVar2.zzm() << 24)) * 1000;
                zzedVar2.zzM(3);
                this.p = 4;
            } else {
                if (i3 != 4) {
                    throw new IllegalStateException();
                }
                boolean z4 = this.f4160a;
                bwi bwiVar = this.f4166g;
                long j2 = z4 ? this.l + this.k : bwiVar.f12315a == -9223372036854775807L ? 0L : this.k;
                int i7 = this.f4161b;
                if (i7 != 8) {
                    i4 = i7;
                } else if (this.f4162c != null) {
                    if (!this.f4163d) {
                        this.i.zzO(new zzadp(-9223372036854775807L, 0L));
                        this.f4163d = true;
                    }
                    abu abuVar = this.f4162c;
                    zzed q = q(zzacsVar);
                    zzadx zzadxVar = (zzadx) abuVar.z;
                    if (abuVar.f9944b) {
                        q.zzM(1);
                    } else {
                        int zzm2 = q.zzm();
                        int i8 = zzm2 >> 4;
                        abuVar._ba = i8;
                        if (i8 == 2) {
                            int i9 = abu.f9943a[(zzm2 >> 2) & 3];
                            zzab zzabVar = new zzab();
                            zzabVar.zzZ("audio/mpeg");
                            zzabVar.zzz(1);
                            zzabVar.zzaa(i9);
                            zzadxVar.zzl(zzabVar.zzaf());
                            abuVar.f9945c = true;
                        } else if (i8 == 7 || i8 == 8) {
                            zzab zzabVar2 = new zzab();
                            zzabVar2.zzZ(i8 == 7 ? "audio/g711-alaw" : "audio/g711-mlaw");
                            zzabVar2.zzz(1);
                            zzabVar2.zzaa(AVMDLDataLoader.KeyIsLiveSetLoaderType);
                            zzadxVar.zzl(zzabVar2.zzaf());
                            abuVar.f9945c = true;
                        } else if (i8 != 10) {
                            throw new zzafa(awf.ac(i8, "Audio format not supported: "));
                        }
                        abuVar.f9944b = true;
                    }
                    zzadx zzadxVar2 = (zzadx) abuVar.z;
                    z2 = true;
                    if (abuVar._ba == 2) {
                        int zzb = q.zzb();
                        zzadxVar2.zzq(q, zzb);
                        ((zzadx) abuVar.z).zzs(j2, 1, zzb, 0, null);
                    } else {
                        int zzm3 = q.zzm();
                        if (zzm3 == 0 && !abuVar.f9945c) {
                            int zzb2 = q.zzb();
                            byte[] bArr = new byte[zzb2];
                            q.zzH(bArr, 0, zzb2);
                            zzabm zza = zzabo.zza(bArr);
                            zzab zzabVar3 = new zzab();
                            zzabVar3.zzZ("audio/mp4a-latm");
                            zzabVar3.zzA(zza.zzc);
                            zzabVar3.zzz(zza.zzb);
                            zzabVar3.zzaa(zza.zza);
                            zzabVar3.zzM(Collections.singletonList(bArr));
                            zzadxVar2.zzl(zzabVar3.zzaf());
                            abuVar.f9945c = true;
                        } else if (abuVar._ba != 10 || zzm3 == 1) {
                            int zzb3 = q.zzb();
                            zzadxVar2.zzq(q, zzb3);
                            ((zzadx) abuVar.z).zzs(j2, 1, zzb3, 0, null);
                        }
                        z2 = false;
                    }
                    j = -9223372036854775807L;
                    z = true;
                    i = 0;
                    z3 = true;
                    if (!this.f4160a && z2) {
                        this.f4160a = z;
                        this.l = bwiVar.f12315a != j ? -this.k : 0L;
                    }
                    this.n = 4;
                    this.p = 2;
                    if (!z3) {
                        return i;
                    }
                }
                if (i4 != 9) {
                    j = -9223372036854775807L;
                    i = 0;
                    if (i4 == 18 && !this.f4163d) {
                        zzed q2 = q(zzacsVar);
                        bwiVar.getClass();
                        bwiVar.getClass();
                        if (q2.zzm() == 2 && "onMetaData".equals(bwi.g(q2)) && q2.zzb() != 0 && q2.zzm() == 8) {
                            HashMap h = bwi.h(q2);
                            Object obj = h.get(MediationConstant.EXTRA_DURATION);
                            if (obj instanceof Double) {
                                double doubleValue = ((Double) obj).doubleValue();
                                if (doubleValue > 0.0d) {
                                    bwiVar.f12315a = (long) (doubleValue * 1000000.0d);
                                }
                            }
                            Object obj2 = h.get("keyframes");
                            if (obj2 instanceof Map) {
                                Map map = (Map) obj2;
                                Object obj3 = map.get("filepositions");
                                Object obj4 = map.get("times");
                                if ((obj3 instanceof List) && (obj4 instanceof List)) {
                                    List list = (List) obj3;
                                    List list2 = (List) obj4;
                                    int size = list2.size();
                                    bwiVar.f12316b = new long[size];
                                    bwiVar.f12317c = new long[size];
                                    for (int i10 = 0; i10 < size; i10++) {
                                        Object obj5 = list.get(i10);
                                        Object obj6 = list2.get(i10);
                                        if (!(obj6 instanceof Double) || !(obj5 instanceof Double)) {
                                            bwiVar.f12316b = new long[0];
                                            bwiVar.f12317c = new long[0];
                                            break;
                                        }
                                        bwiVar.f12316b[i10] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                                        bwiVar.f12317c[i10] = ((Double) obj5).longValue();
                                    }
                                }
                            }
                        }
                        long j3 = bwiVar.f12315a;
                        if (j3 != -9223372036854775807L) {
                            this.i.zzO(new zzadi(bwiVar.f12317c, bwiVar.f12316b, j3));
                            z = true;
                            this.f4163d = true;
                        } else {
                            z = true;
                        }
                        z2 = false;
                        z3 = true;
                    }
                    z = true;
                    zzacsVar.zzk(this.f4165f);
                    z2 = false;
                    z3 = false;
                } else if (this.j != null) {
                    if (!this.f4163d) {
                        this.i.zzO(new zzadp(-9223372036854775807L, 0L));
                        this.f4163d = true;
                    }
                    el elVar = this.j;
                    zzed q3 = q(zzacsVar);
                    elVar.getClass();
                    int zzm4 = q3.zzm();
                    int i11 = zzm4 >> 4;
                    int i12 = zzm4 & 15;
                    if (i12 != 7) {
                        throw new zzafa(awf.ac(i12, "Video format not supported: "));
                    }
                    elVar.f15733a = i11;
                    if (i11 != 5) {
                        zzed zzedVar3 = elVar.f15735c;
                        zzadx zzadxVar3 = (zzadx) elVar.z;
                        zzed zzedVar4 = elVar.f15736e;
                        int zzm5 = q3.zzm();
                        long zzh = q3.zzh();
                        boolean z5 = true;
                        j = -9223372036854775807L;
                        if (zzm5 == 0) {
                            if (!elVar.f15737g) {
                                zzed zzedVar5 = new zzed(new byte[q3.zzb()]);
                                q3.zzH(zzedVar5.zzN(), 0, q3.zzb());
                                zzabv zza2 = zzabv.zza(zzedVar5);
                                elVar._s = zza2.zzb;
                                zzab zzabVar4 = new zzab();
                                zzabVar4.zzZ("video/avc");
                                zzabVar4.zzA(zza2.zzl);
                                zzabVar4.zzae(zza2.zzc);
                                zzabVar4.zzJ(zza2.zzd);
                                zzabVar4.zzV(zza2.zzk);
                                zzabVar4.zzM(zza2.zza);
                                zzadxVar3.zzl(zzabVar4.zzaf());
                                elVar.f15737g = true;
                                z5 = false;
                                i = 0;
                                if (z5) {
                                    z2 = true;
                                    z = true;
                                    z3 = true;
                                }
                            }
                            i = 0;
                            z5 = false;
                            if (z5) {
                            }
                        } else {
                            if (zzm5 == 1 && elVar.f15737g) {
                                int i13 = elVar.f15733a == 1 ? 1 : 0;
                                if (elVar.f15734b) {
                                    i2 = i13;
                                } else if (i13 != 0) {
                                    i2 = 1;
                                }
                                byte[] zzN = zzedVar4.zzN();
                                zzN[0] = 0;
                                zzN[1] = 0;
                                zzN[2] = 0;
                                int i14 = 4 - elVar._s;
                                int i15 = 0;
                                while (q3.zzb() > 0) {
                                    q3.zzH(zzedVar4.zzN(), i14, elVar._s);
                                    zzedVar4.zzL(0);
                                    int zzp = zzedVar4.zzp();
                                    zzedVar3.zzL(0);
                                    zzadxVar3.zzq(zzedVar3, 4);
                                    zzadxVar3.zzq(q3, zzp);
                                    i15 = i15 + 4 + zzp;
                                }
                                i = 0;
                                ((zzadx) elVar.z).zzs((zzh * 1000) + j2, i2, i15, 0, null);
                                elVar.f15734b = true;
                                if (z5) {
                                }
                            }
                            i = 0;
                            z5 = false;
                            if (z5) {
                            }
                        }
                    } else {
                        j = -9223372036854775807L;
                        i = 0;
                    }
                    z2 = false;
                    z = true;
                    z3 = true;
                } else {
                    j = -9223372036854775807L;
                    i = 0;
                    z = true;
                    zzacsVar.zzk(this.f4165f);
                    z2 = false;
                    z3 = false;
                }
                if (!this.f4160a) {
                    this.f4160a = z;
                    this.l = bwiVar.f12315a != j ? -this.k : 0L;
                }
                this.n = 4;
                this.p = 2;
                if (!z3) {
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
        return zzfzo.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zze(zzacu zzacuVar) {
        this.i = zzacuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final void zzf(long j, long j2) {
        if (j == 0) {
            this.p = 1;
            this.f4160a = false;
        } else {
            this.p = 3;
        }
        this.n = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzacr
    public final boolean zzi(zzacs zzacsVar) throws IOException {
        zzed zzedVar = this.h;
        zzacg zzacgVar = (zzacg) zzacsVar;
        zzacgVar.zzm(zzedVar.zzN(), 0, 3, false);
        zzedVar.zzL(0);
        if (zzedVar.zzo() != 4607062) {
            return false;
        }
        zzacgVar.zzm(zzedVar.zzN(), 0, 2, false);
        zzedVar.zzL(0);
        if ((zzedVar.zzq() & MediaPlayer.MEDIA_PLAYER_OPTION_TT_HLS_DRM) != 0) {
            return false;
        }
        zzacgVar.zzm(zzedVar.zzN(), 0, 4, false);
        zzedVar.zzL(0);
        int zzg = zzedVar.zzg();
        zzacsVar.zzj();
        zzacg zzacgVar2 = (zzacg) zzacsVar;
        zzacgVar2.zzl(zzg, false);
        zzacgVar2.zzm(zzedVar.zzN(), 0, 4, false);
        zzedVar.zzL(0);
        return zzedVar.zzg() == 0;
    }
}
