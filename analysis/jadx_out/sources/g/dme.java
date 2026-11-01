package g;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class dme {
    public static final dey n = new dey();
    public boolean o;
    public long p;
    public long q;

    public void _au() {
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        if (this.o && this.p - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public dme _av(long j) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        bff.p(timeUnit, "unit");
        if (j >= 0) {
            this.q = timeUnit.toNanos(j);
            return this;
        }
        throw new IllegalArgumentException(("timeout < 0: " + j).toString());
    }

    public dme a(long j) {
        this.o = true;
        this.p = j;
        return this;
    }

    public boolean r() {
        return this.o;
    }

    public dme s() {
        this.o = false;
        return this;
    }

    public dme t() {
        this.q = 0L;
        return this;
    }

    public long u() {
        if (this.o) {
            return this.p;
        }
        throw new IllegalStateException("No deadline");
    }
}
