package g;

import java.io.InterruptedIOException;
import java.util.AbstractCollection;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class cop {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractCollection f13230a;

    /* renamed from: b, reason: collision with root package name */
    public final AbstractCollection f13231b;

    /* renamed from: c, reason: collision with root package name */
    public int f13232c;

    /* renamed from: d, reason: collision with root package name */
    public Object f13233d;

    /* renamed from: e, reason: collision with root package name */
    public final int f13234e;

    /* renamed from: f, reason: collision with root package name */
    public Object f13235f;

    public cop() {
        this.f13232c = 64;
        this.f13234e = 5;
        this.f13230a = new ArrayDeque();
        this.f13231b = new ArrayDeque();
        this.f13233d = new ArrayDeque();
    }

    public cop(Class cls, Class[] clsArr) {
        HashSet hashSet = new HashSet();
        this.f13235f = hashSet;
        this.f13230a = new HashSet();
        this.f13232c = 0;
        this.f13234e = 0;
        this.f13231b = new HashSet();
        hashSet.add(cls);
        for (Class cls2 : clsArr) {
            bff.aj(cls2, "Null interface");
        }
        Collections.addAll((HashSet) this.f13235f, clsArr);
    }

    public void g(ArrayDeque arrayDeque, Object obj) {
        synchronized (this) {
            if (!arrayDeque.remove(obj)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        j();
    }

    public void h(byc bycVar) {
        bycVar.f12432c.decrementAndGet();
        g((ArrayDeque) this.f13231b, bycVar);
    }

    public void i(djj djjVar) {
        if (((HashSet) this.f13235f).contains(djjVar.f14276a)) {
            throw new IllegalArgumentException("Components are not allowed to depend on interfaces they themselves provide.");
        }
        ((HashSet) this.f13230a).add(djjVar);
    }

    public void j() {
        byte[] bArr = erq.f16043c;
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            try {
                Iterator it = ((ArrayDeque) this.f13230a).iterator();
                bff.e(it, "readyAsyncCalls.iterator()");
                while (it.hasNext()) {
                    byc bycVar = (byc) it.next();
                    if (((ArrayDeque) this.f13231b).size() >= this.f13232c) {
                        break;
                    }
                    if (bycVar.f12432c.get() < this.f13234e) {
                        it.remove();
                        bycVar.f12432c.incrementAndGet();
                        arrayList.add(bycVar);
                        ((ArrayDeque) this.f13231b).add(bycVar);
                    }
                }
                m();
            } catch (Throwable th) {
                throw th;
            }
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            byc bycVar2 = (byc) arrayList.get(i);
            ExecutorService l = l();
            bycVar2.getClass();
            ib ibVar = bycVar2.f12430a;
            byte[] bArr2 = erq.f16043c;
            try {
                try {
                    l.execute(bycVar2);
                } catch (RejectedExecutionException e2) {
                    InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                    interruptedIOException.initCause(e2);
                    ibVar.q(interruptedIOException);
                    bycVar2.f12431b.r(interruptedIOException);
                    ibVar.j.s.h(bycVar2);
                }
            } catch (Throwable th2) {
                ibVar.j.s.h(bycVar2);
                throw th2;
            }
        }
    }

    public bdf k() {
        if (((avn) this.f13233d) != null) {
            return new bdf(new HashSet((HashSet) this.f13235f), new HashSet((HashSet) this.f13230a), this.f13232c, this.f13234e, (avn) this.f13233d, (HashSet) this.f13231b);
        }
        throw new IllegalStateException("Missing required property: factory.");
    }

    public synchronized ExecutorService l() {
        ExecutorService executorService;
        try {
            if (((ExecutorService) this.f13235f) == null) {
                TimeUnit timeUnit = TimeUnit.SECONDS;
                SynchronousQueue synchronousQueue = new SynchronousQueue();
                String str = erq.f16047g + " Dispatcher";
                bff.p(str, abn.EXTRA_UA_APP_NAME);
                this.f13235f = new ThreadPoolExecutor(0, he.UNDEFINED_ITEM_ID, 60L, timeUnit, synchronousQueue, new bhm(str, false));
            }
            executorService = (ExecutorService) this.f13235f;
            bff.d(executorService);
        } catch (Throwable th) {
            throw th;
        }
        return executorService;
    }

    public synchronized int m() {
        return ((ArrayDeque) this.f13231b).size() + ((ArrayDeque) this.f13233d).size();
    }
}
