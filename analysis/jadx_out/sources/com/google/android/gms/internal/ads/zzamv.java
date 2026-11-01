package com.google.android.gms.internal.ads;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.cqm;
import java.util.Collections;

/* loaded from: classes3.dex */
public final class zzamv implements zzamm {

    /* renamed from: d, reason: collision with root package name */
    public cqm f4346d;

    /* renamed from: e, reason: collision with root package name */
    public long f4347e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f4348f;

    /* renamed from: g, reason: collision with root package name */
    public final zzanq f4349g;
    public String k;
    public zzadx m;
    public final boolean[] h = new boolean[3];
    public final zzane n = new zzane(32, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);

    /* renamed from: a, reason: collision with root package name */
    public final zzane f4343a = new zzane(33, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
    public final zzane j = new zzane(34, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
    public final zzane l = new zzane(39, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);

    /* renamed from: b, reason: collision with root package name */
    public final zzane f4344b = new zzane(40, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
    public long i = -9223372036854775807L;

    /* renamed from: c, reason: collision with root package name */
    public final zzed f4345c = new zzed();

    public zzamv(zzanq zzanqVar) {
        this.f4349g = zzanqVar;
    }

    public final void o(int i, byte[] bArr, int i2) {
        cqm cqmVar = this.f4346d;
        if (cqmVar.f13342g) {
            int i3 = cqmVar.f13338c;
            int i4 = (i + 2) - i3;
            if (i4 < i2) {
                cqmVar.m = (bArr[i4] & 128) != 0;
                cqmVar.f13342g = false;
            } else {
                cqmVar.f13338c = (i2 - i) + i3;
            }
        }
        if (!this.f4348f) {
            this.n.zza(bArr, i, i2);
            this.f4343a.zza(bArr, i, i2);
            this.j.zza(bArr, i, i2);
        }
        this.l.zza(bArr, i, i2);
        this.f4344b.zza(bArr, i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0228  */
    @Override // com.google.android.gms.internal.ads.zzamm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(zzed zzedVar) {
        int i;
        int i2;
        byte[] bArr;
        int i3;
        boolean zzd;
        zzane zzaneVar;
        int i4;
        boolean z;
        boolean z2;
        zzdb.zzb(this.m);
        int i5 = zzen.zza;
        while (zzedVar.zzb() > 0) {
            int zzd2 = zzedVar.zzd();
            int zze = zzedVar.zze();
            byte[] zzN = zzedVar.zzN();
            this.f4347e += zzedVar.zzb();
            this.m.zzq(zzedVar, zzedVar.zzb());
            while (zzd2 < zze) {
                int zza = zzfp.zza(zzN, zzd2, zze, this.h);
                if (zza == zze) {
                    o(zzd2, zzN, zze);
                    return;
                }
                int i6 = zza + 3;
                int i7 = zzN[i6] & 126;
                int i8 = zza - zzd2;
                if (i8 > 0) {
                    o(zzd2, zzN, zza);
                }
                int i9 = zze - zza;
                long j = this.f4347e - i9;
                int i10 = i8 < 0 ? -i8 : 0;
                long j2 = this.i;
                cqm cqmVar = this.f4346d;
                boolean z3 = this.f4348f;
                if (cqmVar.k && cqmVar.m) {
                    cqmVar.h = cqmVar.l;
                    cqmVar.k = false;
                } else if (cqmVar.f13336a || cqmVar.m) {
                    if (z3 && cqmVar.i) {
                        cqmVar.n(((int) (j - cqmVar.j)) + i9);
                    }
                    cqmVar.f13337b = cqmVar.j;
                    cqmVar.f13339d = cqmVar.f13340e;
                    cqmVar.h = cqmVar.l;
                    cqmVar.i = true;
                }
                boolean z4 = this.f4348f;
                zzanq zzanqVar = this.f4349g;
                zzane zzaneVar2 = this.j;
                zzane zzaneVar3 = this.f4343a;
                zzane zzaneVar4 = this.n;
                if (!z4) {
                    zzaneVar4.zzd(i10);
                    zzaneVar3.zzd(i10);
                    zzaneVar2.zzd(i10);
                    if (zzaneVar4.zze() && zzaneVar3.zze() && zzaneVar2.zze()) {
                        String str = this.k;
                        int i11 = zzaneVar4.zzb;
                        i3 = i7;
                        byte[] bArr2 = new byte[zzaneVar3.zzb + i11 + zzaneVar2.zzb];
                        i2 = zze;
                        bArr = zzN;
                        System.arraycopy(zzaneVar4.zza, 0, bArr2, 0, i11);
                        i = i9;
                        System.arraycopy(zzaneVar3.zza, 0, bArr2, zzaneVar4.zzb, zzaneVar3.zzb);
                        System.arraycopy(zzaneVar2.zza, 0, bArr2, zzaneVar4.zzb + zzaneVar3.zzb, zzaneVar2.zzb);
                        String str2 = null;
                        zzfj zzc = zzfp.zzc(zzaneVar3.zza, 3, zzaneVar3.zzb, null);
                        zzfe zzfeVar = zzc.zza;
                        if (zzfeVar != null) {
                            int i12 = zzfeVar.zzf;
                            int[] iArr = zzfeVar.zze;
                            str2 = zzdd.zzd(zzfeVar.zza, zzfeVar.zzb, zzfeVar.zzc, zzfeVar.zzd, iArr, i12);
                        }
                        zzab zzabVar = new zzab();
                        zzabVar.zzL(str);
                        zzabVar.zzZ("video/hevc");
                        zzabVar.zzA(str2);
                        zzabVar.zzae(zzc.zzd);
                        zzabVar.zzJ(zzc.zze);
                        zzk zzkVar = new zzk();
                        zzkVar.zzc(zzc.zzh);
                        zzkVar.zzb(zzc.zzi);
                        zzkVar.zzd(zzc.zzj);
                        zzkVar.zzf(zzc.zzb + 8);
                        zzkVar.zza(zzc.zzc + 8);
                        zzabVar.zzB(zzkVar.zzg());
                        zzabVar.zzV(zzc.zzf);
                        zzabVar.zzR(zzc.zzg);
                        zzabVar.zzM(Collections.singletonList(bArr2));
                        zzad zzaf = zzabVar.zzaf();
                        this.m.zzl(zzaf);
                        zzfwq.zzk(zzaf.zzq != -1);
                        zzanqVar.zze(zzaf.zzq);
                        this.f4348f = true;
                        zzane zzaneVar5 = this.l;
                        zzd = zzaneVar5.zzd(i10);
                        zzed zzedVar2 = this.f4345c;
                        if (zzd) {
                            zzedVar2.zzJ(zzaneVar5.zza, zzfp.zzb(zzaneVar5.zza, zzaneVar5.zzb));
                            zzedVar2.zzM(5);
                            zzanqVar.zza(j2, zzedVar2);
                        }
                        zzaneVar = this.f4344b;
                        if (zzaneVar.zzd(i10)) {
                            zzedVar2.zzJ(zzaneVar.zza, zzfp.zzb(zzaneVar.zza, zzaneVar.zzb));
                            zzedVar2.zzM(5);
                            zzanqVar.zza(j2, zzedVar2);
                        }
                        i4 = i3 >> 1;
                        long j3 = this.i;
                        cqm cqmVar2 = this.f4346d;
                        boolean z5 = this.f4348f;
                        cqmVar2.m = false;
                        cqmVar2.f13336a = false;
                        cqmVar2.f13340e = j3;
                        cqmVar2.f13338c = 0;
                        cqmVar2.j = j;
                        if (i4 >= 32 || i4 == 40) {
                            z = true;
                        } else {
                            if (cqmVar2.i && !cqmVar2.k) {
                                if (z5) {
                                    cqmVar2.n(i);
                                }
                                cqmVar2.i = false;
                            }
                            if (i4 <= 35 || i4 == 39) {
                                z = true;
                                cqmVar2.f13336a = !cqmVar2.k;
                                cqmVar2.k = true;
                            } else {
                                z = true;
                            }
                        }
                        z2 = i4 < 16 && i4 <= 21;
                        cqmVar2.l = z2;
                        if (!z2 && i4 > 9) {
                            z = false;
                        }
                        cqmVar2.f13342g = z;
                        if (!this.f4348f) {
                            zzaneVar4.zzc(i4);
                            zzaneVar3.zzc(i4);
                            zzaneVar2.zzc(i4);
                        }
                        zzaneVar5.zzc(i4);
                        zzaneVar.zzc(i4);
                        zzd2 = i6;
                        zze = i2;
                        zzN = bArr;
                    }
                }
                i = i9;
                i2 = zze;
                bArr = zzN;
                i3 = i7;
                zzane zzaneVar52 = this.l;
                zzd = zzaneVar52.zzd(i10);
                zzed zzedVar22 = this.f4345c;
                if (zzd) {
                }
                zzaneVar = this.f4344b;
                if (zzaneVar.zzd(i10)) {
                }
                i4 = i3 >> 1;
                long j32 = this.i;
                cqm cqmVar22 = this.f4346d;
                boolean z52 = this.f4348f;
                cqmVar22.m = false;
                cqmVar22.f13336a = false;
                cqmVar22.f13340e = j32;
                cqmVar22.f13338c = 0;
                cqmVar22.j = j;
                if (i4 >= 32) {
                }
                z = true;
                if (i4 < 16) {
                }
                cqmVar22.l = z2;
                if (!z2) {
                    z = false;
                }
                cqmVar22.f13342g = z;
                if (!this.f4348f) {
                }
                zzaneVar52.zzc(i4);
                zzaneVar.zzc(i4);
                zzd2 = i6;
                zze = i2;
                zzN = bArr;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzb(zzacu zzacuVar, zzaoa zzaoaVar) {
        zzaoaVar.zzc();
        this.k = zzaoaVar.zzb();
        zzadx zzw = zzacuVar.zzw(zzaoaVar.zza(), 2);
        this.m = zzw;
        this.f4346d = new cqm(zzw);
        this.f4349g.zzb(zzacuVar, zzaoaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzc(boolean z) {
        zzdb.zzb(this.m);
        int i = zzen.zza;
        if (z) {
            this.f4349g.zzc();
            cqm cqmVar = this.f4346d;
            long j = this.f4347e;
            cqmVar.h = cqmVar.l;
            cqmVar.n((int) (j - cqmVar.j));
            cqmVar.f13337b = cqmVar.j;
            cqmVar.j = j;
            cqmVar.n(0);
            cqmVar.i = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzd(long j, int i) {
        this.i = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zze() {
        this.f4347e = 0L;
        this.i = -9223372036854775807L;
        zzfp.zzh(this.h);
        this.n.zzb();
        this.f4343a.zzb();
        this.j.zzb();
        this.l.zzb();
        this.f4344b.zzb();
        this.f4349g.zzc();
        cqm cqmVar = this.f4346d;
        if (cqmVar != null) {
            cqmVar.f13342g = false;
            cqmVar.m = false;
            cqmVar.f13336a = false;
            cqmVar.i = false;
            cqmVar.k = false;
        }
    }
}
