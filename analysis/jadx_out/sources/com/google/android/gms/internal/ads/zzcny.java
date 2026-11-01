package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.SystemClock;
import g.agd;
import g.cvb;
import g.czz;
import g.fim;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzcny implements zzaym, zzcxh, fim, zzcxg {

    /* renamed from: e, reason: collision with root package name */
    public final zzbou f5410e;

    /* renamed from: f, reason: collision with root package name */
    public final Executor f5411f;

    /* renamed from: g, reason: collision with root package name */
    public final zzcnt f5412g;
    public final zzcnu i;
    public final cvb j;

    /* renamed from: d, reason: collision with root package name */
    public final HashSet f5409d = new HashSet();

    /* renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f5407b = new AtomicBoolean(false);

    /* renamed from: a, reason: collision with root package name */
    public final zzcnx f5406a = new zzcnx();
    public boolean h = false;

    /* renamed from: c, reason: collision with root package name */
    public WeakReference f5408c = new WeakReference(this);

    public zzcny(zzbor zzborVar, zzcnu zzcnuVar, Executor executor, zzcnt zzcntVar, cvb cvbVar) {
        this.f5412g = zzcntVar;
        zzboc zzbocVar = zzbof.zza;
        this.f5410e = zzborVar.zza("google.afma.activeView.handleUpdate", zzbocVar, zzbocVar);
        this.i = zzcnuVar;
        this.f5411f = executor;
        this.j = cvbVar;
    }

    @Override // g.fim
    public final synchronized void zzdH() {
        this.f5406a.zzb = false;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final synchronized void zzdj(Context context) {
        this.f5406a.zze = "u";
        zzg();
        zzcnt zzcntVar = this.f5412g;
        Iterator it = this.f5409d.iterator();
        while (it.hasNext()) {
            zzcntVar.zzf((zzcfk) it.next());
        }
        zzcntVar.zze();
        this.h = true;
    }

    @Override // g.fim
    public final synchronized void zzdk() {
        this.f5406a.zzb = true;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final synchronized void zzdl(Context context) {
        this.f5406a.zzb = true;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final synchronized void zzdm(Context context) {
        this.f5406a.zzb = false;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzaym
    public final synchronized void zzdp(zzayl zzaylVar) {
        zzcnx zzcnxVar = this.f5406a;
        zzcnxVar.zza = zzaylVar.zzj;
        zzcnxVar.zzf = zzaylVar;
        zzg();
    }

    @Override // g.fim
    public final void zzdq() {
    }

    @Override // g.fim
    public final void zzdr() {
    }

    @Override // g.fim
    public final void zzdt() {
    }

    @Override // g.fim
    public final void zzdu(int i) {
    }

    public final synchronized void zzg() {
        try {
            if (this.f5408c.get() == null) {
                zzj();
                return;
            }
            if (this.h || !this.f5407b.get()) {
                return;
            }
            try {
                zzcnx zzcnxVar = this.f5406a;
                ((czz) this.j).getClass();
                zzcnxVar.zzd = SystemClock.elapsedRealtime();
                final JSONObject zzb = this.i.zzb(this.f5406a);
                Iterator it = this.f5409d.iterator();
                while (it.hasNext()) {
                    final zzcfk zzcfkVar = (zzcfk) it.next();
                    this.f5411f.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcnw
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzcfk.this.zzl("AFMA_updateActiveView", zzb);
                        }
                    });
                }
                zzcam.zzb(this.f5410e.zzb(zzb), "ActiveViewListener.callActiveViewJs");
            } catch (Exception unused) {
                agd.h();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzh(zzcfk zzcfkVar) {
        this.f5409d.add(zzcfkVar);
        this.f5412g.zzd(zzcfkVar);
    }

    public final void zzi(Object obj) {
        this.f5408c = new WeakReference(obj);
    }

    public final synchronized void zzj() {
        zzcnt zzcntVar = this.f5412g;
        Iterator it = this.f5409d.iterator();
        while (it.hasNext()) {
            zzcntVar.zzf((zzcfk) it.next());
        }
        zzcntVar.zze();
        this.h = true;
    }

    @Override // com.google.android.gms.internal.ads.zzcxg
    public final synchronized void zzr() {
        if (this.f5407b.compareAndSet(false, true)) {
            this.f5412g.zzc(this);
            zzg();
        }
    }
}
