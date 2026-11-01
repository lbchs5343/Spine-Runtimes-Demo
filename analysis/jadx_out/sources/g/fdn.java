package g;

import android.graphics.Path;
import android.graphics.PointF;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class fdn extends cej {

    /* renamed from: a, reason: collision with root package name */
    public final up f16611a;

    /* renamed from: c, reason: collision with root package name */
    public final Path f16612c;
    public ArrayList r;

    public fdn(List list) {
        super(list);
        this.f16611a = new up();
        this.f16612c = new Path();
    }

    @Override // g.cej
    public final Object b(flj fljVar, float f2) {
        up upVar;
        float f3;
        boolean z;
        up upVar2 = (up) fljVar.p;
        up upVar3 = (up) fljVar.r;
        up upVar4 = this.f16611a;
        ArrayList arrayList = upVar4.f20112a;
        if (upVar4.f20113b == null) {
            upVar4.f20113b = new PointF();
        }
        boolean z2 = upVar2.f20114c;
        ArrayList arrayList2 = upVar2.f20112a;
        upVar4.f20114c = z2 || upVar3.f20114c;
        int size = arrayList2.size();
        ArrayList arrayList3 = upVar3.f20112a;
        if (size != arrayList3.size()) {
            hbp.b("Curves must have the same number of control points. Shape 1: " + arrayList2.size() + "\tShape 2: " + arrayList3.size());
        }
        int min = Math.min(arrayList2.size(), arrayList3.size());
        if (arrayList.size() < min) {
            for (int size2 = arrayList.size(); size2 < min; size2++) {
                arrayList.add(new ggh());
            }
        } else if (arrayList.size() > min) {
            for (int size3 = arrayList.size() - 1; size3 >= min; size3--) {
                arrayList.remove(arrayList.size() - 1);
            }
        }
        PointF pointF = upVar2.f20113b;
        PointF pointF2 = upVar3.f20113b;
        upVar4.d(din.d(pointF.x, pointF2.x, f2), din.d(pointF.y, pointF2.y, f2));
        for (int size4 = arrayList.size() - 1; size4 >= 0; size4--) {
            ggh gghVar = (ggh) arrayList2.get(size4);
            ggh gghVar2 = (ggh) arrayList3.get(size4);
            PointF pointF3 = gghVar.f18085a;
            PointF pointF4 = gghVar.f18086b;
            PointF pointF5 = gghVar.f18087c;
            PointF pointF6 = gghVar2.f18085a;
            PointF pointF7 = gghVar2.f18086b;
            PointF pointF8 = gghVar2.f18087c;
            ((ggh) arrayList.get(size4)).f18085a.set(din.d(pointF3.x, pointF6.x, f2), din.d(pointF3.y, pointF6.y, f2));
            ((ggh) arrayList.get(size4)).f18086b.set(din.d(pointF4.x, pointF7.x, f2), din.d(pointF4.y, pointF7.y, f2));
            ((ggh) arrayList.get(size4)).f18087c.set(din.d(pointF5.x, pointF8.x, f2), din.d(pointF5.y, pointF8.y, f2));
        }
        ArrayList arrayList4 = this.r;
        if (arrayList4 != null) {
            int size5 = arrayList4.size() - 1;
            while (true) {
                ArrayList arrayList5 = upVar4.f20112a;
                if (size5 < 0) {
                    break;
                }
                enh enhVar = (enh) this.r.get(size5);
                enhVar.getClass();
                if (arrayList5.size() > 2) {
                    float floatValue = ((Float) enhVar.f15861b.m()).floatValue();
                    if (floatValue != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        boolean z3 = upVar4.f20114c;
                        int size6 = arrayList5.size() - 1;
                        int i = 0;
                        while (size6 >= 0) {
                            ggh gghVar3 = (ggh) arrayList5.get(size6);
                            ggh gghVar4 = (ggh) arrayList5.get(enh.d(size6 - 1, arrayList5.size()));
                            PointF pointF9 = (size6 != 0 || z3) ? gghVar4.f18087c : upVar4.f20113b;
                            i = (((size6 != 0 || z3) ? gghVar4.f18086b : pointF9).equals(pointF9) && gghVar3.f18085a.equals(pointF9) && !(!upVar4.f20114c && size6 == 0 && size6 == arrayList5.size() + (-1))) ? i + 2 : i + 1;
                            size6--;
                        }
                        up upVar5 = enhVar.f15862c;
                        if (upVar5 == null || upVar5.f20112a.size() != i) {
                            ArrayList arrayList6 = new ArrayList(i);
                            for (int i2 = 0; i2 < i; i2++) {
                                arrayList6.add(new ggh());
                            }
                            enhVar.f15862c = new up(new PointF(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT), false, arrayList6);
                        }
                        up upVar6 = enhVar.f15862c;
                        upVar6.f20114c = z3;
                        PointF pointF10 = upVar4.f20113b;
                        upVar6.d(pointF10.x, pointF10.y);
                        ArrayList arrayList7 = upVar6.f20112a;
                        boolean z4 = upVar4.f20114c;
                        int i3 = 0;
                        int i4 = 0;
                        while (i3 < arrayList5.size()) {
                            ggh gghVar5 = (ggh) arrayList5.get(i3);
                            ggh gghVar6 = (ggh) arrayList5.get(enh.d(i3 - 1, arrayList5.size()));
                            ggh gghVar7 = (ggh) arrayList5.get(enh.d(i3 - 2, arrayList5.size()));
                            PointF pointF11 = (i3 != 0 || z4) ? gghVar6.f18087c : upVar4.f20113b;
                            PointF pointF12 = (i3 != 0 || z4) ? gghVar6.f18086b : pointF11;
                            PointF pointF13 = gghVar5.f18085a;
                            PointF pointF14 = gghVar7.f18087c;
                            int i5 = size5;
                            PointF pointF15 = gghVar5.f18087c;
                            ArrayList arrayList8 = arrayList5;
                            boolean z5 = !upVar4.f20114c && i3 == 0 && i3 == arrayList8.size() + (-1);
                            if (pointF12.equals(pointF11) && pointF13.equals(pointF11) && !z5) {
                                float f4 = pointF11.x;
                                float f5 = f4 - pointF14.x;
                                float f6 = pointF11.y;
                                float f7 = f6 - pointF14.y;
                                float f8 = pointF15.x - f4;
                                float f9 = pointF15.y - f6;
                                upVar = upVar4;
                                f3 = floatValue;
                                float hypot = (float) Math.hypot(f5, f7);
                                float hypot2 = (float) Math.hypot(f8, f9);
                                float min2 = Math.min(f3 / hypot, 0.5f);
                                float min3 = Math.min(f3 / hypot2, 0.5f);
                                float f10 = pointF11.x;
                                float g2 = awf.g(pointF14.x, f10, min2, f10);
                                float f11 = pointF11.y;
                                float g3 = awf.g(pointF14.y, f11, min2, f11);
                                float g4 = awf.g(pointF15.x, f10, min3, f10);
                                float g5 = awf.g(pointF15.y, f11, min3, f11);
                                float f12 = g2 - ((g2 - f10) * 0.5519f);
                                float f13 = g3 - ((g3 - f11) * 0.5519f);
                                float f14 = g4 - ((g4 - f10) * 0.5519f);
                                float f15 = g5 - ((g5 - f11) * 0.5519f);
                                ggh gghVar8 = (ggh) arrayList7.get(enh.d(i4 - 1, arrayList7.size()));
                                ggh gghVar9 = (ggh) arrayList7.get(i4);
                                z = z4;
                                gghVar8.f18086b.set(g2, g3);
                                gghVar8.f18087c.set(g2, g3);
                                if (i3 == 0) {
                                    upVar6.d(g2, g3);
                                }
                                gghVar9.f18085a.set(f12, f13);
                                ggh gghVar10 = (ggh) arrayList7.get(i4 + 1);
                                gghVar9.f18086b.set(f14, f15);
                                gghVar9.f18087c.set(g4, g5);
                                gghVar10.f18085a.set(g4, g5);
                                i4 += 2;
                            } else {
                                upVar = upVar4;
                                f3 = floatValue;
                                z = z4;
                                ggh gghVar11 = (ggh) arrayList7.get(enh.d(i4 - 1, arrayList7.size()));
                                ggh gghVar12 = (ggh) arrayList7.get(i4);
                                PointF pointF16 = gghVar6.f18086b;
                                gghVar11.f18086b.set(pointF16.x, pointF16.y);
                                PointF pointF17 = gghVar6.f18087c;
                                gghVar11.f18087c.set(pointF17.x, pointF17.y);
                                PointF pointF18 = gghVar5.f18085a;
                                gghVar12.f18085a.set(pointF18.x, pointF18.y);
                                i4++;
                            }
                            i3++;
                            size5 = i5;
                            arrayList5 = arrayList8;
                            upVar4 = upVar;
                            floatValue = f3;
                            z4 = z;
                        }
                        upVar4 = upVar6;
                    }
                }
                size5--;
            }
        }
        Path path = this.f16612c;
        path.reset();
        PointF pointF19 = upVar4.f20113b;
        ArrayList arrayList9 = upVar4.f20112a;
        path.moveTo(pointF19.x, pointF19.y);
        PointF pointF20 = din.f14231a;
        pointF20.set(pointF19.x, pointF19.y);
        for (int i6 = 0; i6 < arrayList9.size(); i6++) {
            ggh gghVar13 = (ggh) arrayList9.get(i6);
            PointF pointF21 = gghVar13.f18085a;
            PointF pointF22 = gghVar13.f18086b;
            PointF pointF23 = gghVar13.f18087c;
            if (pointF21.equals(pointF20) && pointF22.equals(pointF23)) {
                path.lineTo(pointF23.x, pointF23.y);
            } else {
                path.cubicTo(pointF21.x, pointF21.y, pointF22.x, pointF22.y, pointF23.x, pointF23.y);
            }
            pointF20.set(pointF23.x, pointF23.y);
        }
        if (upVar4.f20114c) {
            path.close();
        }
        return path;
    }
}
