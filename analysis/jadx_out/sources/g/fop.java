package g;

import android.graphics.Path;
import android.graphics.PointF;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class fop implements fyj, gjf, dvz {

    /* renamed from: a, reason: collision with root package name */
    public final cej f17144a;

    /* renamed from: b, reason: collision with root package name */
    public final ghq f17145b;

    /* renamed from: c, reason: collision with root package name */
    public final Path f17146c = new Path();

    /* renamed from: d, reason: collision with root package name */
    public final ais f17147d = new ais(1);

    /* renamed from: e, reason: collision with root package name */
    public final fts f17148e;

    /* renamed from: f, reason: collision with root package name */
    public final exi f17149f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f17150g;

    public fop(fts ftsVar, grq grqVar, ghq ghqVar) {
        this.f17148e = ftsVar;
        cej dq = ghqVar.f18172c.dq();
        this.f17149f = (exi) dq;
        cej dq2 = ghqVar.f18171b.dq();
        this.f17144a = dq2;
        this.f17145b = ghqVar;
        grqVar.bg(dq);
        grqVar.bg(dq2);
        dq.l(this);
        dq2.l(this);
    }

    @Override // g.fyj
    public final void dq() {
        this.f17150g = false;
        this.f17148e.invalidateSelf();
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
                    this.f17147d.f10279a.add(ejwVar);
                    ejwVar.g(this);
                }
            }
            i++;
        }
    }

    @Override // g.gjf
    public final Path p() {
        boolean z = this.f17150g;
        Path path = this.f17146c;
        if (z) {
            return path;
        }
        path.reset();
        ghq ghqVar = this.f17145b;
        if (ghqVar.f18170a) {
            this.f17150g = true;
            return path;
        }
        PointF pointF = (PointF) this.f17149f.m();
        float f2 = pointF.x / 2.0f;
        float f3 = pointF.y / 2.0f;
        float f4 = f2 * 0.55228f;
        float f5 = f3 * 0.55228f;
        path.reset();
        if (ghqVar.f18173d) {
            float f6 = -f3;
            path.moveTo(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f6);
            float f7 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT - f4;
            float f8 = -f2;
            float f9 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT - f5;
            path.cubicTo(f7, f6, f8, f9, f8, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            float f10 = f5 + TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            path.cubicTo(f8, f10, f7, f3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f3);
            float f11 = f4 + TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            path.cubicTo(f11, f3, f2, f10, f2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            path.cubicTo(f2, f9, f11, f6, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f6);
        } else {
            float f12 = -f3;
            path.moveTo(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f12);
            float f13 = f4 + TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            float f14 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT - f5;
            path.cubicTo(f13, f12, f2, f14, f2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            float f15 = f5 + TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            path.cubicTo(f2, f15, f13, f3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f3);
            float f16 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT - f4;
            float f17 = -f2;
            path.cubicTo(f16, f3, f17, f15, f17, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            path.cubicTo(f17, f14, f16, f12, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f12);
        }
        PointF pointF2 = (PointF) this.f17144a.m();
        path.offset(pointF2.x, pointF2.y);
        path.close();
        this.f17147d.f(path);
        this.f17150g = true;
        return path;
    }
}
