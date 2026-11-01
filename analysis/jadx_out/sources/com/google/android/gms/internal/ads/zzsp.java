package com.google.android.gms.internal.ads;

import android.media.MediaCodec;

/* loaded from: classes3.dex */
public class zzsp extends zzhk {
    public final String zza;
    public final int zzb;

    public zzsp(Throwable th, zzsq zzsqVar) {
        super("Decoder failed: ".concat(String.valueOf(zzsqVar == null ? null : zzsqVar.zza)), th);
        boolean z = th instanceof MediaCodec.CodecException;
        String diagnosticInfo = z ? ((MediaCodec.CodecException) th).getDiagnosticInfo() : null;
        this.zza = diagnosticInfo;
        this.zzb = zzen.zza >= 23 ? z ? ((MediaCodec.CodecException) th).getErrorCode() : 0 : zzen.zzm(diagnosticInfo);
    }
}
