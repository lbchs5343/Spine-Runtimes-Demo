package g;

import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class zi implements dcy {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f20394a;

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f20395b = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: c, reason: collision with root package name */
    public static final Logger f20396c = Logger.getLogger(zi.class.getName());

    /* renamed from: d, reason: collision with root package name */
    public static final buj f20397d;

    /* renamed from: e, reason: collision with root package name */
    public volatile aoh f20398e;

    /* renamed from: f, reason: collision with root package name */
    public volatile Object f20399f;

    /* renamed from: g, reason: collision with root package name */
    public volatile fxt f20400g;

    static {
        buj btcVar;
        try {
            btcVar = new dcw(AtomicReferenceFieldUpdater.newUpdater(aoh.class, Thread.class, "Oo0Ooo0o00"), AtomicReferenceFieldUpdater.newUpdater(aoh.class, aoh.class, "o0oO0Ooo"), AtomicReferenceFieldUpdater.newUpdater(zi.class, aoh.class, "Oo0o0oOO"), AtomicReferenceFieldUpdater.newUpdater(zi.class, fxt.class, "oOOOOooooO"), AtomicReferenceFieldUpdater.newUpdater(zi.class, Object.class, "o0O00Ooo00"));
            th = null;
        } catch (Throwable th) {
            th = th;
            btcVar = new btc();
        }
        f20397d = btcVar;
        if (th != null) {
            f20396c.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f20394a = new Object();
    }

    public static void h(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            f20396c.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e2);
        }
    }

    public static Object i(Object obj) {
        if (obj instanceof chl) {
            Throwable th = ((chl) obj).f12878c;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof gvv) {
            throw new ExecutionException(((gvv) obj).f18843a);
        }
        if (obj == f20394a) {
            return null;
        }
        return obj;
    }

    public static Object j(Future future) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public static void k(zi ziVar) {
        aoh aohVar;
        fxt fxtVar;
        fxt fxtVar2;
        fxt fxtVar3;
        do {
            aohVar = ziVar.f20398e;
        } while (!f20397d.c(ziVar, aohVar, aoh.f10566a));
        while (true) {
            fxtVar = null;
            if (aohVar == null) {
                break;
            }
            Thread thread = aohVar.f10567b;
            if (thread != null) {
                aohVar.f10567b = null;
                LockSupport.unpark(thread);
            }
            aohVar = aohVar.f10568c;
        }
        do {
            fxtVar2 = ziVar.f20400g;
        } while (!f20397d.d(ziVar, fxtVar2, fxt.f17587a));
        while (true) {
            fxtVar3 = fxtVar;
            fxtVar = fxtVar2;
            if (fxtVar == null) {
                break;
            }
            fxtVar2 = fxtVar.f17590d;
            fxtVar.f17590d = fxtVar3;
        }
        while (fxtVar3 != null) {
            fxt fxtVar4 = fxtVar3.f17590d;
            h(fxtVar3.f17588b, fxtVar3.f17589c);
            fxtVar3 = fxtVar4;
        }
    }

    @Override // g.dcy
    public final void addListener(Runnable runnable, Executor executor) {
        runnable.getClass();
        executor.getClass();
        fxt fxtVar = this.f20400g;
        fxt fxtVar2 = fxt.f17587a;
        if (fxtVar != fxtVar2) {
            fxt fxtVar3 = new fxt(runnable, executor);
            do {
                fxtVar3.f17590d = fxtVar;
                if (f20397d.d(this, fxtVar, fxtVar3)) {
                    return;
                } else {
                    fxtVar = this.f20400g;
                }
            } while (fxtVar != fxtVar2);
        }
        h(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        Object obj = this.f20399f;
        if (obj != null) {
            return false;
        }
        if (!f20397d.e(this, obj, f20395b ? new chl(new CancellationException("Future.cancel() was called."), z) : z ? chl.f12876a : chl.f12877b)) {
            return false;
        }
        k(this);
        return true;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        Object obj;
        aoh aohVar = aoh.f10566a;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.f20399f;
        if (obj2 != null) {
            return i(obj2);
        }
        aoh aohVar2 = this.f20398e;
        if (aohVar2 != aohVar) {
            aoh aohVar3 = new aoh();
            do {
                buj bujVar = f20397d;
                bujVar.b(aohVar3, aohVar2);
                if (bujVar.c(this, aohVar2, aohVar3)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            l(aohVar3);
                            throw new InterruptedException();
                        }
                        obj = this.f20399f;
                    } while (obj == null);
                    return i(obj);
                }
                aohVar2 = this.f20398e;
            } while (aohVar2 != aohVar);
        }
        return i(this.f20399f);
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        aoh aohVar = aoh.f10566a;
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f20399f;
        if (obj != null) {
            return i(obj);
        }
        long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            aoh aohVar2 = this.f20398e;
            if (aohVar2 != aohVar) {
                aoh aohVar3 = new aoh();
                do {
                    buj bujVar = f20397d;
                    bujVar.b(aohVar3, aohVar2);
                    if (bujVar.c(this, aohVar2, aohVar3)) {
                        while (true) {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                l(aohVar3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f20399f;
                            if (obj2 != null) {
                                return i(obj2);
                            }
                            long nanoTime2 = nanoTime - System.nanoTime();
                            if (nanoTime2 < 1000) {
                                l(aohVar3);
                                nanos = nanoTime2;
                                break;
                            }
                            nanos = nanoTime2;
                        }
                    } else {
                        aohVar2 = this.f20398e;
                    }
                } while (aohVar2 != aohVar);
            }
            return i(this.f20399f);
        }
        while (nanos > 0) {
            Object obj3 = this.f20399f;
            if (obj3 != null) {
                return i(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = nanoTime - System.nanoTime();
        }
        String ziVar = toString();
        String obj4 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = obj4.toLowerCase(locale);
        StringBuilder l = awf.l(j, "Waited ", " ");
        l.append(timeUnit.toString().toLowerCase(locale));
        String sb = l.toString();
        if (nanos + 1000 < 0) {
            String c2 = awf.c(sb, " (plus ");
            long j2 = -nanos;
            long convert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
            long nanos2 = j2 - timeUnit.toNanos(convert);
            boolean z = convert == 0 || nanos2 > 1000;
            if (convert > 0) {
                String str = c2 + convert + " " + lowerCase;
                if (z) {
                    str = awf.c(str, ",");
                }
                c2 = awf.c(str, " ");
            }
            if (z) {
                c2 = c2 + nanos2 + " nanoseconds ";
            }
            sb = awf.c(c2, "delay)");
        }
        if (isDone()) {
            throw new TimeoutException(awf.c(sb, " but future completed as timeout expired"));
        }
        throw new TimeoutException(awf.i(sb, " for ", ziVar));
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f20399f instanceof chl;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f20399f != null;
    }

    public final void l(aoh aohVar) {
        aohVar.f10567b = null;
        while (true) {
            aoh aohVar2 = this.f20398e;
            if (aohVar2 == aoh.f10566a) {
                return;
            }
            aoh aohVar3 = null;
            while (aohVar2 != null) {
                aoh aohVar4 = aohVar2.f10568c;
                if (aohVar2.f10567b != null) {
                    aohVar3 = aohVar2;
                } else if (aohVar3 != null) {
                    aohVar3.f10568c = aohVar4;
                    if (aohVar3.f10567b == null) {
                        break;
                    }
                } else if (!f20397d.c(this, aohVar2, aohVar4)) {
                    break;
                }
                aohVar2 = aohVar4;
            }
            return;
        }
    }

    public boolean m(Throwable th) {
        th.getClass();
        if (!f20397d.e(this, null, new gvv(th))) {
            return false;
        }
        k(this);
        return true;
    }

    public final void n(StringBuilder sb) {
        try {
            Object j = j(this);
            sb.append("SUCCESS, result=[");
            sb.append(j == this ? "this future" : String.valueOf(j));
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e3) {
            sb.append("FAILURE, cause=[");
            sb.append(e3.getCause());
            sb.append("]");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String o() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.f20399f instanceof chl) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            n(sb);
        } else {
            try {
                str = o();
            } catch (RuntimeException e2) {
                str = "Exception thrown from implementation: " + e2.getClass();
            }
            if (str != null && !str.isEmpty()) {
                awf.a("PENDING, info=[", str, "]", sb);
            } else if (isDone()) {
                n(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
