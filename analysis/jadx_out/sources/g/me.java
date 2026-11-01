package g;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class me implements fyj, gjf, dvz, jq, glt {

    /* renamed from: b, reason: collision with root package name */
    public final amp f19631b;

    /* renamed from: c, reason: collision with root package name */
    public final grq f19632c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f19633d;

    /* renamed from: f, reason: collision with root package name */
    public final bsb f19635f;

    /* renamed from: g, reason: collision with root package name */
    public bl f19636g;
    public final fts i;
    public final bsb j;

    /* renamed from: e, reason: collision with root package name */
    public final Matrix f19634e = new Matrix();
    public final Path h = new Path();

    public me(fts ftsVar, grq grqVar, egv egvVar) {
        this.i = ftsVar;
        this.f19632c = grqVar;
        this.f19633d = egvVar.f15524f;
        cej dq = egvVar.f15523d.dq();
        this.f19635f = (bsb) dq;
        grqVar.bg(dq);
        dq.l(this);
        cej dq2 = ((cnc) egvVar.f15520a).dq();
        this.j = (bsb) dq2;
        grqVar.bg(dq2);
        dq2.l(this);
        eld eldVar = (eld) egvVar.f15521b;
        eldVar.getClass();
        amp ampVar = new amp(eldVar);
        this.f19631b = ampVar;
        ampVar.s(grqVar);
        ampVar.r(this);
    }

    @Override // g.jq
    public final void a(ListIterator listIterator) {
        if (this.f19636g != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add(listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.f19636g = new bl(this.i, this.f19632c, this.f19633d, arrayList, null);
    }

    @Override // g.fyj
    public final void dq() {
        this.i.invalidateSelf();
    }

    @Override // g.glt
    public final void l(Canvas canvas, Matrix matrix, int i) {
        float floatValue = ((Float) this.f19635f.m()).floatValue();
        float floatValue2 = ((Float) this.j.m()).floatValue();
        amp ampVar = this.f19631b;
        float floatValue3 = ((Float) ampVar.i.m()).floatValue() / 100.0f;
        float floatValue4 = ((Float) ampVar.f10480c.m()).floatValue() / 100.0f;
        for (int i2 = ((int) floatValue) - 1; i2 >= 0; i2--) {
            Matrix matrix2 = this.f19634e;
            matrix2.set(matrix);
            float f2 = i2;
            matrix2.preConcat(ampVar.q(f2 + floatValue2));
            this.f19636g.l(canvas, matrix2, (int) (din.d(floatValue3, floatValue4, f2 / floatValue) * i));
        }
    }

    @Override // g.glt
    public final void m(RectF rectF, Matrix matrix, boolean z) {
        this.f19636g.m(rectF, matrix, z);
    }

    @Override // g.dvz
    public final void n(List list, List list2) {
        this.f19636g.n(list, list2);
    }

    @Override // g.gjf
    public final Path p() {
        Path p = this.f19636g.p();
        Path path = this.h;
        path.reset();
        float floatValue = ((Float) this.f19635f.m()).floatValue();
        float floatValue2 = ((Float) this.j.m()).floatValue();
        for (int i = ((int) floatValue) - 1; i >= 0; i--) {
            Matrix q = this.f19631b.q(i + floatValue2);
            Matrix matrix = this.f19634e;
            matrix.set(q);
            path.addPath(p, matrix);
        }
        return path;
    }
}
