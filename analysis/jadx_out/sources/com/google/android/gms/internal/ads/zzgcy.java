package com.google.android.gms.internal.ads;

import g.acr;
import g.arb;
import g.ary;
import g.awf;
import g.axv;
import g.ceg;
import g.ctm;
import g.cxi;
import g.dcy;
import g.eaf;
import g.eiq;
import g.hcy;
import g.mz;
import j$.util.Objects;
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

/* loaded from: classes3.dex */
public abstract class zzgcy<V> extends zzgfk implements dcy {
    public static final Object r;
    public static final boolean s;
    public static final ctm t;
    public static final acr u;
    public volatile mz v;
    public volatile Object w;
    public volatile hcy x;

    static {
        boolean z;
        acr aryVar;
        Throwable th;
        Throwable th2;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z = false;
        }
        s = z;
        t = new ctm(1, zzgcy.class);
        try {
            aryVar = new cxi();
            th = null;
            th2 = null;
        } catch (Error | Exception e2) {
            try {
                th = null;
                th2 = e2;
                aryVar = new axv(AtomicReferenceFieldUpdater.newUpdater(mz.class, Thread.class, "Oo0Ooo0o00"), AtomicReferenceFieldUpdater.newUpdater(mz.class, mz.class, "o0oO0Ooo"), AtomicReferenceFieldUpdater.newUpdater(zzgcy.class, mz.class, "Oo0o0oOO"), AtomicReferenceFieldUpdater.newUpdater(zzgcy.class, hcy.class, "oOOOOooooO"), AtomicReferenceFieldUpdater.newUpdater(zzgcy.class, Object.class, "o0O00Ooo00"));
            } catch (Error | Exception e3) {
                aryVar = new ary();
                th = e3;
                th2 = e2;
            }
        }
        u = aryVar;
        if (th != null) {
            ctm ctmVar = t;
            Logger e4 = ctmVar.e();
            Level level = Level.SEVERE;
            e4.logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            ctmVar.e().logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
        r = new Object();
    }

