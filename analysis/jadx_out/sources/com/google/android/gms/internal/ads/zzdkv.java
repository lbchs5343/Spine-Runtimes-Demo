package com.google.android.gms.internal.ads;

import g.tl;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzdkv implements Runnable {
    public final /* synthetic */ zzcfk zza;

    public /* synthetic */ zzdkv(zzcfk zzcfkVar) {
        this.zza = zzcfkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzd("onSdkImpression", new tl(0));
    }
}
