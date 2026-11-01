package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes3.dex */
public class zzgzm extends IOException {
    private boolean zza;

    public zzgzm(IOException iOException) {
        super(iOException.getMessage(), iOException);
    }

    public zzgzm(String str) {
        super(str);
    }

    public final void a() {
        this.zza = true;
    }

    public final boolean b() {
        return this.zza;
    }
}
