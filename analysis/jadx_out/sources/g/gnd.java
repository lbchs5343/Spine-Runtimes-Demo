package g;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class gnd implements fyj, gjf, dvz {

    /* renamed from: b, reason: collision with root package name */
    public final fts f18436b;

    /* renamed from: c, reason: collision with root package name */
    public final cej f18437c;

    /* renamed from: e, reason: collision with root package name */
    public final cej f18439e;
    public boolean h;
    public final boolean i;
    public final bsb j;

    /* renamed from: d, reason: collision with root package name */
    public final Path f18438d = new Path();

    /* renamed from: g, reason: collision with root package name */
    public final RectF f18441g = new RectF();

    /* renamed from: a, reason: collision with root package name */
    public final ais f18435a = new ais(1);

    /* renamed from: f, reason: collision with root package name */
    public cej f18440f = null;

    public gnd(fts ftsVar, grq grqVar, egv egvVar) {
        this.i = egvVar.f15524f;
        this.f18436b = ftsVar;
        cej dq = egvVar.f15520a.dq();
        this.f18437c = dq;
        cej dq2 = ((eqn) egvVar.f15521b).dq();
        this.f18439e = dq2;
        cej dq3 = egvVar.f15523d.dq();
        this.j = (bsb) dq3;
        grqVar.bg(dq);
        grqVar.bg(dq2);
        grqVar.bg(dq3);
        dq.l(this);
        dq2.l(this);
        dq3.l(this);
    }

    @Override // g.fyj
    public final void dq() {
        this.h = false;
        this.f18436b.invalidateSelf();
    }

    @Override // g.dvz
    public final void n(List list, List list2) {
        int i = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) list;
            if (i >= arrayList.size()) {
                return;
            }
            dvz dvzVar = (dvz) arrayList.get(i);
            if (dvzVar instanceof ejw) {
                ejw ejwVar = (ejw) dvzVar;
                if (ejwVar.getType() == eyu.dq) {
                    this.f18435a.f10279a.add(ejwVar);
                    ejwVar.g(this);
                    i++;
                }
            }
            if (dvzVar instanceof enh) {
                this.f18440f = ((enh) dvzVar).f15861b;
            }
            i++;
        }
    }

    @Override // g.gjf
    public final Path p() {
        float f2;
        cej cejVar;
        boolean z = this.h;
        Path path = this.f18438d;
        if (z) {
            return path;
        }
        path.reset();
        if (this.i) {
            this.h = true;
            return path;
        }
        PointF pointF = (PointF) this.f18439e.m();
        float f3 = pointF.x / 2.0f;
        float f4 = pointF.y / 2.0f;
        bsb bsbVar = this.j;
        float c2 = bsbVar == null ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : bsbVar.c();
        if (c2 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && (cejVar = this.f18440f) != null) {
            c2 = Math.min(((Float) cejVar.m()).floatValue(), Math.min(f3, f4));
        }
        float min = Math.min(f3, f4);
        if (c2 > min) {
            c2 = min;
        }
        PointF pointF2 = (PointF) this.f18437c.m();
        path.moveTo(pointF2.x + f3, (pointF2.y - f4) + c2);
        path.lineTo(pointF2.x + f3, (pointF2.y + f4) - c2);
        RectF rectF = this.f18441g;
        if (c2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            float f5 = pointF2.x + f3;
            float f6 = c2 * 2.0f;
            f2 = 2.0f;
            float f7 = pointF2.y + f4;
            rectF.set(f5 - f6, f7 - f6, f5, f7);
            path.arcTo(rectF, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 90.0f, false);
        } else {
            f2 = 2.0f;
        }
        path.lineTo((pointF2.x - f3) + c2, pointF2.y + f4);
        if (c2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            float f8 = pointF2.x - f3;
            float f9 = pointF2.y + f4;
            float f10 = c2 * f2;
            rectF.set(f8, f9 - f10, f10 + f8, f9);
            path.arcTo(rectF, 90.0f, 90.0f, false);
        }
        path.lineTo(pointF2.x - f3, (pointF2.y - f4) + c2);
        if (c2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            float f11 = pointF2.x - f3;
            float f12 = pointF2.y - f4;
            float f13 = c2 * f2;
            rectF.set(f11, f12, f11 + f13, f13 + f12);
            path.arcTo(rectF, 180.0f, 90.0f, false);
        }
        path.lineTo((pointF2.x + f3) - c2, pointF2.y - f4);
        if (c2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            float f14 = pointF2.x + f3;
            float f15 = c2 * f2;
            float f16 = pointF2.y - f4;
            rectF.set(f14 - f15, f16, f14, f15 + f16);
            path.arcTo(rectF, 270.0f, 90.0f, false);
        }
        path.close();
        this.f18435a.f(path);
        this.h = true;
        return path;
    }
}
