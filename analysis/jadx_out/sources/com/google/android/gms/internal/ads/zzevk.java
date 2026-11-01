package com.google.android.gms.internal.ads;

import android.content.Context;
import g.dcy;
import g.edt;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzevk implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzbyv f7606a;

    /* renamed from: b, reason: collision with root package name */
    public final zzges f7607b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f7608c;

    public zzevk(zzbyv zzbyvVar, zzges zzgesVar, Context context) {
        this.f7606a = zzbyvVar;
        this.f7607b = zzgesVar;
        this.f7608c = context;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 34;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f7607b.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzevj
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzevk zzevkVar = zzevk.this;
                zzbyv zzbyvVar = zzevkVar.f7606a;
                Context context = zzevkVar.f7608c;
                if (!zzbyvVar.zzp(context)) {
                    return new zzevl(null, null, null, null, null);
                }
                String zzd = zzbyvVar.zzd(context);
                String str = zzd == null ? "" : zzd;
                String zzb = zzbyvVar.zzb(context);
                String str2 = zzb == null ? "" : zzb;
                String zza = zzbyvVar.zza(context);
                String str3 = zza == null ? "" : zza;
                String str4 = true != zzbyvVar.zzp(context) ? null : "fa";
                return new zzevl(str, str2, str3, str4 == null ? "" : str4, "TIME_OUT".equals(str2) ? (Long) edt.f15376a.f15379d.zza(zzbcn.zzaq) : null);
            }
        });
    }
}
