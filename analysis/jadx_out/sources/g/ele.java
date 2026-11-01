package g;

import android.graphics.Matrix;
import android.graphics.Path;

/* loaded from: classes3.dex */
public final class ele extends go {

    /* renamed from: c, reason: collision with root package name */
    public float f15748c;

    /* renamed from: d, reason: collision with root package name */
    public float f15749d;

    @Override // g.go
    public final void b(Matrix matrix, Path path) {
        Matrix matrix2 = this.f18481a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        path.lineTo(this.f15748c, this.f15749d);
        path.transform(matrix);
    }
}
