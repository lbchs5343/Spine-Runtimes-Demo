package g;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes3.dex */
public class boo extends dme {

    /* renamed from: d, reason: collision with root package name */
    public static final ReentrantLock f11911d;

    /* renamed from: e, reason: collision with root package name */
    public static final long f11912e;

    /* renamed from: f, reason: collision with root package name */
    public static boo f11913f;

    /* renamed from: g, reason: collision with root package name */
    public static final Condition f11914g;
    public static final long h;
    public boolean i;
    public boo j;
    public long k;

    static {
        ReentrantLock reentrantLock = new ReentrantLock();
        f11911d = reentrantLock;
        Condition newCondition = reentrantLock.newCondition();
        bff.e(newCondition, "newCondition(...)");
        f11914g = newCondition;
        long millis = TimeUnit.SECONDS.toMillis(60L);
        h = millis;
        f11912e = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    public void c() {
    }

    public final void l() {
        boo booVar;
        long j = this.q;
        boolean z = this.o;
        if (j != 0 || z) {
            ReentrantLock reentrantLock = f11911d;
            reentrantLock.lock();
            try {
                if (this.i) {
                    throw new IllegalStateException("Unbalanced enter/exit");
                }
                this.i = true;
                if (f11913f == null) {
                    f11913f = new boo();
                    gzk gzkVar = new gzk("Okio Watchdog");
                    gzkVar.setDaemon(true);
                    gzkVar.start();
                }
                long nanoTime = System.nanoTime();
                if (j != 0 && z) {
                    this.k = Math.min(j, u() - nanoTime) + nanoTime;
                } else if (j != 0) {
                    this.k = j + nanoTime;
                } else {
                    if (!z) {
                        throw new AssertionError();
                    }
                    this.k = u();
                }
                long j2 = this.k - nanoTime;
                boo booVar2 = f11913f;
                bff.d(booVar2);
                while (true) {
                    booVar = booVar2.j;
                    if (booVar == null || j2 < booVar.k - nanoTime) {
                        break;
                    } else {
                        booVar2 = booVar;
                    }
                }
                this.j = booVar;
                booVar2.j = this;
                if (booVar2 == f11913f) {
                    f11914g.signal();
                }
                reentrantLock.unlock();
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
    }

    public final boolean m() {
        ReentrantLock reentrantLock = f11911d;
        reentrantLock.lock();
        try {
            if (!this.i) {
                return false;
            }
            this.i = false;
            boo booVar = f11913f;
            while (booVar != null) {
                boo booVar2 = booVar.j;
                if (booVar2 == this) {
                    booVar.j = this.j;
                    this.j = null;
                    return false;
                }
                booVar = booVar2;
            }
            reentrantLock.unlock();
            return true;
        } finally {
            reentrantLock.unlock();
        }
    }
}
