package com.google.android.gms.internal.ads;

import g.awf;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class zzhx {
    public int zza;
    public int zzb;
    public int zzc;
    public int zzd;
    public int zze;
    public int zzf;
    public int zzg;
    public int zzh;
    public int zzi;
    public int zzj;
    public long zzk;
    public int zzl;

    public final String toString() {
        int i = this.zza;
        int i2 = this.zzb;
        int i3 = this.zzc;
        int i4 = this.zzd;
        int i5 = this.zze;
        int i6 = this.zzf;
        int i7 = this.zzg;
        int i8 = this.zzh;
        int i9 = this.zzi;
        int i10 = this.zzj;
        long j = this.zzk;
        int i11 = this.zzl;
        Locale locale = Locale.US;
        StringBuilder z = awf.z(i, i2, "DecoderCounters {\n decoderInits=", ",\n decoderReleases=", "\n queuedInputBuffers=");
        z.append(i3);
        z.append("\n skippedInputBuffers=");
        z.append(i4);
        z.append("\n renderedOutputBuffers=");
        z.append(i5);
        z.append("\n skippedOutputBuffers=");
        z.append(i6);
        z.append("\n droppedBuffers=");
        z.append(i7);
        z.append("\n droppedInputBuffers=");
        z.append(i8);
        z.append("\n maxConsecutiveDroppedBuffers=");
        z.append(i9);
        z.append("\n droppedToKeyframeEvents=");
        z.append(i10);
        z.append("\n totalVideoFrameProcessingOffsetUs=");
        z.append(j);
        z.append("\n videoFrameProcessingOffsetCount=");
        z.append(i11);
        z.append("\n}");
        return z.toString();
    }

    public final synchronized void zza() {
    }
}
