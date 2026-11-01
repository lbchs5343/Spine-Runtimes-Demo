package g;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;

/* loaded from: classes.dex */
public final class dib extends awo {
    public final boolean t;
    public final dph u;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public dib(fts ftsVar, grq grqVar, esd esdVar) {
        super(ftsVar, grqVar, r3, r0 != 1 ? r0 != 2 ? r0 != 3 ? null : Paint.Join.ROUND : Paint.Join.MITER : Paint.Join.BEVEL, esdVar.f16072a, esdVar.f16073b, esdVar.f16074c, esdVar.h, esdVar.f16075d);
        ctn ctnVar = esdVar.f16076f;
        ctnVar.getClass();
        int i = avw.f10946a[ctnVar.ordinal()];
        Paint.Cap cap = i != 1 ? i != 2 ? Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        fvo fvoVar = esdVar.j;
        fvoVar.getClass();
        int i2 = avw.f10947b[fvoVar.ordinal()];
        this.t = esdVar.f16077g;
        cej dq = esdVar.i.dq();
        this.u = (dph) dq;
        dq.l(this);
        grqVar.bg(dq);
    }

    @Override // g.awo, g.glt
    public final void l(Canvas canvas, Matrix matrix, int i) {
        if (this.t) {
            return;
        }
        dph dphVar = this.u;
        this.o.setColor(dphVar.c(dphVar.n(), dphVar.k()));
        super.l(canvas, matrix, i);
    }
}
