package g;

import android.content.Context;
import android.os.SystemClock;
import java.lang.Thread;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public final class fwz implements Thread.UncaughtExceptionHandler {

    /* renamed from: a, reason: collision with root package name */
    public static fwz f17554a;

    /* renamed from: b, reason: collision with root package name */
    public long f17555b;

    /* renamed from: c, reason: collision with root package name */
    public Thread.UncaughtExceptionHandler f17556c;

    /* renamed from: d, reason: collision with root package name */
    public HashSet f17557d;

    /* renamed from: e, reason: collision with root package name */
    public ato f17558e;

    public final void f(Thread thread, Throwable th) {
        try {
            Iterator it = this.f17557d.iterator();
            while (it.hasNext()) {
                try {
                    ((Thread.UncaughtExceptionHandler) it.next()).uncaughtException(thread, th);
                } catch (Throwable unused) {
                }
            }
            this.f17556c.uncaughtException(thread, th);
        } catch (Throwable unused2) {
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        ato atoVar;
        if (SystemClock.uptimeMillis() - this.f17555b < 20000) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        try {
            try {
                this.f17555b = SystemClock.uptimeMillis();
                fur furVar = (fur) eca.f15276a.i;
                boolean z = true;
                if (furVar != null) {
                    try {
                        if (!furVar.dq(th, thread)) {
                            z = false;
                        }
                    } catch (Throwable unused) {
                    }
                }
                if (z) {
                    Iterator it = ((CopyOnWriteArrayList) eca.f15276a.f17730e).iterator();
                    while (it.hasNext()) {
                        it.next();
                        try {
                            cux.x(th);
                        } catch (Throwable unused2) {
                            Context context = eca.f15278c;
                        }
                    }
                    if (z && (atoVar = this.f17558e) != null) {
                        atoVar.b(currentTimeMillis, thread, th);
                        "end dispose ".concat(String.valueOf(th));
                    }
                }
            } catch (Throwable unused3) {
                Context context2 = eca.f15278c;
            }
        } finally {
            f(thread, th);
        }
    }
}
