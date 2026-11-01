package g;

import android.graphics.RectF;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class ett implements gjn {

    /* renamed from: a, reason: collision with root package name */
    public final float f16157a;

    public ett(float f2) {
        this.f16157a = f2;
    }

    @Override // g.gjn
    public final float b(RectF rectF) {
        return this.f16157a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ett) && this.f16157a == ((ett) obj).f16157a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f16157a)});
    }

    public final String toString() {
        return this.f16157a + "px";
    }
}
