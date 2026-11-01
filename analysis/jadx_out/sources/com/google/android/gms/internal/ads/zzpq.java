package com.google.android.gms.internal.ads;

import g.awf;

/* loaded from: classes3.dex */
public final class zzpq extends Exception {
    public final int zza;
    public final boolean zzb;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzpq(int i, int i2, int i3, int i4, zzad zzadVar, boolean z, Exception exc) {
        super(r5.toString(), exc);
        String valueOf = String.valueOf(zzadVar);
        StringBuilder z2 = awf.z(i, i2, "AudioTrack init failed ", " Config(", ", ");
        z2.append(i3);
        z2.append(", ");
        z2.append(i4);
        z2.append(") ");
        z2.append(valueOf);
        z2.append(true != z ? "" : " (recoverable)");
        this.zza = i;
        this.zzb = z;
    }
}
