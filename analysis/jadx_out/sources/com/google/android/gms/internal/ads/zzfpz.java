package com.google.android.gms.internal.ads;

import android.content.Context;
import g.acj;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzfpz {
    public static zzfri zza(Context context, int i, int i2, String str, String str2, String str3, zzfpp zzfppVar) {
        zzfri zzfriVar;
        acj acjVar = new acj(context, i2, str, str2, zzfppVar);
        try {
            zzfriVar = (zzfri) acjVar.f9973d.poll(50000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e2) {
            acjVar.j(2009, acjVar.f9971b, e2);
            zzfriVar = null;
        }
        acjVar.j(3004, acjVar.f9971b, null);
        if (zzfriVar != null) {
            if (zzfriVar.zzc == 7) {
                zzfpp.f8142a = 3;
            } else {
                zzfpp.f8142a = 2;
            }
        }
        return zzfriVar == null ? new zzfri(null, 1) : zzfriVar;
    }
}
