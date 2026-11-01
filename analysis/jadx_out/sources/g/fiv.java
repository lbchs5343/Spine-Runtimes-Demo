package g;

import java.util.concurrent.CancellationException;

/* loaded from: classes3.dex */
public final class fiv {

    /* renamed from: a, reason: collision with root package name */
    public static final fiv f16861a;

    /* renamed from: b, reason: collision with root package name */
    public static final fiv f16862b;

    /* renamed from: c, reason: collision with root package name */
    public final Throwable f16863c;

    static {
        if (afp.f10144b) {
            f16862b = null;
            f16861a = null;
        } else {
            f16862b = new fiv(null);
            f16861a = new fiv(null);
        }
    }

    public fiv(CancellationException cancellationException) {
        this.f16863c = cancellationException;
    }
}
