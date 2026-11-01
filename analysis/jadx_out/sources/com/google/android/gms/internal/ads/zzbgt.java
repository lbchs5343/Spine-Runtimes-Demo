package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import g.agd;
import g.bpp;
import g.drw;

/* loaded from: classes3.dex */
public final class zzbgt {

    /* renamed from: a, reason: collision with root package name */
    public final zzbgs f4819a;

    public zzbgt(zzbgs zzbgsVar) {
        Context context;
        this.f4819a = zzbgsVar;
        try {
            context = (Context) bpp.b(zzbgsVar.zzh());
        } catch (RemoteException | NullPointerException e2) {
            agd.f("", e2);
            context = null;
        }
        if (context != null) {
            try {
                this.f4819a.zzs(new bpp(new drw(context)));
            } catch (RemoteException e3) {
                agd.f("", e3);
            }
        }
    }

    public final zzbgs zza() {
        return this.f4819a;
    }

    public final String zzb() {
        try {
            return this.f4819a.zzi();
        } catch (RemoteException e2) {
            agd.f("", e2);
            return null;
        }
    }
}
