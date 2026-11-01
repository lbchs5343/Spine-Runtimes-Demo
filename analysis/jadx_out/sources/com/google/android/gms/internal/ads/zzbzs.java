package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import g.aeh;
import g.cvb;
import g.czz;
import g.dnn;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes3.dex */
public final class zzbzs {

    /* renamed from: d, reason: collision with root package name */
    public final String f5094d;

    /* renamed from: e, reason: collision with root package name */
    public final cvb f5095e;

    /* renamed from: f, reason: collision with root package name */
    public final String f5096f;
    public final zzcad h;

    /* renamed from: c, reason: collision with root package name */
    public final Object f5093c = new Object();
    public long k = -1;

    /* renamed from: a, reason: collision with root package name */
    public long f5091a = -1;

    /* renamed from: g, reason: collision with root package name */
    public long f5097g = 0;
    public long i = -1;

    /* renamed from: b, reason: collision with root package name */
    public long f5092b = -1;
    public final LinkedList j = new LinkedList();

    public zzbzs(cvb cvbVar, zzcad zzcadVar, String str, String str2) {
        this.f5095e = cvbVar;
        this.h = zzcadVar;
        this.f5094d = str;
        this.f5096f = str2;
    }

    public final Bundle zza() {
        Bundle bundle;
        synchronized (this.f5093c) {
            try {
                bundle = new Bundle();
                bundle.putString("seq_num", this.f5094d);
                bundle.putString("slotid", this.f5096f);
                bundle.putBoolean("ismediation", false);
                bundle.putLong("treq", this.i);
                bundle.putLong("tresponse", this.f5092b);
                bundle.putLong("timp", this.k);
                bundle.putLong("tload", this.f5091a);
                bundle.putLong("pcc", this.f5097g);
                bundle.putLong("tfetch", -1L);
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                Iterator it = this.j.iterator();
                while (it.hasNext()) {
                    dnn dnnVar = (dnn) it.next();
                    dnnVar.getClass();
                    Bundle bundle2 = new Bundle();
                    bundle2.putLong("topen", dnnVar.f14475a);
                    bundle2.putLong("tclose", dnnVar.f14476b);
                    arrayList.add(bundle2);
                }
                bundle.putParcelableArrayList("tclick", arrayList);
            } catch (Throwable th) {
                throw th;
            }
        }
        return bundle;
    }

    public final String zzc() {
        return this.f5094d;
    }

    public final void zzd() {
        synchronized (this.f5093c) {
            try {
                if (this.f5092b != -1) {
                    dnn dnnVar = new dnn(this);
                    ((czz) this.f5095e).getClass();
                    dnnVar.f14475a = SystemClock.elapsedRealtime();
                    this.j.add(dnnVar);
                    this.f5097g++;
                    this.h.zzf();
                    this.h.zze(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zze() {
        synchronized (this.f5093c) {
            try {
                if (this.f5092b != -1 && !this.j.isEmpty()) {
                    dnn dnnVar = (dnn) this.j.getLast();
                    if (dnnVar.f14476b == -1) {
                        ((czz) dnnVar.f14477c.f5095e).getClass();
                        dnnVar.f14476b = SystemClock.elapsedRealtime();
                        this.h.zze(this);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzf() {
        synchronized (this.f5093c) {
            try {
                if (this.f5092b != -1 && this.k == -1) {
                    ((czz) this.f5095e).getClass();
                    this.k = SystemClock.elapsedRealtime();
                    this.h.zze(this);
                }
                this.h.zzg();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzg() {
        synchronized (this.f5093c) {
            this.h.zzh();
        }
    }

    public final void zzh(boolean z) {
        synchronized (this.f5093c) {
            try {
                if (this.f5092b != -1) {
                    ((czz) this.f5095e).getClass();
                    this.f5091a = SystemClock.elapsedRealtime();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzi() {
        synchronized (this.f5093c) {
            this.h.zzi();
        }
    }

    public final void zzj(aeh aehVar) {
        synchronized (this.f5093c) {
            ((czz) this.f5095e).getClass();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.i = elapsedRealtime;
            this.h.zzj(aehVar, elapsedRealtime);
        }
    }

    public final void zzk(long j) {
        synchronized (this.f5093c) {
            try {
                this.f5092b = j;
                if (j != -1) {
                    this.h.zze(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
