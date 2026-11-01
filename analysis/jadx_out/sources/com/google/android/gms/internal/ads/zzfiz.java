package com.google.android.gms.internal.ads;

import g.dcy;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzfiz {

    /* renamed from: a, reason: collision with root package name */
    public final Object f7912a;

    /* renamed from: b, reason: collision with root package name */
    public final List f7913b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzfjj f7914c;

    public /* synthetic */ zzfiz(zzfjj zzfjjVar, Object obj, List list) {
        this.f7914c = zzfjjVar;
        this.f7912a = obj;
        this.f7913b = list;
    }

    public final zzfjh zza(Callable callable) {
        zzgeg zzb = zzgei.zzb(this.f7913b);
        dcy zza = zzb.zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzfiy
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return null;
            }
        }, zzcaj.zzf);
        dcy zza2 = zzb.zza(callable, this.f7914c.f7922b);
        return new zzfjh(this.f7914c, this.f7912a, null, zza, this.f7913b, zza2);
    }
}
