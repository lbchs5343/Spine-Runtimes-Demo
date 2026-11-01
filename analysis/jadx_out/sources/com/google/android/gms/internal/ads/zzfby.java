package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import g.agd;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class zzfby {
    public static void zza(AtomicReference atomicReference, zzfbx zzfbxVar) {
        Object obj = atomicReference.get();
        if (obj == null) {
            return;
        }
        try {
            zzfbxVar.zza(obj);
        } catch (RemoteException e2) {
            agd.g("#007 Could not call remote method.", e2);
        } catch (NullPointerException unused) {
            zzfxd zzfxdVar = agd.f10175a;
        }
    }
}
