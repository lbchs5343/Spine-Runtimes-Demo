package com.google.android.gms.internal.ads;

import g.agd;
import g.ano;
import g.ckd;
import g.eie;
import g.ekb;
import g.emr;

/* loaded from: classes3.dex */
public final class zzbnt extends zzcav {

    /* renamed from: c, reason: collision with root package name */
    public final Object f4886c = new Object();

    /* renamed from: a, reason: collision with root package name */
    public boolean f4884a = false;

    /* renamed from: b, reason: collision with root package name */
    public int f4885b = 0;

    public zzbnt(ano anoVar) {
    }

    public final void d() {
        agd.e("maybeDestroy: Trying to acquire lock");
        synchronized (this.f4886c) {
            try {
                agd.e("maybeDestroy: Lock acquired");
                ckd.t(this.f4885b >= 0);
                if (this.f4884a && this.f4885b == 0) {
                    agd.e("No reference is left (including root). Cleaning up engine.");
                    zzj(new ekb(), new zzcar());
                } else {
                    agd.e("There are still references to the engine. Not destroying.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        agd.e("maybeDestroy: Lock released");
    }

    public final void e() {
        agd.e("releaseOneReference: Trying to acquire lock");
        synchronized (this.f4886c) {
            agd.e("releaseOneReference: Lock acquired");
            ckd.t(this.f4885b > 0);
            agd.e("Releasing 1 reference for JS Engine");
            this.f4885b--;
            d();
        }
        agd.e("releaseOneReference: Lock released");
    }

    public final zzbno zza() {
        zzbno zzbnoVar = new zzbno(this);
        agd.e("createNewReference: Trying to acquire lock");
        synchronized (this.f4886c) {
            agd.e("createNewReference: Lock acquired");
            zzj(new eie(26, zzbnoVar), new emr(25, zzbnoVar));
            ckd.t(this.f4885b >= 0);
            this.f4885b++;
        }
        agd.e("createNewReference: Lock released");
        return zzbnoVar;
    }

    public final void zzb() {
        agd.e("markAsDestroyable: Trying to acquire lock");
        synchronized (this.f4886c) {
            agd.e("markAsDestroyable: Lock acquired");
            ckd.t(this.f4885b >= 0);
            agd.e("Releasing root reference. JS Engine will be destroyed once other references are released.");
            this.f4884a = true;
            d();
        }
        agd.e("markAsDestroyable: Lock released");
    }
}
