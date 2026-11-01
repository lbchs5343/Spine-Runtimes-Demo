package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes3.dex */
public final class zzcx {

    /* renamed from: a, reason: collision with root package name */
    public static final String f5807a = Integer.toString(0, 36);

    /* renamed from: b, reason: collision with root package name */
    public static final String f5808b = Integer.toString(1, 36);
    public final String zza;
    public final int zzb;

    public zzcx(String str, int i) {
        this.zza = str;
        this.zzb = i;
    }

    public final Bundle zza() {
        Bundle bundle = new Bundle();
        bundle.putString(f5807a, this.zza);
        bundle.putInt(f5808b, this.zzb);
        return bundle;
    }
}
