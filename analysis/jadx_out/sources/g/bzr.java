package g;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes.dex */
public final class bzr extends er implements Runnable {
    private static volatile Thread _thread;
    private static volatile int debugStatus;
    public static final long j;
    public static final bzr t;

    static {
        Long l;
        bzr bzrVar = new bzr();
        t = bzrVar;
        bzrVar.s(false);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l = 1000L;
        }
        j = timeUnit.toNanos(l.longValue());
    }

    @Override // g.er
    public final void f(Runnable runnable) {
        if (debugStatus == 4) {
            throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
        }
        super.f(runnable);
    }

    @Override // g.bkg
    public final Thread k() {
        Thread thread;
        Thread thread2 = _thread;
        if (thread2 != null) {
            return thread2;
        }
        synchronized (this) {
            thread = _thread;
            if (thread == null) {
                thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
                _thread = thread;
                thread.setContextClassLoader(bzr.class.getClassLoader());
                thread.setDaemon(true);
                thread.start();
            }
        }
        return thread;
    }

    @Override // g.bkg
    public final void p(long j2, ghe gheVar) {
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean isEmpty;
        fla.f16956a.set(this);
        try {
            synchronized (this) {
                int i = debugStatus;
                if (i == 2 || i == 3) {
                    if (isEmpty) {
                        return;
                    } else {
                        return;
                    }
                }
                debugStatus = 1;
                notifyAll();
                long j2 = Long.MAX_VALUE;
                while (true) {
                    Thread.interrupted();
                    long _v = _v();
                    if (_v == Long.MAX_VALUE) {
                        long nanoTime = System.nanoTime();
                        if (j2 == Long.MAX_VALUE) {
                            j2 = j + nanoTime;
                        }
                        long j3 = j2 - nanoTime;
                        if (j3 <= 0) {
                            _thread = null;
                            u();
                            if (isEmpty()) {
                                return;
                            }
                            k();
                            return;
                        }
                        if (_v > j3) {
                            _v = j3;
                        }
                    } else {
                        j2 = Long.MAX_VALUE;
                    }
                    if (_v > 0) {
                        int i2 = debugStatus;
                        if (i2 == 2 || i2 == 3) {
                            _thread = null;
                            u();
                            if (isEmpty()) {
                                return;
                            }
                            k();
                            return;
                        }
                        LockSupport.parkNanos(this, _v);
                    }
                }
            }
        } finally {
            _thread = null;
            u();
            if (!isEmpty()) {
                k();
            }
        }
    }

    @Override // g.er, g.bkg
    public final void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }

    public final synchronized void u() {
        int i = debugStatus;
        if (i == 2 || i == 3) {
            debugStatus = 3;
            er._u.set(this, null);
            er.f16020b.set(this, null);
            notifyAll();
        }
    }
}
