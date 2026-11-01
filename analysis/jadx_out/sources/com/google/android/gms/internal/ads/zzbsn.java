package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import g.agd;
import g.bpp;
import g.dgy;

/* loaded from: classes3.dex */
public final class zzbsn implements dgy {

    /* renamed from: a, reason: collision with root package name */
    public final zzbgs f4975a;

    public zzbsn(zzbgs zzbgsVar) {
        this.f4975a = zzbgsVar;
        try {
            zzbgsVar.zzm();
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
    }

    public final void setView(View view) {
        try {
            this.f4975a.zzp(new bpp(view));
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
    }

    public final boolean start() {
        try {
            return this.f4975a.zzt();
        } catch (RemoteException e2) {
            agd.f("", e2);
            return false;
        }
    }
}
