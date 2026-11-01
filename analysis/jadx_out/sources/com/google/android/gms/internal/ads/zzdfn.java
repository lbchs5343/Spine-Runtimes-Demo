package com.google.android.gms.internal.ads;

import android.view.View;
import g.cwg;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class zzdfn {

    /* renamed from: a, reason: collision with root package name */
    public final zzdgv f5920a;

    /* renamed from: b, reason: collision with root package name */
    public final zzcfk f5921b;

    public zzdfn(zzdgv zzdgvVar, zzcfk zzcfkVar) {
        this.f5920a = zzdgvVar;
        this.f5921b = zzcfkVar;
    }

    public final View zza() {
        zzcfk zzcfkVar = this.f5921b;
        if (zzcfkVar == null) {
            return null;
        }
        return zzcfkVar.zzG();
    }

    public final View zzb() {
        zzcfk zzcfkVar = this.f5921b;
        if (zzcfkVar != null) {
            return zzcfkVar.zzG();
        }
        return null;
    }

    public final zzcfk zzc() {
        return this.f5921b;
    }

    public final zzded zzd(Executor executor) {
        final zzcfk zzcfkVar = this.f5921b;
        return new zzded(new zzdbb() { // from class: com.google.android.gms.internal.ads.zzdfm
            @Override // com.google.android.gms.internal.ads.zzdbb
            public final void zza() {
                cwg zzL;
                zzcfk zzcfkVar2 = zzcfk.this;
                if (zzcfkVar2 == null || (zzL = zzcfkVar2.zzL()) == null) {
                    return;
                }
                zzL.zzb();
            }
        }, executor);
    }

    public final zzdgv zze() {
        return this.f5920a;
    }

    public Set zzf(zzcvj zzcvjVar) {
        return Collections.singleton(new zzded(zzcvjVar, zzcaj.zzf));
    }

    public Set zzg(zzcvj zzcvjVar) {
        return Collections.singleton(new zzded(zzcvjVar, zzcaj.zzf));
    }
}
