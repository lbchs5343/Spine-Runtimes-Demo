package g;

import android.graphics.PointF;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.List;

/* loaded from: classes.dex */
public final class dph extends cav {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14589a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ dph(int i, List list) {
        super(list);
        this.f14589a = i;
    }

    @Override // g.cej
    public final Object b(flj fljVar, float f2) {
        Object obj;
        switch (this.f14589a) {
            case 0:
                return Integer.valueOf(c(fljVar, f2));
            case 1:
                return Integer.valueOf(c(fljVar, f2));
            default:
                return (f2 != 1.0f || (obj = fljVar.r) == null) ? (bil) fljVar.p : (bil) obj;
        }
    }

    public int c(flj fljVar, float f2) {
        switch (this.f14589a) {
            case 0:
                if (fljVar.p == null || fljVar.r == null) {
                    throw new IllegalStateException("Missing values for keyframe.");
                }
                return aky.g(((Integer) fljVar.p).intValue(), din.c(f2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f), ((Integer) fljVar.r).intValue());
            default:
                Object obj = fljVar.p;
                if (obj == null || fljVar.r == null) {
                    throw new IllegalStateException("Missing values for keyframe.");
                }
                if (fljVar.f16976e == 784923401) {
                    fljVar.f16976e = ((Integer) obj).intValue();
                }
                int i = fljVar.f16976e;
                if (fljVar.i == 784923401) {
                    fljVar.i = ((Integer) fljVar.r).intValue();
                }
                int i2 = fljVar.i;
                PointF pointF = din.f14231a;
                return (int) ((f2 * (i2 - i)) + i);
        }
    }
}
