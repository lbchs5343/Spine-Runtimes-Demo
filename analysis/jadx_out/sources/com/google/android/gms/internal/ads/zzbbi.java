package com.google.android.gms.internal.ads;

import android.content.Context;
import g.aal;
import g.clx;
import g.cok;
import g.ti;
import java.util.concurrent.Future;

/* loaded from: classes3.dex */
public final class zzbbi {
    public static final Future zza(Context context, zzbax zzbaxVar) {
        zzbbh zzbbhVar = new zzbbh(context);
        cok cokVar = new cok(zzbbhVar);
        aal aalVar = new aal(zzbbhVar, zzbaxVar, cokVar);
        clx clxVar = new clx(zzbbhVar, 14, cokVar);
        synchronized (zzbbhVar.f4685c) {
            zzbaw zzbawVar = new zzbaw(context, ti.f20033a.q.f(), aalVar, clxVar);
            zzbbhVar.f4683a = zzbawVar;
            zzbawVar.checkAvailabilityAndConnect();
        }
        return cokVar;
    }
}
