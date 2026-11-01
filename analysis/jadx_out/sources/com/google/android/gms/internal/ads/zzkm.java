package com.google.android.gms.internal.ads;

import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final class zzkm {

    /* renamed from: a, reason: collision with root package name */
    public long f8781a = -9223372036854775807L;

    /* renamed from: b, reason: collision with root package name */
    public float f8782b = -3.4028235E38f;

    /* renamed from: c, reason: collision with root package name */
    public long f8783c = -9223372036854775807L;

    public final zzkm zzd(long j) {
        boolean z = true;
        if (j < 0) {
            if (j == -9223372036854775807L) {
                j = -9223372036854775807L;
            } else {
                z = false;
            }
        }
        zzdb.zzd(z);
        this.f8783c = j;
        return this;
    }

    public final zzkm zze(long j) {
        this.f8781a = j;
        return this;
    }

    public final zzkm zzf(float f2) {
        boolean z = true;
        if (f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && f2 != -3.4028235E38f) {
            z = false;
        }
        zzdb.zzd(z);
        this.f8782b = f2;
        return this;
    }

    public final zzko zzg() {
        return new zzko(this);
    }
}
