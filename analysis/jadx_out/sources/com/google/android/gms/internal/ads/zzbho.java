package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes3.dex */
public abstract class zzbho extends zzayd implements zzbhp {
    public static zzbhp zzb(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener");
        return queryLocalInterface instanceof zzbhp ? (zzbhp) queryLocalInterface : new zzbhn("com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener", iBinder);
    }
}
