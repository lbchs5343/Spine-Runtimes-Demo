package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import g.eab;
import g.pf;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public final class zzhgr extends pf {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f8746a;

    public zzhgr(zzbdo zzbdoVar) {
        this.f8746a = new WeakReference(zzbdoVar);
    }

    @Override // g.pf
    public final void onCustomTabsServiceConnected(ComponentName componentName, eab eabVar) {
        zzbdo zzbdoVar = (zzbdo) this.f8746a.get();
        if (zzbdoVar != null) {
            zzbdoVar.zzc(eabVar);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzbdo zzbdoVar = (zzbdo) this.f8746a.get();
        if (zzbdoVar != null) {
            zzbdoVar.zzd();
        }
    }
}
