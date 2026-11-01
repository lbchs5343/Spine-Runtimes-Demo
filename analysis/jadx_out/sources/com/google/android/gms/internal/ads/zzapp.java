package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import g.awf;
import g.did;
import g.gkr;
import g.gqm;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class zzapp implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public zzaps f4444a;

    /* renamed from: b, reason: collision with root package name */
    public Integer f4445b;

    /* renamed from: c, reason: collision with root package name */
    public zzaoy f4446c;

    /* renamed from: d, reason: collision with root package name */
    public final String f4447d;

    /* renamed from: e, reason: collision with root package name */
    public final zzapd f4448e;

    /* renamed from: f, reason: collision with root package name */
    public gkr f4449f;

    /* renamed from: g, reason: collision with root package name */
    public final int f4450g;
    public final Object h;
    public final gqm i;
    public boolean j;
    public final int k;
    public final zzapt l;

    public zzapp(int i, String str, zzapt zzaptVar) {
        Uri parse;
        String host;
        this.i = gqm.f18579a ? new gqm() : null;
        this.h = new Object();
        int i2 = 0;
        this.j = false;
        this.f4446c = null;
        this.k = i;
        this.f4447d = str;
        this.l = zzaptVar;
        this.f4448e = new zzapd();
        if (!TextUtils.isEmpty(str) && (parse = Uri.parse(str)) != null && (host = parse.getHost()) != null) {
            i2 = host.hashCode();
        }
        this.f4450g = i2;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.f4445b.intValue() - ((zzapp) obj).f4445b.intValue();
    }

    public final void m() {
        gkr gkrVar;
        synchronized (this.h) {
            gkrVar = this.f4449f;
        }
        if (gkrVar != null) {
            gkrVar.ag(this);
        }
    }

    public final void n(zzapv zzapvVar) {
        gkr gkrVar;
        synchronized (this.h) {
            gkrVar = this.f4449f;
        }
        if (gkrVar != null) {
            gkrVar.ad(this, zzapvVar);
        }
    }

    public abstract zzapv o(zzapl zzaplVar);

    public final void p() {
        zzaps zzapsVar = this.f4444a;
        if (zzapsVar != null) {
            zzapsVar.l();
        }
    }

    public abstract void q(Object obj);

    public final void r(String str) {
        zzaps zzapsVar = this.f4444a;
        if (zzapsVar != null) {
            synchronized (zzapsVar.h) {
                zzapsVar.h.remove(this);
            }
            synchronized (zzapsVar.f4457g) {
                try {
                    Iterator it = zzapsVar.f4457g.iterator();
                    while (it.hasNext()) {
                        ((zzapr) it.next()).zza();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            zzapsVar.l();
        }
        if (gqm.f18579a) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new did(this, str, id, 0));
            } else {
                this.i.d(id, str);
                this.i.e(toString());
            }
        }
    }

    public final void s(gkr gkrVar) {
        synchronized (this.h) {
            this.f4449f = gkrVar;
        }
    }

    public final String toString() {
        String valueOf = String.valueOf(Integer.toHexString(this.f4450g));
        zzw();
        return "[ ] " + this.f4447d + " " + "0x".concat(valueOf) + " NORMAL " + this.f4445b;
    }

    public final int zza() {
        return this.k;
    }

    public final int zzb() {
        return this.f4448e.zzb();
    }

    public final int zzc() {
        return this.f4450g;
    }

    public final zzaoy zzd() {
        return this.f4446c;
    }

    public final zzapp zze(zzaoy zzaoyVar) {
        this.f4446c = zzaoyVar;
        return this;
    }

    public final zzapp zzf(zzaps zzapsVar) {
        this.f4444a = zzapsVar;
        return this;
    }

    public final zzapp zzg(int i) {
        this.f4445b = Integer.valueOf(i);
        return this;
    }

    public final String zzj() {
        int i = this.k;
        String str = this.f4447d;
        return i != 0 ? awf.i(Integer.toString(1), "-", str) : str;
    }

    public final String zzk() {
        return this.f4447d;
    }

    public Map zzl() throws zzaox {
        return Collections.EMPTY_MAP;
    }

    public final void zzm(String str) {
        if (gqm.f18579a) {
            this.i.d(Thread.currentThread().getId(), str);
        }
    }

    public final void zzn(zzapy zzapyVar) {
        zzapt zzaptVar;
        synchronized (this.h) {
            zzaptVar = this.l;
        }
        zzaptVar.zza(zzapyVar);
    }

    public final void zzq() {
        synchronized (this.h) {
            this.j = true;
        }
    }

    public final boolean zzv() {
        boolean z;
        synchronized (this.h) {
            z = this.j;
        }
        return z;
    }

    public final boolean zzw() {
        synchronized (this.h) {
        }
        return false;
    }

    public byte[] zzx() throws zzaox {
        return null;
    }

    public final zzapd zzy() {
        return this.f4448e;
    }
}
