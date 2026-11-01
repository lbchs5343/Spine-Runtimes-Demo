package g;

import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public final class bsc extends CancellationException {
    private final int stopReason;

    public bsc(int i) {
        this.stopReason = i;
    }

    public final int a() {
        return this.stopReason;
    }
}
