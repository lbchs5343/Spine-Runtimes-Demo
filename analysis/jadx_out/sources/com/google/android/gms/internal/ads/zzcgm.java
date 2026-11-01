package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import g.agd;
import g.chh;
import g.cpm;
import g.edt;
import g.fvh;
import g.tl;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzcgm extends chh {

    /* renamed from: b, reason: collision with root package name */
    public boolean f5259b;

    /* renamed from: c, reason: collision with root package name */
    public float f5260c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f5261d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f5262e;

    /* renamed from: f, reason: collision with root package name */
    public float f5263f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f5264g;
    public int h;
    public final zzccf i;
    public float j;
    public zzbhg m;
    public boolean n;
    public fvh o;
    public final Object k = new Object();

    /* renamed from: a, reason: collision with root package name */
    public boolean f5258a = true;

    public zzcgm(zzccf zzccfVar, float f2, boolean z, boolean z2) {
        this.i = zzccfVar;
        this.j = f2;
        this.f5261d = z;
        this.f5264g = z2;
    }

    public final void p(String str, Map map) {
        final HashMap hashMap = map == null ? new HashMap() : new HashMap(map);
        hashMap.put("action", str);
        zzcaj.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcgk
            @Override // java.lang.Runnable
            public final void run() {
                zzcgm zzcgmVar = zzcgm.this;
                zzcgmVar.i.zzd("pubVideoCmd", hashMap);
            }
        });
    }

    public final void zzc(float f2, float f3, int i, boolean z, float f4) {
        boolean z2;
        boolean z3;
        int i2;
        synchronized (this.k) {
            try {
                z2 = true;
                if (f3 == this.j && f4 == this.f5263f) {
                    z2 = false;
                }
                this.j = f3;
                if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzmw)).booleanValue()) {
                    this.f5260c = f2;
                }
                z3 = this.f5258a;
                this.f5258a = z;
                i2 = this.h;
                this.h = i;
                float f5 = this.f5263f;
                this.f5263f = f4;
                if (Math.abs(f4 - f5) > 1.0E-4f) {
                    this.i.zzF().invalidate();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z2) {
            try {
                zzbhg zzbhgVar = this.m;
                if (zzbhgVar != null) {
                    zzbhgVar.zze();
                }
            } catch (RemoteException e2) {
                agd.g("#007 Could not call remote method.", e2);
            }
        }
        zzcaj.zze.execute(new zzcgl(this, i2, i, z3, z));
    }

    @Override // g.cbz
    public final float zze() {
        float f2;
        synchronized (this.k) {
            f2 = this.f5263f;
        }
        return f2;
    }

    @Override // g.cbz
    public final float zzf() {
        float f2;
        synchronized (this.k) {
            f2 = this.f5260c;
        }
        return f2;
    }

    @Override // g.cbz
    public final float zzg() {
        float f2;
        synchronized (this.k) {
            f2 = this.j;
        }
        return f2;
    }

    @Override // g.cbz
    public final int zzh() {
        int i;
        synchronized (this.k) {
            i = this.h;
        }
        return i;
    }

    @Override // g.cbz
    public final fvh zzi() throws RemoteException {
        fvh fvhVar;
        synchronized (this.k) {
            fvhVar = this.o;
        }
        return fvhVar;
    }

    @Override // g.cbz
    public final void zzj(boolean z) {
        p(true != z ? "unmute" : "mute", null);
    }

    @Override // g.cbz
    public final void zzk() {
        p("pause", null);
    }

    @Override // g.cbz
    public final void zzl() {
        p("play", null);
    }

    @Override // g.cbz
    public final void zzm(fvh fvhVar) {
        synchronized (this.k) {
            this.o = fvhVar;
        }
    }

    @Override // g.cbz
    public final void zzn() {
        p("stop", null);
    }

    @Override // g.cbz
    public final boolean zzo() {
        boolean z;
        Object obj = this.k;
        boolean zzp = zzp();
        synchronized (obj) {
            z = false;
            if (!zzp) {
                try {
                    if (this.n && this.f5264g) {
                        z = true;
                    }
                } finally {
                }
            }
        }
        return z;
    }

    @Override // g.cbz
    public final boolean zzp() {
        boolean z;
        synchronized (this.k) {
            try {
                z = false;
                if (this.f5261d && this.f5262e) {
                    z = true;
                }
            } finally {
            }
        }
        return z;
    }

    @Override // g.cbz
    public final boolean zzq() {
        boolean z;
        synchronized (this.k) {
            z = this.f5258a;
        }
        return z;
    }

    public final void zzs(cpm cpmVar) {
        Object obj = this.k;
        boolean z = cpmVar.zza;
        boolean z2 = cpmVar.zzb;
        boolean z3 = cpmVar.zzc;
        synchronized (obj) {
            this.f5262e = z2;
            this.n = z3;
        }
        String str = true != z ? "0" : "1";
        String str2 = true != z2 ? "0" : "1";
        String str3 = true != z3 ? "0" : "1";
        tl tlVar = new tl(3);
        tlVar.put("muteStart", str);
        tlVar.put("customControlsRequested", str2);
        tlVar.put("clickToExpandRequested", str3);
        p("initialState", Collections.unmodifiableMap(tlVar));
    }

    public final void zzt(float f2) {
        synchronized (this.k) {
            this.f5260c = f2;
        }
    }

    public final void zzu() {
        boolean z;
        int i;
        int i2;
        synchronized (this.k) {
            z = this.f5258a;
            i = this.h;
            i2 = 3;
            this.h = 3;
        }
        zzcaj.zze.execute(new zzcgl(this, i, i2, z, z));
    }

    public final void zzv(zzbhg zzbhgVar) {
        synchronized (this.k) {
            this.m = zzbhgVar;
        }
    }
}
