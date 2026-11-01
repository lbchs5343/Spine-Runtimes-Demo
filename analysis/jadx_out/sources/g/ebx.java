package g;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.os.Build;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public abstract class ebx {

    /* renamed from: c, reason: collision with root package name */
    public static final cqw f15269c = new cqw(4);

    /* renamed from: d, reason: collision with root package name */
    public static final cqw f15270d = new cqw(5);

    /* renamed from: e, reason: collision with root package name */
    public static final cqw f15271e = new cqw(6);

    /* renamed from: a, reason: collision with root package name */
    public static final cqw f15267a = new cqw(7);

    /* renamed from: b, reason: collision with root package name */
    public static final float f15268b = (float) (Math.sqrt(2.0d) / 2.0d);

    public static void f(Canvas canvas, RectF rectF, Paint paint, int i) {
        if (Build.VERSION.SDK_INT < 23) {
            canvas.saveLayer(rectF, paint, i);
        } else {
            canvas.saveLayer(rectF, paint);
        }
        buj.bd();
    }

    public static void g(Path path, float f2, float f3, float f4) {
        PathMeasure pathMeasure = (PathMeasure) f15269c.get();
        Path path2 = (Path) f15270d.get();
        Path path3 = (Path) f15271e.get();
        pathMeasure.setPath(path, false);
        float length = pathMeasure.getLength();
        if (f2 == 1.0f && f3 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            buj.bd();
            return;
        }
        if (length < 1.0f || Math.abs((f3 - f2) - 1.0f) < 0.01d) {
            buj.bd();
            return;
        }
        float f5 = f2 * length;
        float f6 = f3 * length;
        float f7 = f4 * length;
        float min = Math.min(f5, f6) + f7;
        float max = Math.max(f5, f6) + f7;
        if (min >= length && max >= length) {
            min = din.e(min, length);
            max = din.e(max, length);
        }
        if (min < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            min = din.e(min, length);
        }
        if (max < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            max = din.e(max, length);
        }
        if (min == max) {
            path.reset();
            buj.bd();
            return;
        }
        if (min >= max) {
            min -= length;
        }
        path2.reset();
        pathMeasure.getSegment(min, max, path2, true);
        if (max > length) {
            path3.reset();
            pathMeasure.getSegment(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, max % length, path3, true);
            path2.addPath(path3);
        } else if (min < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            path3.reset();
            pathMeasure.getSegment(min + length, length, path3, true);
            path2.addPath(path3);
        }
        path.set(path2);
        buj.bd();
    }

    public static float h() {
        return Resources.getSystem().getDisplayMetrics().density;
    }

    public static float i(Matrix matrix) {
        float[] fArr = (float[]) f15267a.get();
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        float f2 = f15268b;
        fArr[2] = f2;
        fArr[3] = f2;
        matrix.mapPoints(fArr);
        return (float) Math.hypot(fArr[2] - fArr[0], fArr[3] - fArr[1]);
    }

    public static void j(Canvas canvas, RectF rectF, Paint paint) {
        f(canvas, rectF, paint, 31);
    }
}
