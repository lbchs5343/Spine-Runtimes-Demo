package g;

import android.graphics.RectF;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class aed implements gjn {

    /* renamed from: a, reason: collision with root package name */
    public final gjn f10085a;

    /* renamed from: c, reason: collision with root package name */
    public final float f10086c;

    public aed(float f2, gjn gjnVar) {
        while (gjnVar instanceof aed) {
            gjnVar = ((aed) gjnVar).f10085a;
            f2 += ((aed) gjnVar).f10086c;
        }
        this.f10085a = gjnVar;
        this.f10086c = f2;
    }

    @Override // g.gjn
    public final float b(RectF rectF) {
        return Math.max(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.f10085a.b(rectF) + this.f10086c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof aed)) {
            return false;
        }
        aed aedVar = (aed) obj;
        return this.f10085a.equals(aedVar.f10085a) && this.f10086c == aedVar.f10086c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f10085a, Float.valueOf(this.f10086c)});
    }
}
