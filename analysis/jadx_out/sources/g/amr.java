package g;

import com.bykv.vk.component.ttvideo.player.C;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public final class amr {

    /* renamed from: a, reason: collision with root package name */
    public static final amr f10485a;

    /* renamed from: b, reason: collision with root package name */
    public static final Logger f10486b;

    /* renamed from: c, reason: collision with root package name */
    public long f10487c;

    /* renamed from: e, reason: collision with root package name */
    public final evf f10489e;
    public boolean h;

    /* renamed from: g, reason: collision with root package name */
    public int f10491g = 10000;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f10488d = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f10490f = new ArrayList();
    public final byd i = new byd(27, this);

    static {
        String str = erq.f16047g + " TaskRunner";
        bff.p(str, abn.EXTRA_UA_APP_NAME);
        f10485a = new amr(new evf(new bhm(str, true)));
        Logger logger = Logger.getLogger(amr.class.getName());
        bff.e(logger, "getLogger(TaskRunner::class.java.name)");
        f10486b = logger;
    }

    public amr(evf evfVar) {
        this.f10489e = evfVar;
    }

    public static final void j(amr amrVar, fyg fygVar) {
        byte[] bArr = erq.f16043c;
        Thread currentThread = Thread.currentThread();
        String name = currentThread.getName();
        currentThread.setName(fygVar.f17635g);
        try {
            long c2 = fygVar.c();
            synchronized (amrVar) {
                amrVar.m(fygVar, c2);
            }
            currentThread.setName(name);
        } catch (Throwable th) {
            synchronized (amrVar) {
                amrVar.m(fygVar, -1L);
                currentThread.setName(name);
                throw th;
            }
        }
    }

    public final void k(gfw gfwVar) {
        bff.p(gfwVar, "taskQueue");
        byte[] bArr = erq.f16043c;
        if (gfwVar.f18054a == null) {
            boolean isEmpty = gfwVar.f18055b.isEmpty();
            ArrayList arrayList = this.f10490f;
            if (isEmpty) {
                arrayList.remove(gfwVar);
            } else {
                bff.p(arrayList, "<this>");
                if (!arrayList.contains(gfwVar)) {
                    arrayList.add(gfwVar);
                }
            }
        }
        if (this.h) {
            notify();
            return;
        }
        byd bydVar = this.i;
        bff.p(bydVar, "runnable");
        ((ThreadPoolExecutor) this.f10489e.f16224f).execute(bydVar);
    }

    public final gfw l() {
        int i;
        synchronized (this) {
            i = this.f10491g;
            this.f10491g = i + 1;
        }
        return new gfw(this, awf.ac(i, "Q"));
    }

    public final void m(fyg fygVar, long j) {
        byte[] bArr = erq.f16043c;
        gfw gfwVar = fygVar.i;
        bff.d(gfwVar);
        if (gfwVar.f18054a != fygVar) {
            throw new IllegalStateException("Check failed.");
        }
        boolean z = gfwVar.f18057d;
        gfwVar.f18057d = false;
        gfwVar.f18054a = null;
        this.f10488d.remove(gfwVar);
        if (j != -1 && !z && !gfwVar.f18059f) {
            gfwVar.h(fygVar, j, true);
        }
        if (gfwVar.f18055b.isEmpty()) {
            return;
        }
        this.f10490f.add(gfwVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0093, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final fyg n() {
        boolean z;
        byte[] bArr = erq.f16043c;
        while (true) {
            ArrayList arrayList = this.f10490f;
            if (arrayList.isEmpty()) {
                break;
            }
            long nanoTime = System.nanoTime();
            Iterator it = arrayList.iterator();
            long j = Long.MAX_VALUE;
            fyg fygVar = null;
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                fyg fygVar2 = (fyg) ((gfw) it.next()).f18055b.get(0);
                long max = Math.max(0L, fygVar2.f17634f - nanoTime);
                if (max > 0) {
                    j = Math.min(max, j);
                } else {
                    if (fygVar != null) {
                        z = true;
                        break;
                    }
                    fygVar = fygVar2;
                }
            }
            ArrayList arrayList2 = this.f10488d;
            if (fygVar != null) {
                byte[] bArr2 = erq.f16043c;
                fygVar.f17634f = -1L;
                gfw gfwVar = fygVar.i;
                bff.d(gfwVar);
                gfwVar.f18055b.remove(fygVar);
                arrayList.remove(gfwVar);
                gfwVar.f18054a = fygVar;
                arrayList2.add(gfwVar);
                if (z || (!this.h && !arrayList.isEmpty())) {
                    byd bydVar = this.i;
                    bff.p(bydVar, "runnable");
                    ((ThreadPoolExecutor) this.f10489e.f16224f).execute(bydVar);
                }
                return fygVar;
            }
            if (!this.h) {
                this.h = true;
                this.f10487c = nanoTime + j;
                try {
                    try {
                        long j2 = j / C.MICROS_PER_SECOND;
                        Long.signum(j2);
                        long j3 = j - (C.MICROS_PER_SECOND * j2);
                        if (j2 > 0 || j > 0) {
                            wait(j2, (int) j3);
                        }
                    } catch (InterruptedException unused) {
                        for (int size = arrayList2.size() - 1; -1 < size; size--) {
                            ((gfw) arrayList2.get(size)).k();
                        }
                        for (int size2 = arrayList.size() - 1; -1 < size2; size2--) {
                            gfw gfwVar2 = (gfw) arrayList.get(size2);
                            gfwVar2.k();
                            if (gfwVar2.f18055b.isEmpty()) {
                                arrayList.remove(size2);
                            }
                        }
                    }
                } finally {
                    this.h = false;
                }
            } else if (j < this.f10487c - nanoTime) {
                notify();
            }
        }
    }
}
