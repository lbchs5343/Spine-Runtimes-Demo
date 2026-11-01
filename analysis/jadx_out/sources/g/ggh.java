package g;

import android.graphics.PointF;

/* loaded from: classes.dex */
public final class ggh {

    /* renamed from: a, reason: collision with root package name */
    public final PointF f18085a;

    /* renamed from: b, reason: collision with root package name */
    public final PointF f18086b;

    /* renamed from: c, reason: collision with root package name */
    public final PointF f18087c;

    public ggh() {
        this.f18085a = new PointF();
        this.f18086b = new PointF();
        this.f18087c = new PointF();
    }

    public ggh(PointF pointF, PointF pointF2, PointF pointF3) {
        this.f18085a = pointF;
        this.f18086b = pointF2;
        this.f18087c = pointF3;
    }

    public final String toString() {
        PointF pointF = this.f18087c;
        Float valueOf = Float.valueOf(pointF.x);
        Float valueOf2 = Float.valueOf(pointF.y);
        PointF pointF2 = this.f18085a;
        Float valueOf3 = Float.valueOf(pointF2.x);
        Float valueOf4 = Float.valueOf(pointF2.y);
        PointF pointF3 = this.f18086b;
        return String.format("v=%.2f,%.2f cp1=%.2f,%.2f cp2=%.2f,%.2f", valueOf, valueOf2, valueOf3, valueOf4, Float.valueOf(pointF3.x), Float.valueOf(pointF3.y));
    }
}
