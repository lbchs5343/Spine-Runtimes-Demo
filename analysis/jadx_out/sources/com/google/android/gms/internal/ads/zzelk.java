package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import g.agd;
import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class zzelk {

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f7209a = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    public final zzdqd f7210b;

    public zzelk(zzdqd zzdqdVar) {
        this.f7210b = zzdqdVar;
    }

    public final zzbrf zza(String str) {
        ConcurrentHashMap concurrentHashMap = this.f7209a;
        if (concurrentHashMap.containsKey(str)) {
            return (zzbrf) concurrentHashMap.get(str);
        }
        return null;
    }

    public final void zzb(String str) {
        try {
            this.f7209a.put(str, this.f7210b.zzb(str));
        } catch (RemoteException unused) {
            agd.h();
        }
    }
}
