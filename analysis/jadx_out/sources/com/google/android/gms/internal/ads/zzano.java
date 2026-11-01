package com.google.android.gms.internal.ads;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;

/* loaded from: classes3.dex */
public final class zzano implements zzaob {

    /* renamed from: a, reason: collision with root package name */
    public int f4397a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f4398b;

    /* renamed from: c, reason: collision with root package name */
    public final zzann f4399c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f4400d;

    /* renamed from: e, reason: collision with root package name */
    public final zzed f4401e = new zzed(32);

    /* renamed from: f, reason: collision with root package name */
    public int f4402f;

    public zzano(zzann zzannVar) {
        this.f4399c = zzannVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final void zza(zzed zzedVar, int i) {
        int i2 = i & 1;
        int zzd = i2 != 0 ? zzedVar.zzd() + zzedVar.zzm() : -1;
        if (this.f4400d) {
            if (i2 == 0) {
                return;
            }
            this.f4400d = false;
            zzedVar.zzL(zzd);
            this.f4397a = 0;
        }
        while (zzedVar.zzb() > 0) {
            int i3 = this.f4397a;
            zzed zzedVar2 = this.f4401e;
            if (i3 < 3) {
                if (i3 == 0) {
                    int zzm = zzedVar.zzm();
                    zzedVar.zzL(zzedVar.zzd() - 1);
                    if (zzm == 255) {
                        this.f4400d = true;
                        return;
                    }
                }
                int min = Math.min(zzedVar.zzb(), 3 - this.f4397a);
                zzedVar.zzH(zzedVar2.zzN(), this.f4397a, min);
                int i4 = this.f4397a + min;
                this.f4397a = i4;
                if (i4 == 3) {
                    zzedVar2.zzL(0);
                    zzedVar2.zzK(3);
                    zzedVar2.zzM(1);
                    int zzm2 = zzedVar2.zzm();
                    boolean z = (zzm2 & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0;
                    int zzm3 = zzedVar2.zzm();
                    this.f4398b = z;
                    this.f4402f = (((zzm2 & 15) << 8) | zzm3) + 3;
                    int zzc = zzedVar2.zzc();
                    int i5 = this.f4402f;
                    if (zzc < i5) {
                        int zzc2 = zzedVar2.zzc();
                        zzedVar2.zzF(Math.min(4098, Math.max(i5, zzc2 + zzc2)));
                    }
                }
            } else {
                int min2 = Math.min(zzedVar.zzb(), this.f4402f - i3);
                zzedVar.zzH(zzedVar2.zzN(), this.f4397a, min2);
                int i6 = this.f4397a + min2;
                this.f4397a = i6;
                int i7 = this.f4402f;
                if (i6 != i7) {
                    continue;
                } else {
                    if (!this.f4398b) {
                        zzedVar2.zzK(i7);
                    } else {
                        if (zzen.zzf(zzedVar2.zzN(), 0, i7, -1) != 0) {
                            this.f4400d = true;
                            return;
                        }
                        zzedVar2.zzK(this.f4402f - 4);
                    }
                    zzedVar2.zzL(0);
                    this.f4399c.zza(zzedVar2);
                    this.f4397a = 0;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final void zzb(zzek zzekVar, zzacu zzacuVar, zzaoa zzaoaVar) {
        this.f4399c.zzb(zzekVar, zzacuVar, zzaoaVar);
        this.f4400d = true;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final void zzc() {
        this.f4400d = true;
    }
}
