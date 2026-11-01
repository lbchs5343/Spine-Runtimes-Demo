package g;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class rz extends grq {

    /* renamed from: a, reason: collision with root package name */
    public final aio f19941a;

    /* renamed from: b, reason: collision with root package name */
    public final bl f19942b;

    public rz(fts ftsVar, cbc cbcVar, aio aioVar, cgf cgfVar) {
        super(ftsVar, cbcVar);
        this.f19941a = aioVar;
        bl blVar = new bl(ftsVar, this, new ewz("__container", cbcVar.h, false), cgfVar);
        this.f19942b = blVar;
        List list = Collections.EMPTY_LIST;
        blVar.n(list, list);
    }

    @Override // g.grq
    public final fzn c() {
        fzn fznVar = this.au.v;
        return fznVar != null ? fznVar : this.f19941a.au.v;
    }

    @Override // g.grq
    public final void d(Canvas canvas, Matrix matrix, int i) {
        bj(i);
        this.f19942b.l(canvas, matrix, i);
    }

    @Override // g.grq
    public final aoy e() {
        aoy aoyVar = this.au.k;
        return aoyVar != null ? aoyVar : this.f19941a.au.k;
    }

    @Override // g.grq, g.glt
    public final void m(RectF rectF, Matrix matrix, boolean z) {
        super.m(rectF, matrix, z);
        this.f19942b.m(rectF, this.ah, z);
    }
}
