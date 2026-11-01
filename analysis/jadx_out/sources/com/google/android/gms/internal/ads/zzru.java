package com.google.android.gms.internal.ads;

import android.os.HandlerThread;
import g.gop;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzru implements zzfxg {
    public final /* synthetic */ int zza;

    @Override // com.google.android.gms.internal.ads.zzfxg
    public final Object zza() {
        return new HandlerThread(gop.h(this.zza, "ExoPlayer:MediaCodecQueueingThread:"));
    }
}
