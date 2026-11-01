package g;

import j$.util.Objects;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;

/* loaded from: classes3.dex */
public final class alw extends ail implements dxr {
    public gew i;
    public ScheduledFuture j;

    public static Object k(Object obj) {
        if (obj instanceof ahl) {
            Throwable th = ((ahl) obj).f10231d;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (!(obj instanceof fjg)) {
            if (obj == ail.f10263b) {
                return null;
            }
            return obj;
        }
        Throwable th2 = ((fjg) obj).f16887c;
        if (th2 != null) {
            throw new ExecutionException(th2);
        }
        ail.f10264c.e().logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "getDoneValue", "Failure.exception is unexpectedly null.");
        throw new ExecutionException(fjg.f16886b.f16887c);
    }

    public static boolean m(Object obj) {
        return !(obj instanceof ffj);
    }

    public static void n(alw alwVar) {
        fwe fweVar;
        fwe fweVar2 = null;
        while (true) {
            alwVar.getClass();
            for (cye h = ail.f10262a.h(alwVar); h != null; h = h.f13741c) {
                Thread thread = h.f13740b;
                if (thread != null) {
                    h.f13740b = null;
                    LockSupport.unpark(thread);
                }
            }
            gew gewVar = alwVar.i;
            if ((alwVar.f10267f instanceof ahl) & (gewVar != null)) {
                Object obj = alwVar.f10267f;
                gewVar.cancel((obj instanceof ahl) && ((ahl) obj).f10230c);
            }
            ScheduledFuture scheduledFuture = alwVar.j;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            alwVar.i = null;
            alwVar.j = null;
            fwe fweVar3 = fweVar2;
            fwe f2 = ail.f10262a.f(alwVar);
            fwe fweVar4 = fweVar3;
            while (f2 != null) {
                fwe fweVar5 = f2.f17506d;
                f2.f17506d = fweVar4;
                fweVar4 = f2;
                f2 = fweVar5;
            }
            while (fweVar4 != null) {
                Runnable runnable = fweVar4.f17504b;
                fweVar = fweVar4.f17506d;
                Objects.requireNonNull(runnable);
                if (runnable instanceof ffj) {
                    ffj ffjVar = (ffj) runnable;
                    alwVar = ffjVar.f16703a;
                    if (alwVar.f10267f == ffjVar) {
                        if (ail.f10262a.i(alwVar, ffjVar, p(ffjVar.f16704b))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = fweVar4.f17505c;
                    Objects.requireNonNull(executor);
                    o(runnable, executor);
                }
                fweVar4 = fweVar;
            }
            return;
            fweVar2 = fweVar;
        }
    }

    public static void o(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e2) {
            ail.f10264c.e().logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "executeListener", awf.t("RuntimeException while executing runnable ", String.valueOf(runnable), " with executor ", String.valueOf(executor)), (Throwable) e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object p(gew gewVar) {
        Object obj;
        Throwable s;
        if (gewVar instanceof dxr) {
            Object obj2 = ((alw) gewVar).f10267f;
            if (obj2 instanceof ahl) {
                ahl ahlVar = (ahl) obj2;
                if (ahlVar.f10230c) {
                    Throwable th = ahlVar.f10231d;
                    obj2 = th != null ? new ahl(th, false) : ahl.f10228a;
                }
            }
            Objects.requireNonNull(obj2);
            return obj2;
        }
        if ((gewVar instanceof ang) && (s = ((ang) gewVar).s()) != null) {
            return new fjg(s);
        }
        boolean isCancelled = gewVar.isCancelled();
        if ((!ail.f10265d) && isCancelled) {
            ahl ahlVar2 = ahl.f10228a;
            Objects.requireNonNull(ahlVar2);
            return ahlVar2;
        }
        boolean z = false;
        while (true) {
            try {
                try {
                    try {
                        obj = gewVar.get();
                        break;
                    } catch (Error e2) {
                        e = e2;
                        return new fjg(e);
                    }
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Throwable th2) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th2;
                }
            } catch (Error | Exception e3) {
                e = e3;
                return new fjg(e);
            } catch (CancellationException e4) {
                return !isCancelled ? new fjg(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(gewVar)), e4)) : new ahl(e4, false);
            } catch (ExecutionException e5) {
                return isCancelled ? new ahl(new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(gewVar)), e5), false) : new fjg(e5.getCause());
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return isCancelled ? new ahl(new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(gewVar))), false) : obj == null ? ail.f10263b : obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0056, code lost:
    
        return true;
     */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean cancel(boolean z) {
        ahl ahlVar;
        Object obj = this.f10267f;
        if (!(obj instanceof ffj) && !(obj == null)) {
            return false;
        }
        if (ail.f10265d) {
            ahlVar = new ahl(new CancellationException("Future.cancel() was called."), z);
        } else {
            ahlVar = z ? ahl.f10229b : ahl.f10228a;
            Objects.requireNonNull(ahlVar);
        }
        boolean z2 = false;
        alw alwVar = this;
        while (true) {
            if (ail.f10262a.i(alwVar, obj, ahlVar)) {
                n(alwVar);
                if (!(obj instanceof ffj)) {
                    break;
                }
                gew gewVar = ((ffj) obj).f16704b;
                if (!(gewVar instanceof dxr)) {
                    gewVar.cancel(z);
                    break;
                }
                alwVar = (alw) gewVar;
                obj = alwVar.f10267f;
                if (!(obj == null) && !(obj instanceof ffj)) {
                    break;
                }
                z2 = true;
            } else {
                obj = alwVar.f10267f;
                if (m(obj)) {
                    return z2;
                }
            }
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        Object obj;
        cye cyeVar = cye.f13739a;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.f10267f;
        if ((obj2 != null) && m(obj2)) {
            return k(obj2);
        }
        cye cyeVar2 = this.f10266e;
        if (cyeVar2 != cyeVar) {
            cye cyeVar3 = new cye();
            do {
                cro croVar = ail.f10262a;
                croVar.k(cyeVar3, cyeVar2);
                if (croVar.l(this, cyeVar2, cyeVar3)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            h(cyeVar3);
                            throw new InterruptedException();
                        }
                        obj = this.f10267f;
                    } while (!((obj != null) & m(obj)));
                    return k(obj);
                }
                cyeVar2 = this.f10266e;
            } while (cyeVar2 != cyeVar);
        }
        Object obj3 = this.f10267f;
        Objects.requireNonNull(obj3);
        return k(obj3);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00cd  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00c0 -> B:34:0x0080). Please report as a decompilation issue!!! */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object get(long j, TimeUnit timeUnit) {
        long j2;
        long nanoTime;
        cye cyeVar = cye.f13739a;
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f10267f;
        if ((obj != null) && m(obj)) {
            return k(obj);
        }
        long j3 = 0;
        long nanoTime2 = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            cye cyeVar2 = this.f10266e;
            if (cyeVar2 != cyeVar) {
                cye cyeVar3 = new cye();
                while (true) {
                    cro croVar = ail.f10262a;
                    croVar.k(cyeVar3, cyeVar2);
                    if (croVar.l(this, cyeVar2, cyeVar3)) {
                        j2 = j3;
                        while (true) {
                            LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                            if (Thread.interrupted()) {
                                h(cyeVar3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f10267f;
                            if ((obj2 != null) && m(obj2)) {
                                return k(obj2);
                            }
                            nanoTime = nanoTime2 - System.nanoTime();
                            if (nanoTime < 1000) {
                                h(cyeVar3);
                                break;
                            }
                            nanos = nanoTime;
                        }
                    } else {
                        long j4 = j3;
                        cyeVar2 = this.f10266e;
                        if (cyeVar2 == cyeVar) {
                            break;
                        }
                        j3 = j4;
                    }
                }
                nanos = nanoTime;
                if (nanos <= j2) {
                    String alwVar = toString();
                    String obj3 = timeUnit.toString();
                    Locale locale = Locale.ROOT;
                    String lowerCase = obj3.toLowerCase(locale);
                    String str = "Waited " + j + " " + timeUnit.toString().toLowerCase(locale);
                    if (nanos + 1000 < j2) {
                        String concat = str.concat(" (plus ");
                        long j5 = -nanos;
                        long convert = timeUnit.convert(j5, TimeUnit.NANOSECONDS);
                        long nanos2 = j5 - timeUnit.toNanos(convert);
                        boolean z = convert == j2 || nanos2 > 1000;
                        if (convert > j2) {
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
                    throw new TimeoutException(awf.i(str, " for ", alwVar));
                }
                Object obj4 = this.f10267f;
                if ((obj4 != null) && m(obj4)) {
                    return k(obj4);
                }
                if (Thread.interrupted()) {
                    throw new InterruptedException();
                }
                nanoTime = nanoTime2 - System.nanoTime();
                nanos = nanoTime;
                if (nanos <= j2) {
                }
            }
            Object obj5 = this.f10267f;
            Objects.requireNonNull(obj5);
            return k(obj5);
        }
        j2 = 0;
        if (nanos <= j2) {
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f10267f instanceof ahl;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.f10267f;
        return (obj != null) & m(obj);
    }

    @Override // g.gew
    public final void l(Runnable runnable, Executor executor) {
        fwe fweVar;
        fwe fweVar2 = fwe.f17503a;
        if (executor == null) {
            throw new NullPointerException("Executor was null.");
        }
        if (!isDone() && (fweVar = this.f10268g) != fweVar2) {
            fwe fweVar3 = new fwe(runnable, executor);
            do {
                fweVar3.f17506d = fweVar;
                if (ail.f10262a.g(this, fweVar, fweVar3)) {
                    return;
                } else {
                    fweVar = this.f10268g;
                }
            } while (fweVar != fweVar2);
        }
        o(runnable, executor);
    }

    public final void q(StringBuilder sb) {
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
            } catch (ExecutionException e2) {
                sb.append("FAILURE, cause=[");
                sb.append(e2.getCause());
                sb.append("]");
                return;
            } catch (Exception e3) {
                sb.append("UNKNOWN, cause=[");
                sb.append(e3.getClass());
                sb.append(" thrown from get()]");
                return;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        sb.append("SUCCESS, result=[");
        if (obj == null) {
            sb.append("null");
        } else if (obj == this) {
            sb.append("this future");
        } else {
            sb.append(obj.getClass().getName());
            sb.append("@");
            sb.append(Integer.toHexString(System.identityHashCode(obj)));
        }
        sb.append("]");
    }

    public final String r() {
        gew gewVar = this.i;
        ScheduledFuture scheduledFuture = this.j;
        if (gewVar == null) {
            return null;
        }
        String ad = tn.ad("inputFuture=[", gewVar.toString(), "]");
        if (scheduledFuture == null) {
            return ad;
        }
        long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        if (delay <= 0) {
            return ad;
        }
        return ad + ", remaining delay=[" + delay + " ms]";
    }

    @Override // g.ang
    public final Throwable s() {
        if (!(this instanceof dxr)) {
            return null;
        }
        Object obj = this.f10267f;
        if (obj instanceof fjg) {
            return ((fjg) obj).f16887c;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a8, code lost:
    
        if (r3.isEmpty() != false) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String toString() {
        String concat;
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (this.f10267f instanceof ahl) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            q(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            Object obj = this.f10267f;
            if (obj instanceof ffj) {
                sb.append(", setFuture=[");
                gew gewVar = ((ffj) obj).f16704b;
                try {
                    if (gewVar == this) {
                        sb.append("this future");
                    } else {
                        sb.append(gewVar);
                    }
                } catch (Throwable th) {
                    if ((th instanceof Error) && !(th instanceof StackOverflowError)) {
                        throw th;
                    }
                    sb.append("Exception thrown from implementation: ");
                    sb.append(th.getClass());
                }
                sb.append("]");
            } else {
                try {
                    concat = r();
                    if (concat != null) {
                    }
                    concat = null;
                } catch (Throwable th2) {
                    if ((th2 instanceof Error) && !(th2 instanceof StackOverflowError)) {
                        throw th2;
                    }
                    concat = "Exception thrown from implementation: ".concat(String.valueOf(th2.getClass()));
                }
                if (concat != null) {
                    awf.a(", info=[", concat, "]", sb);
                }
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                q(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
