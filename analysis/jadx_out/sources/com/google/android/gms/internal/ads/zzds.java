package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import g.ddi;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes3.dex */
public final class zzds {

    /* renamed from: a, reason: collision with root package name */
    public boolean f6434a;

    /* renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArraySet f6435b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayDeque f6436c;

    /* renamed from: d, reason: collision with root package name */
    public final zzdc f6437d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayDeque f6438e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f6439f;

    /* renamed from: g, reason: collision with root package name */
    public final zzdm f6440g;
    public final zzdq h;
    public final Object i;

    public zzds(Looper looper, zzdc zzdcVar, zzdq zzdqVar) {
        this(new CopyOnWriteArraySet(), looper, zzdcVar, zzdqVar, true);
    }

    public zzds(CopyOnWriteArraySet copyOnWriteArraySet, Looper looper, zzdc zzdcVar, zzdq zzdqVar, boolean z) {
        this.f6437d = zzdcVar;
        this.f6435b = copyOnWriteArraySet;
        this.h = zzdqVar;
        this.i = new Object();
        this.f6436c = new ArrayDeque();
        this.f6438e = new ArrayDeque();
        this.f6440g = zzdcVar.zzd(looper, new Handler.Callback() { // from class: com.google.android.gms.internal.ads.zzdn
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                zzds.zzg(zzds.this, message);
                return true;
            }
        });
        this.f6439f = z;
    }

    public static boolean zzg(zzds zzdsVar, Message message) {
        Iterator it = zzdsVar.f6435b.iterator();
        while (it.hasNext()) {
            ddi ddiVar = (ddi) it.next();
            zzdq zzdqVar = zzdsVar.h;
            if (!ddiVar.f14015a && ddiVar.f14018d) {
                zzz zzb = ddiVar.f14017c.zzb();
                ddiVar.f14017c = new zzx();
                ddiVar.f14018d = false;
                zzdqVar.zza(ddiVar.f14016b, zzb);
            }
            if (zzdsVar.f6440g.zzg(1)) {
                break;
            }
        }
        return true;
    }

    public final void j() {
        if (this.f6439f) {
            zzdb.zzf(Thread.currentThread() == this.f6440g.zza().getThread());
        }
    }

    public final zzds zza(Looper looper, zzdq zzdqVar) {
        return new zzds(this.f6435b, looper, this.f6437d, zzdqVar, this.f6439f);
    }

    public final void zzb(Object obj) {
        synchronized (this.i) {
            try {
                if (this.f6434a) {
                    return;
                }
                this.f6435b.add(new ddi(obj));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzc() {
        j();
        ArrayDeque arrayDeque = this.f6438e;
        if (arrayDeque.isEmpty()) {
            return;
        }
        zzdm zzdmVar = this.f6440g;
        if (!zzdmVar.zzg(1)) {
            zzdmVar.zzk(zzdmVar.zzb(1));
        }
        ArrayDeque arrayDeque2 = this.f6436c;
        boolean isEmpty = arrayDeque2.isEmpty();
        arrayDeque2.addAll(arrayDeque);
        arrayDeque.clear();
        if (isEmpty) {
            while (!arrayDeque2.isEmpty()) {
                ((Runnable) arrayDeque2.peekFirst()).run();
                arrayDeque2.removeFirst();
            }
        }
    }

    public final void zzd(final int i, final zzdp zzdpVar) {
        j();
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.f6435b);
        this.f6438e.add(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdo
            @Override // java.lang.Runnable
            public final void run() {
                Iterator it = copyOnWriteArraySet.iterator();
                while (it.hasNext()) {
                    zzdp zzdpVar2 = zzdpVar;
                    int i2 = i;
                    ddi ddiVar = (ddi) it.next();
                    if (!ddiVar.f14015a) {
                        if (i2 != -1) {
                            ddiVar.f14017c.zza(i2);
                        }
                        ddiVar.f14018d = true;
                        zzdpVar2.zza(ddiVar.f14016b);
                    }
                }
            }
        });
    }

    public final void zze() {
        j();
        synchronized (this.i) {
            this.f6434a = true;
        }
        Iterator it = this.f6435b.iterator();
        while (it.hasNext()) {
            ddi ddiVar = (ddi) it.next();
            zzdq zzdqVar = this.h;
            ddiVar.f14015a = true;
            if (ddiVar.f14018d) {
                ddiVar.f14018d = false;
                zzdqVar.zza(ddiVar.f14016b, ddiVar.f14017c.zzb());
            }
        }
        this.f6435b.clear();
    }

    public final void zzf(Object obj) {
        j();
        CopyOnWriteArraySet copyOnWriteArraySet = this.f6435b;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ddi ddiVar = (ddi) it.next();
            if (ddiVar.f14016b.equals(obj)) {
                ddiVar.f14015a = true;
                if (ddiVar.f14018d) {
                    ddiVar.f14018d = false;
                    this.h.zza(ddiVar.f14016b, ddiVar.f14017c.zzb());
                }
                copyOnWriteArraySet.remove(ddiVar);
            }
        }
    }
}
