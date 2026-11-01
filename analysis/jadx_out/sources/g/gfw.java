package g;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;

/* loaded from: classes3.dex */
public final class gfw {

    /* renamed from: a, reason: collision with root package name */
    public fyg f18054a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f18055b;

    /* renamed from: c, reason: collision with root package name */
    public final amr f18056c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f18057d;

    /* renamed from: e, reason: collision with root package name */
    public final String f18058e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f18059f;

    public gfw(amr amrVar, String str) {
        bff.p(str, abn.EXTRA_UA_APP_NAME);
        this.f18056c = amrVar;
        this.f18058e = str;
        this.f18055b = new ArrayList();
    }

    public final boolean h(fyg fygVar, long j, boolean z) {
        bff.p(fygVar, "task");
        gfw gfwVar = fygVar.i;
        if (gfwVar != this) {
            if (gfwVar != null) {
                throw new IllegalStateException("task is in multiple queues");
            }
            fygVar.i = this;
        }
        long nanoTime = System.nanoTime();
        long j2 = nanoTime + j;
        ArrayList arrayList = this.f18055b;
        int indexOf = arrayList.indexOf(fygVar);
        if (indexOf != -1) {
            if (fygVar.f17634f <= j2) {
                if (amr.f10486b.isLoggable(Level.FINE)) {
                    egh.aa(fygVar, this, "already scheduled");
                    return false;
                }
            }
            arrayList.remove(indexOf);
        }
        fygVar.f17634f = j2;
        if (amr.f10486b.isLoggable(Level.FINE)) {
            egh.aa(fygVar, this, z ? "run again after ".concat(egh.x(j2 - nanoTime)) : "scheduled after ".concat(egh.x(j2 - nanoTime)));
        }
        Iterator it = arrayList.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            if (((fyg) it.next()).f17634f - nanoTime > j) {
                break;
            }
            i++;
        }
        if (i == -1) {
            i = arrayList.size();
        }
        arrayList.add(i, fygVar);
        return i == 0;
    }

    public final void i() {
        byte[] bArr = erq.f16043c;
        synchronized (this.f18056c) {
            if (k()) {
                this.f18056c.k(this);
            }
        }
    }

    public final void j() {
        byte[] bArr = erq.f16043c;
        synchronized (this.f18056c) {
            this.f18059f = true;
            if (k()) {
                this.f18056c.k(this);
            }
        }
    }

    public final boolean k() {
        fyg fygVar = this.f18054a;
        if (fygVar != null && fygVar.h) {
            this.f18057d = true;
        }
        ArrayList arrayList = this.f18055b;
        boolean z = false;
        for (int size = arrayList.size() - 1; -1 < size; size--) {
            if (((fyg) arrayList.get(size)).h) {
                fyg fygVar2 = (fyg) arrayList.get(size);
                if (amr.f10486b.isLoggable(Level.FINE)) {
                    egh.aa(fygVar2, this, "canceled");
                }
                arrayList.remove(size);
                z = true;
            }
        }
        return z;
    }

    public final void l(fyg fygVar, long j) {
        bff.p(fygVar, "task");
        synchronized (this.f18056c) {
            if (!this.f18059f) {
                if (h(fygVar, j, false)) {
                    this.f18056c.k(this);
                }
            } else if (fygVar.h) {
                if (amr.f10486b.isLoggable(Level.FINE)) {
                    egh.aa(fygVar, this, "schedule canceled (queue is shutdown)");
                }
            } else {
                if (amr.f10486b.isLoggable(Level.FINE)) {
                    egh.aa(fygVar, this, "schedule failed (queue is shutdown)");
                }
                throw new RejectedExecutionException();
            }
        }
    }

    public final String toString() {
        return this.f18058e;
    }
}
