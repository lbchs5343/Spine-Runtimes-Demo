package com.google.android.gms.internal.ads;

import android.content.Context;
import g.eno;
import g.gin;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzffu {
    public static eno zza(Context context, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzfeu zzfeuVar = (zzfeu) it.next();
            if (zzfeuVar.zzc) {
                arrayList.add(gin.f18200b);
            } else {
                arrayList.add(new gin(zzfeuVar.zza, zzfeuVar.zzb));
            }
        }
        return new eno(context, (gin[]) arrayList.toArray(new gin[arrayList.size()]));
    }

    public static zzfeu zzb(eno enoVar) {
        return enoVar.zzi ? new zzfeu(-3, 0, true) : new zzfeu(enoVar.zze, enoVar.zzb, false);
    }
}
