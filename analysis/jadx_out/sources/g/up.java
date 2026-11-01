package g;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class up {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f20112a;

    /* renamed from: b, reason: collision with root package name */
    public PointF f20113b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f20114c;

    public up() {
        this.f20112a = new ArrayList();
    }

    public up(PointF pointF, boolean z, List list) {
        this.f20113b = pointF;
        this.f20114c = z;
        this.f20112a = new ArrayList(list);
    }

    public final void d(float f2, float f3) {
        if (this.f20113b == null) {
            this.f20113b = new PointF();
        }
        this.f20113b.set(f2, f3);
    }

    public final String toString() {
        return "ShapeData{numCurves=" + this.f20112a.size() + "closed=" + this.f20114c + '}';
    }
}
