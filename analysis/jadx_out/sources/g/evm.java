package g;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class evm extends grq {

    /* renamed from: a, reason: collision with root package name */
    public final Path f16237a;

    /* renamed from: b, reason: collision with root package name */
    public final float[] f16238b;

    /* renamed from: f, reason: collision with root package name */
    public final gee f16239f;

    /* renamed from: g, reason: collision with root package name */
    public final cbc f16240g;
    public final RectF h;

    public evm(fts ftsVar, cbc cbcVar) {
        super(ftsVar, cbcVar);
        this.h = new RectF();
        gee geeVar = new gee();
        this.f16239f = geeVar;
        this.f16238b = new float[8];
        this.f16237a = new Path();
        this.f16240g = cbcVar;
        geeVar.setAlpha(0);
        geeVar.setStyle(Paint.Style.FILL);
        geeVar.setColor(cbcVar.f12582f);
    }

    @Override // g.grq
    public final void d(Canvas canvas, Matrix matrix, int i) {
        bj(i);
        cbc cbcVar = this.f16240g;
        int alpha = Color.alpha(cbcVar.f12582f);
        if (alpha == 0) {
            return;
        }
        int intValue = (int) ((((alpha / 255.0f) * (this.ar.l == null ? 100 : ((Integer) r2.m()).intValue())) / 100.0f) * (i / 255.0f) * 255.0f);
        gee geeVar = this.f16239f;
        geeVar.setAlpha(intValue);
        if (intValue > 0) {
            float[] fArr = this.f16238b;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            float f2 = cbcVar.r;
            fArr[2] = f2;
            fArr[3] = 0.0f;
            fArr[4] = f2;
            float f3 = cbcVar.f12578b;
            fArr[5] = f3;
            fArr[6] = 0.0f;
            fArr[7] = f3;
            matrix.mapPoints(fArr);
            Path path = this.f16237a;
            path.reset();
            path.moveTo(fArr[0], fArr[1]);
            path.lineTo(fArr[2], fArr[3]);
            path.lineTo(fArr[4], fArr[5]);
            path.lineTo(fArr[6], fArr[7]);
            path.lineTo(fArr[0], fArr[1]);
            path.close();
            canvas.drawPath(path, geeVar);
        }
    }

    @Override // g.grq, g.glt
    public final void m(RectF rectF, Matrix matrix, boolean z) {
        super.m(rectF, matrix, z);
        cbc cbcVar = this.f16240g;
        float f2 = cbcVar.r;
        float f3 = cbcVar.f12578b;
        RectF rectF2 = this.h;
        rectF2.set(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f2, f3);
        this.ah.mapRect(rectF2);
        rectF.set(rectF2);
    }
}
