package g;

import android.graphics.RectF;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class nu implements gjn {

    /* renamed from: a, reason: collision with root package name */
    public final float f19733a;

    public nu(float f2) {
        this.f19733a = f2;
    }

    @Override // g.gjn
    public final float b(RectF rectF) {
        return Math.min(rectF.width(), rectF.height()) * this.f19733a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof nu) && this.f19733a == ((nu) obj).f19733a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f19733a)});
    }

    public final String toString() {
        return awf.x(new StringBuilder(), (int) (this.f19733a * 100.0f), "%");
    }
}
