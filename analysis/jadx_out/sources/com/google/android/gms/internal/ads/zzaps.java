package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class zzaps {

    /* renamed from: a, reason: collision with root package name */
    public zzapb f4451a;

    /* renamed from: b, reason: collision with root package name */
    public final zzapg f4452b;

    /* renamed from: c, reason: collision with root package name */
    public final PriorityBlockingQueue f4453c;

    /* renamed from: d, reason: collision with root package name */
    public final zzaoz f4454d;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicInteger f4455e;

    /* renamed from: f, reason: collision with root package name */
    public final zzapi f4456f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f4457g;
    public final HashSet h;
    public final ArrayList i;
    public final PriorityBlockingQueue j;
    public final zzapj[] k;

    public zzaps(zzaoz zzaozVar, zzapi zzapiVar, int i) {
        zzapg zzapgVar = new zzapg(new Handler(Looper.getMainLooper()));
        this.f4455e = new AtomicInteger();
        this.h = new HashSet();
        this.j = new PriorityBlockingQueue();
        this.f4453c = new PriorityBlockingQueue();
        this.f4457g = new ArrayList();
        this.i = new ArrayList();
        this.f4454d = zzaozVar;
        this.f4456f = zzapiVar;
        this.k = new zzapj[4];
        this.f4452b = zzapgVar;
    }

    public final void l() {
        synchronized (this.i) {
            try {
                Iterator it = this.i.iterator();
                while (it.hasNext()) {
                    ((zzapq) it.next()).zza();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzapp zza(zzapp zzappVar) {
        zzappVar.zzf(this);
        synchronized (this.h) {
            this.h.add(zzappVar);
        }
        zzappVar.zzg(this.f4455e.incrementAndGet());
        zzappVar.zzm("add-to-queue");
        l();
        this.j.add(zzappVar);
        return zzappVar;
    }

    public final void zzd() {
        zzapj[] zzapjVarArr;
        zzapb zzapbVar = this.f4451a;
        if (zzapbVar != null) {
            zzapbVar.zzb();
        }
        int i = 0;
        while (true) {
            zzapjVarArr = this.k;
            if (i >= 4) {
                break;
            }
            zzapj zzapjVar = zzapjVarArr[i];
            if (zzapjVar != null) {
                zzapjVar.zza();
            }
            i++;
        }
        PriorityBlockingQueue priorityBlockingQueue = this.j;
        PriorityBlockingQueue priorityBlockingQueue2 = this.f4453c;
        zzaoz zzaozVar = this.f4454d;
        zzapg zzapgVar = this.f4452b;
        zzapb zzapbVar2 = new zzapb(priorityBlockingQueue, priorityBlockingQueue2, zzaozVar, zzapgVar);
        this.f4451a = zzapbVar2;
        zzapbVar2.start();
        for (int i2 = 0; i2 < 4; i2++) {
            zzapj zzapjVar2 = new zzapj(priorityBlockingQueue2, this.f4456f, zzaozVar, zzapgVar);
            zzapjVarArr[i2] = zzapjVar2;
            zzapjVar2.start();
        }
    }
}
