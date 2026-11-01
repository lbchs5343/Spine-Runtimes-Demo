package g;

import java.util.concurrent.ScheduledFuture;

/* loaded from: classes.dex */
public final class cby implements fkq {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12618a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f12619b;

    public /* synthetic */ cby(int i, Object obj) {
        this.f12618a = i;
        this.f12619b = obj;
    }

    public final String toString() {
        switch (this.f12618a) {
            case 0:
                return "CancelFutureOnCancel[" + ((ScheduledFuture) this.f12619b) + ']';
            case 1:
                return "CancelHandler.UserSupplied[" + ((and) this.f12619b).getClass().getSimpleName() + '@' + fso.o(this) + ']';
            default:
                return "DisposeOnCancel[" + ((ghk) this.f12619b) + ']';
        }
    }
}
