package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import g.bgb;
import g.sx;

/* loaded from: classes3.dex */
public final class zzeli {

    /* renamed from: a, reason: collision with root package name */
    public final zzdgn f7207a;

    public zzeli(zzdgn zzdgnVar) {
        this.f7207a = zzdgnVar;
    }

    public final Object zza(zzfff zzfffVar, zzfet zzfetVar, View view, zzele zzeleVar) {
        sx sxVar = new sx(new zzdgv() { // from class: com.google.android.gms.internal.ads.zzelf
            @Override // com.google.android.gms.internal.ads.zzdgv
            public final void zza(boolean z, Context context, zzcwz zzcwzVar) {
            }
        }, null);
        zzdfk zze = this.f7207a.zze(new zzcsg(zzfffVar, zzfetVar, null), sxVar);
        zzeleVar.zzd(new bgb(0, zze));
        return zze.zzg();
    }
}
