package g;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class egr implements Serializable {
    public final Throwable exception;

    public egr(Throwable th) {
        bff.p(th, "exception");
        this.exception = th;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof egr) && bff.n(this.exception, ((egr) obj).exception);
    }

    public final int hashCode() {
        return this.exception.hashCode();
    }

    public final String toString() {
        return "Failure(" + this.exception + ')';
    }
}