    public static void aa(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e2) {
            t.e().logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "executeListener", awf.t("RuntimeException while executing runnable ", String.valueOf(runnable), " with executor ", String.valueOf(executor)), (Throwable) e2);
        }
    }

    public static final Object ab(Object obj) {
        if (obj instanceof eiq) {
            Throwable th = ((eiq) obj).f15606d;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof ceg) {
            throw new ExecutionException(((ceg) obj).f12734b);
        }
        if (obj == r) {
            return null;
        }
        return obj;
    }

    public static void y(zzgcy zzgcyVar, boolean z) {
        hcy hcyVar = null;
        while (true) {
            for (mz cd = u.cd(zzgcyVar); cd != null; cd = cd.f19689c) {
                Thread thread = cd.f19688b;
                if (thread != null) {
                    cd.f19688b = null;
                    LockSupport.unpark(thread);
                }
            }
            if (z) {
                zzgcyVar.ai();
            }
            zzgcyVar.g();
            hcy hcyVar2 = hcyVar;
            hcy cj = u.cj(zzgcyVar);
            hcy hcyVar3 = hcyVar2;
            while (cj != null) {
                hcy hcyVar4 = cj.f19249d;
                cj.f19249d = hcyVar3;
                hcyVar3 = cj;
                cj = hcyVar4;
            }
            while (hcyVar3 != null) {
                hcyVar = hcyVar3.f19249d;
                Runnable runnable = hcyVar3.f19247b;
                Objects.requireNonNull(runnable);
                if (runnable instanceof g.an) {
                    g.an anVar = (g.an) runnable;
                    zzgcyVar = anVar.f10504a;
                    if (zzgcyVar.w == anVar) {
                        if (u.bz(zzgcyVar, anVar, z(anVar.f10505b))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = hcyVar3.f19248c;
                    Objects.requireNonNull(executor);
                    aa(runnable, executor);
                }
                hcyVar3 = hcyVar;
            }
            return;
            z = false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object z(dcy dcyVar) {
        Object obj;
        Throwable ag;
        if (dcyVar instanceof arb) {
            Object obj2 = ((zzgcy) dcyVar).w;
            if (obj2 instanceof eiq) {
                eiq eiqVar = (eiq) obj2;
                if (eiqVar.f15605c) {
                    Throwable th = eiqVar.f15606d;
                    obj2 = th != null ? new eiq(th, false) : eiq.f15603a;
                }
            }
            Objects.requireNonNull(obj2);
            return obj2;
        }
        if ((dcyVar instanceof zzgfk) && (ag = ((zzgfk) dcyVar).ag()) != null) {
            return new ceg(ag);
        }
        boolean isCancelled = dcyVar.isCancelled();
        if ((!s) && isCancelled) {
            eiq eiqVar2 = eiq.f15603a;
            Objects.requireNonNull(eiqVar2);
            return eiqVar2;
        }
        boolean z = false;
        while (true) {
            try {
                try {
                    try {
                        obj = dcyVar.get();
                        break;
                    } catch (Error e2) {
                        e = e2;
                        return new ceg(e);
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
                return new ceg(e);
            } catch (CancellationException e4) {
                return !isCancelled ? new ceg(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(dcyVar)), e4)) : new eiq(e4, false);
            } catch (ExecutionException e5) {
                return isCancelled ? new eiq(new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(dcyVar)), e5), false) : new ceg(e5.getCause());
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return isCancelled ? new eiq(new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(dcyVar))), false) : obj == null ? r : obj;
    }

    public final void ac(Future future) {
        if ((future != null) && isCancelled()) {
            future.cancel(ah());
        }
    }

    public final void ad(StringBuilder sb) {
        V v;
        boolean z = false;
        while (true) {
            try {
                try {
                    v = get();
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
        if (v == null) {
            sb.append("null");
        } else if (v == this) {
            sb.append("this future");
        } else {
            sb.append(v.getClass().getName());
            sb.append("@");
            sb.append(Integer.toHexString(System.identityHashCode(v)));
        }
        sb.append("]");
    }

    @Override // g.dcy
    public void addListener(Runnable runnable, Executor executor) {
        hcy hcyVar;
        hcy hcyVar2 = hcy.f19246a;
        zzfwq.zzc(runnable, "Runnable was null.");
        zzfwq.zzc(executor, "Executor was null.");
        if (!isDone() && (hcyVar = this.x) != hcyVar2) {
            hcy hcyVar3 = new hcy(runnable, executor);
            do {
                hcyVar3.f19249d = hcyVar;
                if (u.cc(this, hcyVar, hcyVar3)) {
                    return;
                } else {
                    hcyVar = this.x;
                }
            } while (hcyVar != hcyVar2);
        }
        aa(runnable, executor);
    }

    public final void ae(mz mzVar) {
        mzVar.f19688b = null;
        while (true) {
            mz mzVar2 = this.v;
            if (mzVar2 != mz.f19687a) {
                mz mzVar3 = null;
                while (mzVar2 != null) {
                    mz mzVar4 = mzVar2.f19689c;
                    if (mzVar2.f19688b != null) {
                        mzVar3 = mzVar2;
                    } else if (mzVar3 != null) {
                        mzVar3.f19689c = mzVar4;
                        if (mzVar3.f19688b == null) {
                            break;
                        }
                    } else if (!u.ch(this, mzVar2, mzVar4)) {
                        break;
                    }
                    mzVar2 = mzVar4;
                }
                return;
            }
            return;
        }
    }

    public final void af(dcy dcyVar) {
        ceg cegVar;
        dcyVar.getClass();
        Object obj = this.w;
        if (obj == null) {
            if (dcyVar.isDone()) {
                if (u.bz(this, null, z(dcyVar))) {
                    y(this, false);
                    return;
                }
                return;
            }
            g.an anVar = new g.an(this, dcyVar);
            if (u.bz(this, null, anVar)) {
                try {
                    dcyVar.addListener(anVar, eaf.zza);
                    return;
                } catch (Throwable th) {
                    try {
                        cegVar = new ceg(th);
                    } catch (Error | Exception unused) {
                        cegVar = ceg.f12733a;
                    }
                    u.bz(this, anVar, cegVar);
                    return;
                }
            }
            obj = this.w;
        }
        if (obj instanceof eiq) {
            dcyVar.cancel(((eiq) obj).f15605c);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgfk
    public final Throwable ag() {
        if (!(this instanceof arb)) {
            return null;
        }
        Object obj = this.w;
        if (obj instanceof ceg) {
            return ((ceg) obj).f12734b;
        }
        return null;
    }

    public final boolean ah() {
        Object obj = this.w;
        return (obj instanceof eiq) && ((eiq) obj).f15605c;
    }

    public void ai() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0056, code lost:
    
        return true;
     */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean cancel(boolean z) {
        eiq eiqVar;
        Object obj = this.w;
        if (!(obj instanceof g.an) && !(obj == null)) {
            return false;
        }
        if (s) {
            eiqVar = new eiq(new CancellationException("Future.cancel() was called."), z);
        } else {
            eiqVar = z ? eiq.f15604b : eiq.f15603a;
            Objects.requireNonNull(eiqVar);
        }
        boolean z2 = false;
        zzgcy<V> zzgcyVar = this;
        while (true) {
            if (u.bz(zzgcyVar, obj, eiqVar)) {
                y(zzgcyVar, z);
                if (!(obj instanceof g.an)) {
                    break;
                }
                dcy dcyVar = ((g.an) obj).f10505b;
                if (!(dcyVar instanceof arb)) {
                    dcyVar.cancel(z);
                    break;
                }
                zzgcyVar = (zzgcy) dcyVar;
                obj = zzgcyVar.w;
                if (!(obj == null) && !(obj instanceof g.an)) {
                    break;
                }
                z2 = true;
            } else {
                obj = zzgcyVar.w;
                if (!(obj instanceof g.an)) {
                    return z2;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String f() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public void g() {
    }

    @Override // java.util.concurrent.Future
    public Object get() throws InterruptedException, ExecutionException {
        Object obj;
        mz mzVar = mz.f19687a;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.w;
        if ((obj2 != null) && (!(obj2 instanceof g.an))) {
            return ab(obj2);
        }
        mz mzVar2 = this.v;
        if (mzVar2 != mzVar) {
            mz mzVar3 = new mz();
            do {
                acr acrVar = u;
                acrVar.ca(mzVar3, mzVar2);
                if (acrVar.ch(this, mzVar2, mzVar3)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            ae(mzVar3);
                            throw new InterruptedException();
                        }
                        obj = this.w;
                    } while (!((obj != null) & (!(obj instanceof g.an))));
                    return ab(obj);
                }
                mzVar2 = this.v;
            } while (mzVar2 != mzVar);
        }
        Object obj3 = this.w;
        Objects.requireNonNull(obj3);
        return ab(obj3);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d1  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00c4 -> B:34:0x0082). Please report as a decompilation issue!!! */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object get(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        long j2;
        boolean z;
        long nanoTime;
        mz mzVar = mz.f19687a;
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.w;
        if ((obj != null) && (!(obj instanceof g.an))) {
            return ab(obj);
        }
        long j3 = 0;
        long nanoTime2 = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            mz mzVar2 = this.v;
            if (mzVar2 != mzVar) {
                mz mzVar3 = new mz();
                z = true;
                while (true) {
                    acr acrVar = u;
                    acrVar.ca(mzVar3, mzVar2);
                    if (acrVar.ch(this, mzVar2, mzVar3)) {
                        j2 = j3;
                        while (true) {
                            LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                            if (Thread.interrupted()) {
                                ae(mzVar3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.w;
                            if ((obj2 != null) && (!(obj2 instanceof g.an))) {
                                return ab(obj2);
                            }
                            nanoTime = nanoTime2 - System.nanoTime();
                            if (nanoTime < 1000) {
                                ae(mzVar3);
                                break;
                            }
                            nanos = nanoTime;
                        }
                    } else {
                        long j4 = j3;
                        mzVar2 = this.v;
                        if (mzVar2 == mzVar) {
                            break;
                        }
                        j3 = j4;
                    }
                }
                nanos = nanoTime;
                if (nanos <= j2) {
                    String zzgcyVar = toString();
                    String obj3 = timeUnit.toString();
                    Locale locale = Locale.ROOT;
                    String lowerCase = obj3.toLowerCase(locale);
                    String str = "Waited " + j + " " + timeUnit.toString().toLowerCase(locale);
                    if (nanos + 1000 < j2) {
                        String concat = str.concat(" (plus ");
                        long j5 = -nanos;
                        long convert = timeUnit.convert(j5, TimeUnit.NANOSECONDS);
                        long nanos2 = j5 - timeUnit.toNanos(convert);
                        if (convert != j2 && nanos2 <= 1000) {
                            z = false;
                        }
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
                    throw new TimeoutException(awf.i(str, " for ", zzgcyVar));
                }
                Object obj4 = this.w;
                if ((obj4 != null) && (!(obj4 instanceof g.an))) {
                    return ab(obj4);
                }
                if (Thread.interrupted()) {
                    throw new InterruptedException();
                }
                nanoTime = nanoTime2 - System.nanoTime();
                nanos = nanoTime;
                if (nanos <= j2) {
                }
            }
            Object obj5 = this.w;
            Objects.requireNonNull(obj5);
            return ab(obj5);
        }
        j2 = 0;
        z = true;
        if (nanos <= j2) {
        }
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.w instanceof eiq;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return (this.w != null) & (!(r0 instanceof g.an));
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String toString() {
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
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            ad(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            Object obj = this.w;
            if (obj instanceof g.an) {
                sb.append(", setFuture=[");
                dcy dcyVar = ((g.an) obj).f10505b;
                try {
                    if (dcyVar == this) {
                        sb.append("this future");
                    } else {
                        sb.append(dcyVar);
                    }
                } catch (Exception e2) {
                    e = e2;
                    sb.append("Exception thrown from implementation: ");
                    sb.append(e.getClass());
                    sb.append("]");
                    if (isDone()) {
                    }
                    sb.append("]");
                    return sb.toString();
                } catch (StackOverflowError e3) {
                    e = e3;
                    sb.append("Exception thrown from implementation: ");
                    sb.append(e.getClass());
                    sb.append("]");
                    if (isDone()) {
                    }
                    sb.append("]");
                    return sb.toString();
                }
                sb.append("]");
            } else {
                try {
                    concat = zzfxf.zza(f());
                } catch (Exception | StackOverflowError e4) {
                    concat = "Exception thrown from implementation: ".concat(String.valueOf(e4.getClass()));
                }
                if (concat != null) {
                    awf.a(", info=[", concat, "]", sb);
                }
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                ad(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public boolean zzc(Object obj) {
        if (obj == null) {
            obj = r;
        }
        if (!u.bz(this, null, obj)) {
            return false;
        }
        y(this, false);
        return true;
    }

    public boolean zzd(Throwable th) {
        th.getClass();
        if (!u.bz(this, null, new ceg(th))) {
            return false;
        }
        y(this, false);
        return true;
    }
}
