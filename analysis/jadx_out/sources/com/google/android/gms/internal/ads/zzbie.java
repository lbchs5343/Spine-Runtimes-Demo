package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import g.agd;
import g.anb;
import g.aph;
import g.bjq;
import g.bpp;
import g.ckd;
import g.deq;
import g.efr;
import g.fnu;
import g.mx;

/* loaded from: classes3.dex */
public final class zzbie extends zzbhi {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f4828a = 0;

    public zzbie(anb anbVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhj
    public final void zze(deq deqVar, bjq bjqVar) {
        if (deqVar == null || bjqVar == null) {
            return;
        }
        Context context = (Context) bpp.b(bjqVar);
        aph aphVar = new aph(context);
        ckd.w(context, "Context cannot be null");
        try {
            if (deqVar.zzi() instanceof fnu) {
                fnu fnuVar = (fnu) deqVar.zzi();
                aphVar.setAdListener(fnuVar != null ? fnuVar.f17107a : null);
            }
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
        try {
            if (deqVar.zzj() instanceof zzaza) {
                zzaza zzazaVar = (zzaza) deqVar.zzj();
                aphVar.setAppEventListener(zzazaVar != null ? zzazaVar.zzb() : null);
            }
        } catch (RemoteException e3) {
            agd.f("", e3);
        }
        mx.f19684e.post(new efr(this, aphVar, deqVar));
    }
}
