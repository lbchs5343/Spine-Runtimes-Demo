package g;

import android.graphics.RectF;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class tf implements gjn {

    /* renamed from: a, reason: collision with root package name */
    public final float f20029a;

    public tf(float f2) {
        this.f20029a = f2;
    }

    @Override // g.gjn
    public final float b(RectF rectF) {
        return dzm.ac(this.f20029a, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, Math.min(rectF.width() / 2.0f, rectF.height() / 2.0f));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof tf) && this.f20029a == ((tf) obj).f20029a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f20029a)});
    }
}
