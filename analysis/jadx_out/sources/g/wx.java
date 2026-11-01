package g;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;

/* loaded from: classes3.dex */
public final class wx extends go {

    /* renamed from: c, reason: collision with root package name */
    public static final RectF f20251c = new RectF();

    /* renamed from: d, reason: collision with root package name */
    public final float f20252d;

    /* renamed from: e, reason: collision with root package name */
    public final float f20253e;

    /* renamed from: f, reason: collision with root package name */
    public float f20254f;

    /* renamed from: g, reason: collision with root package name */
    public final float f20255g;
    public final float h;
    public float i;

    public wx(float f2, float f3, float f4, float f5) {
        this.f20255g = f2;
        this.h = f3;
        this.f20252d = f4;
        this.f20253e = f5;
    }

    @Override // g.go
    public final void b(Matrix matrix, Path path) {
        Matrix matrix2 = this.f18481a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        float f2 = this.f20252d;
        float f3 = this.f20253e;
        RectF rectF = f20251c;
        rectF.set(this.f20255g, this.h, f2, f3);
        path.arcTo(rectF, this.f20254f, this.i, false);
        path.transform(matrix);
    }
}
