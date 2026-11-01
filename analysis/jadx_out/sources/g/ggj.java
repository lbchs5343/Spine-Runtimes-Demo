package g;

import android.graphics.Rect;
import android.transition.Transition;

/* loaded from: classes.dex */
public final class ggj extends Transition.EpicenterCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18092a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Rect f18093b;

    public /* synthetic */ ggj(int i, Rect rect) {
        this.f18092a = i;
        this.f18093b = rect;
    }

    @Override // android.transition.Transition.EpicenterCallback
    public final Rect onGetEpicenter(Transition transition) {
        switch (this.f18092a) {
            case 0:
                return this.f18093b;
            default:
                Rect rect = this.f18093b;
                if (rect == null || rect.isEmpty()) {
                    return null;
                }
                return rect;
        }
    }
}
