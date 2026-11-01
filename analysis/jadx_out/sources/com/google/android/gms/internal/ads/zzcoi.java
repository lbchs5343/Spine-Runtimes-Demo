package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import g.agd;
import g.cvb;
import g.czz;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzcoi implements zzaym {

    /* renamed from: b, reason: collision with root package name */
    public final zzcnu f5433b;

    /* renamed from: c, reason: collision with root package name */
    public final cvb f5434c;

    /* renamed from: e, reason: collision with root package name */
    public zzcfk f5436e;

    /* renamed from: f, reason: collision with root package name */
    public final Executor f5437f;

    /* renamed from: d, reason: collision with root package name */
    public boolean f5435d = false;

    /* renamed from: g, reason: collision with root package name */
    public boolean f5438g = false;

    /* renamed from: a, reason: collision with root package name */
    public final zzcnx f5432a = new zzcnx();

    public zzcoi(Executor executor, zzcnu zzcnuVar, cvb cvbVar) {
        this.f5437f = executor;
        this.f5433b = zzcnuVar;
        this.f5434c = cvbVar;
    }

    public final void h() {
        try {
            final JSONObject zzb = this.f5433b.zzb(this.f5432a);
            if (this.f5436e != null) {
                this.f5437f.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcoh
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcoi zzcoiVar = zzcoi.this;
                        zzcoiVar.f5436e.zzl("AFMA_updateActiveView", zzb);
                    }
                });
            }
        } catch (JSONException unused) {
            agd.h();
        }
    }

    public final void zza() {
        this.f5435d = false;
    }

    public final void zzb() {
        this.f5435d = true;
        h();
    }

    @Override // com.google.android.gms.internal.ads.zzaym
    public final void zzdp(zzayl zzaylVar) {
        boolean z = this.f5438g ? false : zzaylVar.zzj;
        zzcnx zzcnxVar = this.f5432a;
        zzcnxVar.zza = z;
        ((czz) this.f5434c).getClass();
        zzcnxVar.zzd = SystemClock.elapsedRealtime();
        zzcnxVar.zzf = zzaylVar;
        if (this.f5435d) {
            h();
        }
    }

    public final void zze(boolean z) {
        this.f5438g = z;
    }

    public final void zzf(zzcfk zzcfkVar) {
        this.f5436e = zzcfkVar;
    }
}
