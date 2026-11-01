package g;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.LongSparseArray;

/* loaded from: classes.dex */
public final class exr extends awo {
    public final exi aa;

    /* renamed from: ab, reason: collision with root package name */
    public final LongSparseArray f16338ab;
    public final exi t;
    public final gqk u;
    public final int v;
    public final exi w;
    public final LongSparseArray x;
    public final boolean y;
    public final RectF z;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public exr(fts ftsVar, grq grqVar, gqw gqwVar) {
        super(ftsVar, grqVar, r3, r0 != 1 ? r0 != 2 ? r0 != 3 ? null : Paint.Join.ROUND : Paint.Join.MITER : Paint.Join.BEVEL, gqwVar.i, gqwVar.l, gqwVar.h, gqwVar.k, gqwVar.f18605b);
        ctn ctnVar = gqwVar.m;
        ctnVar.getClass();
        int i = avw.f10946a[ctnVar.ordinal()];
        Paint.Cap cap = i != 1 ? i != 2 ? Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        fvo fvoVar = gqwVar.f18604a;
        fvoVar.getClass();
        int i2 = avw.f10947b[fvoVar.ordinal()];
        this.f16338ab = new LongSparseArray();
        this.x = new LongSparseArray();
        this.z = new RectF();
        this.u = gqwVar.f18609g;
        this.y = gqwVar.f18607d;
        this.v = (int) (ftsVar.x.v() / 32.0f);
        cej dq = gqwVar.j.dq();
        this.w = (exi) dq;
        dq.l(this);
        grqVar.bg(dq);
        cej dq2 = gqwVar.f18606c.dq();
        this.aa = (exi) dq2;
        dq2.l(this);
        grqVar.bg(dq2);
        cej dq3 = gqwVar.f18608f.dq();
        this.t = (exi) dq3;
        dq3.l(this);
        grqVar.bg(dq3);
    }

    public final int ac() {
        float f2 = this.aa.f12740d;
        float f3 = this.v;
        int round = Math.round(f2 * f3);
        int round2 = Math.round(this.t.f12740d * f3);
        int round3 = Math.round(this.w.f12740d * f3);
        int i = round != 0 ? round * 527 : 17;
        if (round2 != 0) {
            i = i * 31 * round2;
        }
        return round3 != 0 ? i * 31 * round3 : i;
    }

    @Override // g.awo, g.glt
    public final void l(Canvas canvas, Matrix matrix, int i) {
        Shader shader;
        if (this.y) {
            return;
        }
        m(this.z, matrix, false);
        gqk gqkVar = this.u;
        gqk gqkVar2 = gqk.dq;
        exi exiVar = this.w;
        exi exiVar2 = this.t;
        exi exiVar3 = this.aa;
        if (gqkVar == gqkVar2) {
            long ac = ac();
            LongSparseArray longSparseArray = this.f16338ab;
            shader = (LinearGradient) longSparseArray.get(ac);
            if (shader == null) {
                PointF pointF = (PointF) exiVar3.m();
                PointF pointF2 = (PointF) exiVar2.m();
                fns fnsVar = (fns) exiVar.m();
                shader = new LinearGradient(pointF.x, pointF.y, pointF2.x, pointF2.y, fnsVar.f17106b, fnsVar.f17105a, Shader.TileMode.CLAMP);
                longSparseArray.put(ac, shader);
            }
        } else {
            long ac2 = ac();
            LongSparseArray longSparseArray2 = this.x;
            shader = (RadialGradient) longSparseArray2.get(ac2);
            if (shader == null) {
                PointF pointF3 = (PointF) exiVar3.m();
                PointF pointF4 = (PointF) exiVar2.m();
                fns fnsVar2 = (fns) exiVar.m();
                int[] iArr = fnsVar2.f17106b;
                float[] fArr = fnsVar2.f17105a;
                shader = new RadialGradient(pointF3.x, pointF3.y, (float) Math.hypot(pointF4.x - r9, pointF4.y - r10), iArr, fArr, Shader.TileMode.CLAMP);
                longSparseArray2.put(ac2, shader);
            }
        }
        shader.setLocalMatrix(matrix);
        this.o.setShader(shader);
        super.l(canvas, matrix, i);
    }
}
