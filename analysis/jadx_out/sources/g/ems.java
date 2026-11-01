package g;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final class ems extends ajj {

    /* renamed from: d, reason: collision with root package name */
    public final float f15812d;

    /* renamed from: e, reason: collision with root package name */
    public final float f15813e;

    /* renamed from: f, reason: collision with root package name */
    public final ele f15814f;

    public ems(ele eleVar, float f2, float f3) {
        this.f15814f = eleVar;
        this.f15812d = f2;
        this.f15813e = f3;
    }

    @Override // g.ajj
    public final void c(Matrix matrix, ech echVar, int i, Canvas canvas) {
        ele eleVar = this.f15814f;
        float f2 = eleVar.f15749d;
        float f3 = this.f15813e;
        float f4 = eleVar.f15748c;
        float f5 = this.f15812d;
        RectF rectF = new RectF(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, (float) Math.hypot(f2 - f3, f4 - f5), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        Matrix matrix2 = this.f10324b;
        matrix2.set(matrix);
        matrix2.preTranslate(f5, f3);
        matrix2.preRotate(g());
        echVar.getClass();
        rectF.bottom += i;
        rectF.offset(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, -i);
        int i2 = echVar.i;
        int[] iArr = ech.f15300c;
        iArr[0] = i2;
        iArr[1] = echVar.f15304g;
        iArr[2] = echVar.f15303f;
        Paint paint = echVar.k;
        float f6 = rectF.left;
        paint.setShader(new LinearGradient(f6, rectF.top, f6, rectF.bottom, iArr, ech.f15301d, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix2);
        canvas.drawRect(rectF, paint);
        canvas.restore();
    }

    public final float g() {
        ele eleVar = this.f15814f;
        return (float) Math.toDegrees(Math.atan((eleVar.f15749d - this.f15813e) / (eleVar.f15748c - this.f15812d)));
    }
}
