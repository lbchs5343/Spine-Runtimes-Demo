package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes3.dex */
public class zzge extends IOException {
    public final int zza;

    public zzge(int i) {
        this.zza = i;
    }

    public zzge(String str, int i) {
        super(str);
        this.zza = i;
    }

    public zzge(String str, Throwable th, int i) {
        super(str, th);
        this.zza = i;
    }

    public zzge(Throwable th, int i) {
        super(th);
        this.zza = i;
    }
}
