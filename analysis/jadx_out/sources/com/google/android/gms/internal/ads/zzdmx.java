package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import android.view.View;
import g.edt;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzdmx {

    /* renamed from: a, reason: collision with root package name */
    public final zzcnb f6202a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f6203b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcoi f6204c;

    /* renamed from: d, reason: collision with root package name */
    public final zzdef f6205d;

    public zzdmx(Executor executor, zzcoi zzcoiVar, zzdef zzdefVar, zzcnb zzcnbVar) {
        this.f6203b = executor;
        this.f6205d = zzdefVar;
        this.f6204c = zzcoiVar;
        this.f6202a = zzcnbVar;
    }

    public final void zza(final zzcfk zzcfkVar) {
        if (zzcfkVar == null) {
            return;
        }
        View zzF = zzcfkVar.zzF();
        zzdef zzdefVar = this.f6205d;
        zzdefVar.zza(zzF);
        zzaym zzaymVar = new zzaym() { // from class: com.google.android.gms.internal.ads.zzdmt
            @Override // com.google.android.gms.internal.ads.zzaym
            public final void zzdp(zzayl zzaylVar) {
                zzchc zzN = zzcfk.this.zzN();
                Rect rect = zzaylVar.zzd;
                zzN.zzq(rect.left, rect.top, false);
            }
        };
        Executor executor = this.f6203b;
        zzdefVar.zzo(zzaymVar, executor);
        zzdefVar.zzo(new zzaym() { // from class: com.google.android.gms.internal.ads.zzdmu
            @Override // com.google.android.gms.internal.ads.zzaym
            public final void zzdp(zzayl zzaylVar) {
                HashMap hashMap = new HashMap();
                hashMap.put("isVisible", true != zzaylVar.zzj ? "0" : "1");
                zzcfk.this.zzd("onAdVisibilityChanged", hashMap);
            }
        }, executor);
        zzcoi zzcoiVar = this.f6204c;
        zzdefVar.zzo(zzcoiVar, executor);
        zzcoiVar.zzf(zzcfkVar);
        zzchc zzN = zzcfkVar.zzN();
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzjN)).booleanValue() && zzN != null) {
            zzcnb zzcnbVar = this.f6202a;
            zzN.zzK(zzcnbVar);
            zzN.zzL(zzcnbVar, null, null);
        }
        zzcfkVar.zzag("/trackActiveViewUnit", new zzbjr() { // from class: com.google.android.gms.internal.ads.zzdmv
            @Override // com.google.android.gms.internal.ads.zzbjr
            public final void zza(Object obj, Map map) {
                zzdmx.this.f6204c.zzb();
            }
        });
        zzcfkVar.zzag("/untrackActiveViewUnit", new zzbjr() { // from class: com.google.android.gms.internal.ads.zzdmw
            @Override // com.google.android.gms.internal.ads.zzbjr
            public final void zza(Object obj, Map map) {
                zzdmx.this.f6204c.zza();
            }
        });
    }
}
