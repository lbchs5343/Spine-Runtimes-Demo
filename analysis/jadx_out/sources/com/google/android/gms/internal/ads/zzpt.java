package com.google.android.gms.internal.ads;

import g.awf;

/* loaded from: classes3.dex */
public final class zzpt extends Exception {
    public final int zza;
    public final boolean zzb;
    public final zzad zzc;

    public zzpt(int i, zzad zzadVar, boolean z) {
        super(awf.ac(i, "AudioTrack write failed: "));
        this.zzb = z;
        this.zza = i;
        this.zzc = zzadVar;
    }
}
