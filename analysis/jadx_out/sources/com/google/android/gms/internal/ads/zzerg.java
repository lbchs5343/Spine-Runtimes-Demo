package com.google.android.gms.internal.ads;

import g.edt;
import g.glu;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzerg implements zzhfx {
    public static zzerg zza() {
        return glu.f18370a;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        Object arrayList = new ArrayList();
        zzbce zzbceVar = zzbcn.zzlu;
        edt edtVar = edt.f15376a;
        if (!((String) edtVar.f15379d.zza(zzbceVar)).isEmpty()) {
            arrayList = Arrays.asList(((String) edtVar.f15379d.zza(zzbceVar)).split(","));
        }
        zzhgf.zzb(arrayList);
        return arrayList;
    }
}
