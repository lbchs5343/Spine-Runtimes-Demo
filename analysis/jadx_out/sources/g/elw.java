package g;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Rect;

/* loaded from: classes3.dex */
public abstract class elw {
    public final PathMeasure t;
    public final Matrix u;
    public final dzw v;
    public final Path w;
    public final Path x;

    public elw(dzw dzwVar) {
        Path path = new Path();
        this.w = path;
        this.x = new Path();
        this.t = new PathMeasure(path, false);
        this.v = dzwVar;
        this.u = new Matrix();
    }

    public static float y(float[] fArr) {
        return (float) Math.toDegrees(Math.atan2(fArr[1], fArr[0]));
    }

    public abstract void k(Canvas canvas, Paint paint, float f2, float f3, int i, int i2, int i3);

    public abstract int l();

    public abstract void m(Canvas canvas, Rect rect, float f2, boolean z, boolean z2);

    public abstract int n();

    public abstract void p(Canvas canvas, Paint paint, int i, int i2);

    public abstract void r(Canvas canvas, Paint paint, agm agmVar, int i);

    public abstract void s();
}
