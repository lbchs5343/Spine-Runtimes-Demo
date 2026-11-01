package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes3.dex */
public final class zzda {

    /* renamed from: a, reason: collision with root package name */
    public static final String f5838a = Integer.toString(0, 36);
    public final String zza;

    public zzda(String str) {
        this.zza = str;
    }

    public final Bundle zza() {
        Bundle bundle = new Bundle();
        bundle.putString(f5838a, this.zza);
        return bundle;
    }
}
