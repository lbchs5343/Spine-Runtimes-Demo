package g;

import android.graphics.Path;
import android.graphics.PointF;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class epo extends flj {

    /* renamed from: a, reason: collision with root package name */
    public Path f15943a;

    /* renamed from: b, reason: collision with root package name */
    public final flj f15944b;

    public epo(cgf cgfVar, flj fljVar) {
        super(cgfVar, fljVar.p, fljVar.r, fljVar.h, fljVar.j, fljVar.l, fljVar.s, fljVar.f16975d);
        this.f15944b = fljVar;
        c();
    }

    public final void c() {
        Object obj;
        Object obj2 = this.r;
        Object obj3 = this.p;
        boolean z = (obj2 == null || obj3 == null || !((PointF) obj3).equals(((PointF) obj2).x, ((PointF) obj2).y)) ? false : true;
        if (obj3 == null || (obj = this.r) == null || z) {
            return;
        }
        PointF pointF = (PointF) obj3;
        PointF pointF2 = (PointF) obj;
        flj fljVar = this.f15944b;
        PointF pointF3 = fljVar.f16977f;
        PointF pointF4 = fljVar.m;
        cqw cqwVar = ebx.f15269c;
        Path path = new Path();
        path.moveTo(pointF.x, pointF.y);
        if (pointF3 == null || pointF4 == null || (pointF3.length() == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && pointF4.length() == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT)) {
            path.lineTo(pointF2.x, pointF2.y);
        } else {
            float f2 = pointF3.x + pointF.x;
            float f3 = pointF.y + pointF3.y;
            float f4 = pointF2.x;
            float f5 = f4 + pointF4.x;
            float f6 = pointF2.y;
            path.cubicTo(f2, f3, f5, f6 + pointF4.y, f4, f6);
        }
        this.f15943a = path;
    }
}
