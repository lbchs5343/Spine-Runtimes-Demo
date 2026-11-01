package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import g.sr;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes3.dex */
public final class zzeb {

    /* renamed from: a, reason: collision with root package name */
    public static zzeb f6753a;

    /* renamed from: c, reason: collision with root package name */
    public final Handler f6755c = new Handler(Looper.getMainLooper());

    /* renamed from: d, reason: collision with root package name */
    public final CopyOnWriteArrayList f6756d = new CopyOnWriteArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final Object f6757e = new Object();

    /* renamed from: b, reason: collision with root package name */
    public int f6754b = 0;

    public zzeb(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(new sr(15, this), intentFilter);
    }

    public static /* synthetic */ void f(zzeb zzebVar, int i) {
        synchronized (zzebVar.f6757e) {
            try {
                if (zzebVar.f6754b == i) {
                    return;
                }
                zzebVar.f6754b = i;
                Iterator it = zzebVar.f6756d.iterator();
                while (it.hasNext()) {
                    WeakReference weakReference = (WeakReference) it.next();
                    zzyt zzytVar = (zzyt) weakReference.get();
                    if (zzytVar != null) {
                        zzyv.zzi(zzytVar.zza, i);
                    } else {
                        zzebVar.f6756d.remove(weakReference);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static synchronized zzeb zzb(Context context) {
        zzeb zzebVar;
        synchronized (zzeb.class) {
            try {
                if (f6753a == null) {
                    f6753a = new zzeb(context);
                }
                zzebVar = f6753a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzebVar;
    }

    public final int zza() {
        int i;
        synchronized (this.f6757e) {
            i = this.f6754b;
        }
        return i;
    }

    public final void zzd(final zzyt zzytVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f6756d;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            if (weakReference.get() == null) {
                copyOnWriteArrayList.remove(weakReference);
            }
        }
        copyOnWriteArrayList.add(new WeakReference(zzytVar));
        this.f6755c.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdx
            @Override // java.lang.Runnable
            public final void run() {
                zzyv.zzi(zzytVar.zza, zzeb.this.zza());
            }
        });
    }
}
