package g;

import android.window.BackEvent;

/* loaded from: classes.dex */
public final class cmz {

    /* renamed from: a, reason: collision with root package name */
    public static final cmz f13155a = new cmz();

    public final float b(BackEvent backEvent) {
        bff.p(backEvent, "backEvent");
        return backEvent.getTouchX();
    }

    public final float c(BackEvent backEvent) {
        bff.p(backEvent, "backEvent");
        return backEvent.getTouchY();
    }

    public final BackEvent d(float f2, float f3, float f4, int i) {
        return new BackEvent(f2, f3, f4, i);
    }

    public final float e(BackEvent backEvent) {
        bff.p(backEvent, "backEvent");
        return backEvent.getProgress();
    }

    public final int f(BackEvent backEvent) {
        bff.p(backEvent, "backEvent");
        return backEvent.getSwipeEdge();
    }
}
