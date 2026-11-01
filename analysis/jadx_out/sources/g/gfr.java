package g;

import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public final class gfr extends CancellationException {
    private final int reason;

    public gfr(int i) {
        this.reason = i;
    }

    public final int a() {
        return this.reason;
    }
}
