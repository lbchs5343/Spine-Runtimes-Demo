package g;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class gda extends grq {
    @Override // g.grq
    public final void d(Canvas canvas, Matrix matrix, int i) {
        bj(i);
    }

    @Override // g.grq, g.glt
    public final void m(RectF rectF, Matrix matrix, boolean z) {
        super.m(rectF, matrix, z);
        rectF.set(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
    }
}
