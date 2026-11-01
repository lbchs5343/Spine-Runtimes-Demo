package g;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final class bdb extends ajj {

    /* renamed from: d, reason: collision with root package name */
    public final wx f11306d;

    public bdb(wx wxVar) {
        this.f11306d = wxVar;
    }

    @Override // g.ajj
    public final void c(Matrix matrix, ech echVar, int i, Canvas canvas) {
        char c2;
        wx wxVar = this.f11306d;
        float f2 = wxVar.f20254f;
        float f3 = wxVar.i;
        RectF rectF = new RectF(wxVar.f20255g, wxVar.h, wxVar.f20252d, wxVar.f20253e);
        Paint paint = echVar.j;
        boolean z = f3 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        Path path = echVar.l;
        int[] iArr = ech.f15298a;
        if (z) {
            iArr[0] = 0;
            iArr[1] = echVar.i;
            iArr[2] = echVar.f15304g;
            iArr[3] = echVar.f15303f;
            c2 = 1;
        } else {
            path.rewind();
            c2 = 1;
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f2, f3);
            path.close();
            float f4 = -i;
            rectF.inset(f4, f4);
            iArr[0] = 0;
            iArr[1] = echVar.f15303f;
            iArr[2] = echVar.f15304g;
            iArr[3] = echVar.i;
        }
        float width = rectF.width() / 2.0f;
        if (width <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            return;
        }
        float f5 = 1.0f - (i / width);
        float[] fArr = ech.f15299b;
        fArr[c2] = f5;
        fArr[2] = ((1.0f - f5) / 2.0f) + f5;
        paint.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), width, iArr, fArr, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, echVar.f15302e);
        }
        canvas.drawArc(rectF, f2, f3, true, paint);
        canvas.restore();
    }
}
