package com.google.android.gms.internal.ads;

import g.agd;
import g.cmo;
import g.ti;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes3.dex */
public final class zzazc {

    /* renamed from: b, reason: collision with root package name */
    public int f4630b;

    /* renamed from: a, reason: collision with root package name */
    public final Object f4629a = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final LinkedList f4631c = new LinkedList();

    public final void zza(zzazb zzazbVar) {
        synchronized (this.f4629a) {
            try {
                if (this.f4631c.size() >= 10) {
                    agd.c("Queue is full, current size = " + this.f4631c.size());
                    this.f4631c.remove(0);
                }
                int i = this.f4630b;
                this.f4630b = i + 1;
                zzazbVar.zzg(i);
                zzazbVar.zzk();
                this.f4631c.add(zzazbVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzb(zzazb zzazbVar) {
        synchronized (this.f4629a) {
            try {
                Iterator it = this.f4631c.iterator();
                while (it.hasNext()) {
                    zzazb zzazbVar2 = (zzazb) it.next();
                    ti tiVar = ti.f20033a;
                    if (((cmo) tiVar.f20034ab.zzi()).ba()) {
                        if (!((cmo) tiVar.f20034ab.zzi()).ag() && !zzazbVar.equals(zzazbVar2) && zzazbVar2.zzd().equals(zzazbVar.zzd())) {
                            it.remove();
                            return true;
                        }
                    } else if (!zzazbVar.equals(zzazbVar2) && zzazbVar2.zzc().equals(zzazbVar.zzc())) {
                        it.remove();
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzc(zzazb zzazbVar) {
        synchronized (this.f4629a) {
            try {
                return this.f4631c.contains(zzazbVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
