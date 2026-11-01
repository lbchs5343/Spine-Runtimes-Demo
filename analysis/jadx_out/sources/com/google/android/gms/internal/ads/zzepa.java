package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import g.dcy;
import g.edt;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzepa implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7336a;

    /* renamed from: b, reason: collision with root package name */
    public final zzges f7337b;

    public zzepa(zzges zzgesVar, Context context) {
        this.f7337b = zzgesVar;
        this.f7336a = context;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 61;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        final ContentResolver contentResolver;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzmA)).booleanValue() && (contentResolver = this.f7336a.getContentResolver()) != null) {
            return this.f7337b.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeoz
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    ContentResolver contentResolver2 = contentResolver;
                    return new zzepb(Settings.Secure.getString(contentResolver2, "advertising_id"), Settings.Secure.getInt(contentResolver2, "limit_ad_tracking", 0) == 1);
                }
            });
        }
        return zzgei.zzh(new zzepb(null, false));
    }
}
