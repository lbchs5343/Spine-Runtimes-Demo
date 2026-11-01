package com.google.android.gms.internal.ads;

import android.os.Build;
import g.beh;
import g.dcy;
import g.edt;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzezq implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzges f7722a;

    public zzezq(zzges zzgesVar) {
        this.f7722a = zzgesVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 51;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f7722a.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzezp
            @Override // java.util.concurrent.Callable
            public final Object call() {
                HashMap hashMap = new HashMap();
                zzbce zzbceVar = zzbcn.zzT;
                edt edtVar = edt.f15376a;
                String str = (String) edtVar.f15379d.zza(zzbceVar);
                if (str != null && !str.isEmpty()) {
                    if (Build.VERSION.SDK_INT >= ((Integer) edtVar.f15379d.zza(zzbcn.zzU)).intValue()) {
                        for (String str2 : str.split(",", -1)) {
                            hashMap.put(str2, beh.d(str2));
                        }
                    }
                }
                return new zzezr(hashMap);
            }
        });
    }
}
