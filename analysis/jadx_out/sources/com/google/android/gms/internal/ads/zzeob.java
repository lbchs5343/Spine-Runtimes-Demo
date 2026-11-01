package com.google.android.gms.internal.ads;

import g.dcy;
import g.dzm;
import g.edt;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzeob implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzges f7307a;

    /* renamed from: b, reason: collision with root package name */
    public final zzffo f7308b;

    public zzeob(zzges zzgesVar, zzffo zzffoVar) {
        this.f7307a = zzgesVar;
        this.f7308b = zzffoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 5;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f7307a.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeoa
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzeob zzeobVar = zzeob.this;
                zzeobVar.getClass();
                String str = null;
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgT)).booleanValue() && "requester_type_2".equals(dzm.w(zzeobVar.f7308b.zzd))) {
                    str = zzfgd.zza();
                }
                return new zzeoc(str);
            }
        });
    }
}
