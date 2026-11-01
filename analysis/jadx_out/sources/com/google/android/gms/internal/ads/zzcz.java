package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes3.dex */
public final class zzcz {

    /* renamed from: a, reason: collision with root package name */
    public static final String f5827a = Integer.toString(0, 36);

    /* renamed from: b, reason: collision with root package name */
    public static final String f5828b = Integer.toString(1, 36);

    /* renamed from: c, reason: collision with root package name */
    public static final String f5829c = Integer.toString(2, 36);
    public final int zza;
    public final int zzb;
    public final int zzc;

    public zzcz(int i, int i2, int i3) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
    }

    public final Bundle zza() {
        Bundle bundle = new Bundle();
        bundle.putInt(f5827a, this.zza);
        bundle.putInt(f5828b, this.zzb);
        bundle.putInt(f5829c, this.zzc);
        return bundle;
    }
}
