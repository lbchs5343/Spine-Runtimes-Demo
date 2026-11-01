package g;

import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public final class gib extends CancellationException {

    /* renamed from: a, reason: collision with root package name */
    public final transient fyw f18186a;

    public gib(String str, Throwable th, fyw fywVar) {
        super(str);
        this.f18186a = fywVar;
        if (th != null) {
            initCause(th);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof gib)) {
            return false;
        }
        gib gibVar = (gib) obj;
        return bff.n(gibVar.getMessage(), getMessage()) && bff.n(gibVar.f18186a, this.f18186a) && bff.n(gibVar.getCause(), getCause());
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public final int hashCode() {
        String message = getMessage();
        bff.d(message);
        int hashCode = (this.f18186a.hashCode() + (message.hashCode() * 31)) * 31;
        Throwable cause = getCause();
        return hashCode + (cause != null ? cause.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return super.toString() + "; job=" + this.f18186a;
    }
}
