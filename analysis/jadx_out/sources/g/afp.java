package g;

import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public class afp implements gew {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f10143a;

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f10144b = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: c, reason: collision with root package name */
    public static final Logger f10145c = Logger.getLogger(afp.class.getName());

    /* renamed from: d, reason: collision with root package name */
    public static final cux f10146d;

    /* renamed from: e, reason: collision with root package name */
    public volatile fds f10147e;

    /* renamed from: f, reason: collision with root package name */
    public volatile Object f10148f;

    /* renamed from: g, reason: collision with root package name */
    public volatile dcl f10149g;

    static {
        cux dluVar;
        try {
            dluVar = new cna(AtomicReferenceFieldUpdater.newUpdater(fds.class, Thread.class, "Oo0Ooo0o00"), AtomicReferenceFieldUpdater.newUpdater(fds.class, fds.class, "o0oO0Ooo"), AtomicReferenceFieldUpdater.newUpdater(afp.class, fds.class, "Oo0o0oOO"), AtomicReferenceFieldUpdater.newUpdater(afp.class, dcl.class, "oOOOOooooO"), AtomicReferenceFieldUpdater.newUpdater(afp.class, Object.class, "o0O00Ooo00"));
            th = null;
        } catch (Throwable th) {
            th = th;
            dluVar = new dlu();
        }
        Throwable th2 = th;
        f10146d = dluVar;
        if (th2 != null) {
            f10145c.logp(Level.SEVERE, "com.android.billingclient.util.concurrent.AbstractResolvableFuture", "<clinit>", "SafeAtomicHelper is broken!", th2);
        }
        f10143a = new Object();
    }

    public static void h(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            f10145c.logp(Level.SEVERE, "com.android.billingclient.util.concurrent.AbstractResolvableFuture", "executeListener", awf.t("RuntimeException while executing runnable ", String.valueOf(runnable), " with executor ", String.valueOf(executor)), (Throwable) e2);
        }
    }

    public static void i(afp afpVar) {
        fds fdsVar;
        cux cuxVar;
        dcl dclVar;
        dcl dclVar2;
        dcl dclVar3;
        do {
            fdsVar = afpVar.f10147e;
            cuxVar = f10146d;
        } while (!cuxVar.i(afpVar, fdsVar, fds.f16624a));
        while (true) {
            dclVar = null;
            if (fdsVar == null) {
                break;
            }
            Thread thread = fdsVar.f16625b;
            if (thread != null) {
                fdsVar.f16625b = null;
                LockSupport.unpark(thread);
            }
            fdsVar = fdsVar.f16626c;
        }
        do {
            dclVar2 = afpVar.f10149g;
        } while (!cuxVar.g(afpVar, dclVar2, dcl.f13964a));
        while (true) {
            dclVar3 = dclVar;
            dclVar = dclVar2;
            if (dclVar == null) {
                break;
            }
            dclVar2 = dclVar.f13967d;
            dclVar.f13967d = dclVar3;
        }
        while (dclVar3 != null) {
            Runnable runnable = dclVar3.f13965b;
            dcl dclVar4 = dclVar3.f13967d;
            h(runnable, dclVar3.f13966c);
            dclVar3 = dclVar4;
        }
    }

    public static final Object j(Object obj) {
        if (obj instanceof fiv) {
            Throwable th = ((fiv) obj).f16863c;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof fdv) {
            throw new ExecutionException(((fdv) obj).f16628a);
        }
        if (obj == f10143a) {
            return null;
        }
        return obj;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        Object obj = this.f10148f;
        if (obj != null) {
            return false;
        }
        if (!f10146d.f(this, obj, f10144b ? new fiv(new CancellationException("Future.cancel() was called.")) : z ? fiv.f16861a : fiv.f16862b)) {
            return false;
        }
        i(this);
        return true;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.f10148f;
        if (obj2 != null) {
            return j(obj2);
        }
        fds fdsVar = this.f10147e;
        fds fdsVar2 = fds.f16624a;
        if (fdsVar != fdsVar2) {
            fds fdsVar3 = new fds();
            do {
                cux cuxVar = f10146d;
                cuxVar.h(fdsVar3, fdsVar);
                if (cuxVar.i(this, fdsVar, fdsVar3)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            m(fdsVar3);
                            throw new InterruptedException();
                        }
                        obj = this.f10148f;
                    } while (obj == null);
                    return j(obj);
                }
                fdsVar = this.f10147e;
            } while (fdsVar != fdsVar2);
        }
        return j(this.f10148f);
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f10148f;
        if (obj != null) {
            return j(obj);
        }
        long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            fds fdsVar = this.f10147e;
            fds fdsVar2 = fds.f16624a;
            if (fdsVar != fdsVar2) {
                fds fdsVar3 = new fds();
                do {
                    cux cuxVar = f10146d;
                    cuxVar.h(fdsVar3, fdsVar);
                    if (cuxVar.i(this, fdsVar, fdsVar3)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                m(fdsVar3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f10148f;
                            if (obj2 != null) {
                                return j(obj2);
                            }
                            nanos = nanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        m(fdsVar3);
                    } else {
                        fdsVar = this.f10147e;
                    }
                } while (fdsVar != fdsVar2);
            }
            return j(this.f10148f);
        }
        while (nanos > 0) {
            Object obj3 = this.f10148f;
            if (obj3 != null) {
                return j(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = nanoTime - System.nanoTime();
        }
        String afpVar = toString();
        String obj4 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = obj4.toLowerCase(locale);
        String str = "Waited " + j + " " + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < 0) {
            String concat = str.concat(" (plus ");
            long j2 = -nanos;
            long convert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
            long nanos2 = j2 - timeUnit.toNanos(convert);
            boolean z = true;
            if (convert != 0 && nanos2 <= 1000) {
                z = false;
            }
            if (convert > 0) {
                String str2 = concat + convert + " " + lowerCase;
                if (z) {
                    str2 = str2.concat(",");
                }
                concat = str2.concat(" ");
            }
            if (z) {
                concat = concat + nanos2 + " nanoseconds ";
            }
            str = concat.concat("delay)");
        }
        if (isDone()) {
            throw new TimeoutException(str.concat(" but future completed as timeout expired"));
        }
        throw new TimeoutException(awf.i(str, " for ", afpVar));
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f10148f instanceof fiv;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f10148f != null;
    }

    public final void k(StringBuilder sb) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                try {
                    obj = get();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            } catch (CancellationException unused2) {
                sb.append("CANCELLED");
                return;
            } catch (RuntimeException e2) {
                sb.append("UNKNOWN, cause=[");
                sb.append(e2.getClass());
                sb.append(" thrown from get()]");
                return;
            } catch (ExecutionException e3) {
                sb.append("FAILURE, cause=[");
                sb.append(e3.getCause());
                sb.append("]");
                return;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        sb.append("SUCCESS, result=[");
        sb.append(obj == this ? "this future" : String.valueOf(obj));
        sb.append("]");
    }

    @Override // g.gew
    public final void l(Runnable runnable, Executor executor) {
        executor.getClass();
        dcl dclVar = this.f10149g;
        dcl dclVar2 = dcl.f13964a;
        if (dclVar != dclVar2) {
            dcl dclVar3 = new dcl(runnable, executor);
            do {
                dclVar3.f13967d = dclVar;
                if (f10146d.g(this, dclVar, dclVar3)) {
                    return;
                } else {
                    dclVar = this.f10149g;
                }
            } while (dclVar != dclVar2);
        }
        h(runnable, executor);
    }

    public final void m(fds fdsVar) {
        fdsVar.f16625b = null;
        while (true) {
            fds fdsVar2 = this.f10147e;
            if (fdsVar2 != fds.f16624a) {
                fds fdsVar3 = null;
                while (fdsVar2 != null) {
                    fds fdsVar4 = fdsVar2.f16626c;
                    if (fdsVar2.f16625b != null) {
                        fdsVar3 = fdsVar2;
                    } else if (fdsVar3 != null) {
                        fdsVar3.f16626c = fdsVar4;
                        if (fdsVar3.f16625b == null) {
                            break;
                        }
                    } else if (!f10146d.i(this, fdsVar2, fdsVar4)) {
                        break;
                    }
                    fdsVar2 = fdsVar4;
                }
                return;
            }
            return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String n() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public final String toString() {
        String concat;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.f10148f instanceof fiv) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            k(sb);
        } else {
            try {
                concat = n();
            } catch (RuntimeException e2) {
                concat = "Exception thrown from implementation: ".concat(String.valueOf(e2.getClass()));
            }
            if (concat != null && !concat.isEmpty()) {
                awf.a("PENDING, info=[", concat, "]", sb);
            } else if (isDone()) {
                k(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
