package com.google.android.gms.internal.ads;

import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import g.etz;

/* loaded from: classes3.dex */
public final class zzblb extends etz {
    @Override // g.adw
    public final String a() {
        return "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService";
    }

    @Override // g.adw
    public final String b() {
        return "com.google.android.gms.ads.service.HTTP";
    }

    @Override // g.adw
    public final IInterface c(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
        return queryLocalInterface instanceof zzbli ? (zzbli) queryLocalInterface : new zzbli("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService", iBinder);
    }

    public final zzbli zzp() throws DeadObjectException {
        return (zzbli) getService();
    }
}
