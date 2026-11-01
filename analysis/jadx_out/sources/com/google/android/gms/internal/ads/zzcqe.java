package com.google.android.gms.internal.ads;

import android.view.ViewParent;
import g.edt;

/* loaded from: classes3.dex */
public final class zzcqe implements zzcxg {

    /* renamed from: a, reason: collision with root package name */
    public final zzfet f5518a;

    /* renamed from: b, reason: collision with root package name */
    public final zzcfk f5519b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdsm f5520c;

    public zzcqe(zzcfk zzcfkVar, zzdsm zzdsmVar, zzfet zzfetVar) {
        this.f5519b = zzcfkVar;
        this.f5520c = zzdsmVar;
        this.f5518a = zzfetVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcxg
    public final void zzr() {
        zzcfk zzcfkVar;
        boolean z;
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzmB)).booleanValue() || (zzcfkVar = this.f5519b) == null) {
            return;
        }
        ViewParent parent = zzcfkVar.zzF().getParent();
        while (true) {
            if (parent == null) {
                z = false;
                break;
            } else {
                if (parent.getClass().getName().startsWith("androidx.compose.ui")) {
                    z = true;
                    break;
                }
                parent = parent.getParent();
            }
        }
        zzdsl zza = this.f5520c.zza();
        zza.zzb("action", "hcp");
        zza.zzb("hcp", true != z ? "0" : "1");
        zza.zzc(this.f5518a);
        zza.zzf();
    }
}
