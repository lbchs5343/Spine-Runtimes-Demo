package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzfrm extends Exception {
    private final int zza;

    public zzfrm(int i, String str) {
        super(str);
        this.zza = i;
    }

    public zzfrm(int i, Throwable th) {
        super(th);
        this.zza = i;
    }

    public final int zza() {
        return this.zza;
    }
}
