package g;

import android.os.Build;
import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public final class cer {

    /* renamed from: a, reason: collision with root package name */
    public bzb f12757a;

    public cer(int i, Interpolator interpolator, long j) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.f12757a = new gfa(guj.t(i, interpolator, j));
        } else {
            this.f12757a = new cuo(i, interpolator, j);
        }
    }
}
