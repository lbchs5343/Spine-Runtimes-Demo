package g;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final class dpx extends elw {

    /* renamed from: a, reason: collision with root package name */
    public float f14612a;

    /* renamed from: b, reason: collision with root package name */
    public float f14613b;

    /* renamed from: c, reason: collision with root package name */
    public Pair f14614c;

    /* renamed from: d, reason: collision with root package name */
    public float f14615d;

    /* renamed from: e, reason: collision with root package name */
    public int f14616e;

    /* renamed from: f, reason: collision with root package name */
    public float f14617f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f14618g;
    public float h;
    public float i;
    public float j;

    @Override // g.elw
    public final void k(Canvas canvas, Paint paint, float f2, float f3, int i, int i2, int i3) {
        int bt = eyt.bt(i, i2);
        this.f14618g = false;
        o(canvas, paint, f2, f3, bt, i3, i3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, false);
    }

    @Override // g.elw
    public final int l() {
        dzw dzwVar = this.v;
        return (((cvs) dzwVar).q * 2) + ((cvs) dzwVar).s;
    }

    @Override // g.elw
    public final void m(Canvas canvas, Rect rect, float f2, boolean z, boolean z2) {
        if (this.f14617f != rect.width()) {
            this.f14617f = rect.width();
            s();
        }
        float l = l();
        canvas.translate((rect.width() / 2.0f) + rect.left, Math.max(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, (rect.height() - l) / 2.0f) + (rect.height() / 2.0f) + rect.top);
        cvs cvsVar = (cvs) this.v;
        if (cvsVar.f13609g) {
            canvas.scale(-1.0f, 1.0f);
        }
        float f3 = this.f14617f / 2.0f;
        float f4 = l / 2.0f;
        canvas.clipRect(-f3, -f4, f3, f4);
        this.j = cvsVar.s * f2;
        this.f14612a = Math.min(r0 / 2, cvsVar.aa()) * f2;
        this.i = cvsVar.q * f2;
        this.h = Math.min(cvsVar.s / 2.0f, cvsVar.k()) * f2;
        if (z || z2) {
            if ((z && cvsVar.z == 2) || (z2 && cvsVar.m == 1)) {
                canvas.scale(1.0f, -1.0f);
            }
            if (z || (z2 && cvsVar.m != 3)) {
                canvas.translate(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, ((1.0f - f2) * cvsVar.s) / 2.0f);
            }
        }
        if (z2 && cvsVar.m == 3) {
            this.f14615d = f2;
        } else {
            this.f14615d = 1.0f;
        }
    }

    @Override // g.elw
    public final int n() {
        return -1;
    }

    public final void o(Canvas canvas, Paint paint, float f2, float f3, int i, int i2, int i3, float f4, float f5, boolean z) {
        float f6;
        float f7;
        cvs cvsVar;
        Canvas canvas2;
        Pair pair = this.f14614c;
        float ac = dzm.ac(f2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        float ac2 = dzm.ac(f3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        float v = aky.v(1.0f - this.f14615d, 1.0f, ac);
        float v2 = aky.v(1.0f - this.f14615d, 1.0f, ac2);
        int ac3 = (int) ((dzm.ac(v, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.01f) * i2) / 0.01f);
        int ac4 = (int) (((1.0f - dzm.ac(v2, 0.99f, 1.0f)) * i3) / 0.01f);
        float f8 = this.f14617f;
        int i4 = (int) ((v * f8) + ac3);
        int i5 = (int) ((v2 * f8) - ac4);
        float f9 = this.f14612a;
        float f10 = this.h;
        if (f9 != f10) {
            float max = Math.max(f9, f10);
            float f11 = this.f14617f;
            float f12 = max / f11;
            f6 = aky.v(this.f14612a, this.h, dzm.ac(i4 / f11, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f12) / f12);
            float f13 = this.f14612a;
            float f14 = this.h;
            float f15 = this.f14617f;
            f7 = aky.v(f13, f14, dzm.ac((f15 - i5) / f15, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f12) / f12);
        } else {
            f6 = f9;
            f7 = f6;
        }
        float f16 = (-this.f14617f) / 2.0f;
        cvs cvsVar2 = (cvs) this.v;
        boolean z2 = cvsVar2.ab(this.f14618g) && z && f4 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        if (i4 <= i5) {
            float f17 = i4 + f6;
            float f18 = i5 - f7;
            float f19 = f6 * 2.0f;
            float f20 = f7 * 2.0f;
            paint.setColor(i);
            paint.setAntiAlias(true);
            paint.setStrokeWidth(this.j);
            ((axy) pair.first).g();
            ((axy) pair.second).g();
            ((axy) pair.first).e(f17 + f16);
            ((axy) pair.second).e(f18 + f16);
            if (i4 == 0 && f18 + f7 < f17 + f6) {
                axy axyVar = (axy) pair.first;
                float f21 = this.j;
                q(canvas, paint, axyVar, f19, f21, f6, (axy) pair.second, f20, f21, f7, true);
                return;
            }
            if (f17 - f6 > f18 - f7) {
                axy axyVar2 = (axy) pair.second;
                float f22 = this.j;
                q(canvas, paint, axyVar2, f20, f22, f7, (axy) pair.first, f19, f22, f6, false);
                return;
            }
            float f23 = f7;
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeCap(cvsVar2.l() ? Paint.Cap.ROUND : Paint.Cap.BUTT);
            if (z2) {
                float f24 = this.f14617f;
                float f25 = f17 / f24;
                float f26 = f18 / f24;
                cvsVar = cvsVar2;
                int i6 = this.f14618g ? cvsVar.x : cvsVar.n;
                if (i6 != this.f14616e) {
                    this.f14616e = i6;
                    s();
                }
                Path path = this.x;
                path.rewind();
                float f27 = (-this.f14617f) / 2.0f;
                boolean ab2 = cvsVar.ab(this.f14618g);
                if (ab2) {
                    float f28 = this.f14617f;
                    float f29 = this.f14613b;
                    float f30 = f28 / f29;
                    float f31 = f5 / f30;
                    float f32 = f30 / (f30 + 1.0f);
                    f25 = (f25 + f31) * f32;
                    f26 = (f26 + f31) * f32;
                    f27 -= f29 * f5;
                }
                PathMeasure pathMeasure = this.t;
                float length = pathMeasure.getLength() * f25;
                float length2 = pathMeasure.getLength() * f26;
                pathMeasure.getSegment(length, length2, path, true);
                axy axyVar3 = (axy) pair.first;
                axyVar3.g();
                pathMeasure.getPosTan(length, axyVar3.f11043a, axyVar3.f11044b);
                axy axyVar4 = (axy) pair.second;
                axyVar4.g();
                pathMeasure.getPosTan(length2, axyVar4.f11043a, axyVar4.f11044b);
                Matrix matrix = this.u;
                matrix.reset();
                matrix.setTranslate(f27, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                axyVar3.e(f27);
                axyVar4.e(f27);
                if (ab2) {
                    float f33 = this.i * f4;
                    matrix.postScale(1.0f, f33);
                    axyVar3.d(f33);
                    axyVar4.d(f33);
                }
                path.transform(matrix);
                canvas2 = canvas;
                canvas2.drawPath(path, paint);
            } else {
                float[] fArr = ((axy) pair.first).f11043a;
                float f34 = fArr[0];
                float f35 = fArr[1];
                float[] fArr2 = ((axy) pair.second).f11043a;
                canvas.drawLine(f34, f35, fArr2[0], fArr2[1], paint);
                canvas2 = canvas;
                cvsVar = cvsVar2;
            }
            if (cvsVar.l()) {
                return;
            }
            if (f17 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && f6 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                q(canvas2, paint, (axy) pair.first, f19, this.j, f6, null, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, false);
            }
            if (f18 >= this.f14617f || f23 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                return;
            }
            q(canvas, paint, (axy) pair.second, f20, this.j, f23, null, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, false);
        }
    }

    @Override // g.elw
    public final void p(Canvas canvas, Paint paint, int i, int i2) {
        int bt = eyt.bt(i, i2);
        this.f14618g = false;
        cvs cvsVar = (cvs) this.v;
        if (cvsVar.i <= 0 || bt == 0) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(bt);
        Integer num = cvsVar.f13607e;
        axy axyVar = new axy(new float[]{(this.f14617f / 2.0f) - (num != null ? (cvsVar.i / 2.0f) + num.floatValue() : this.j / 2.0f), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT}, new float[]{1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT});
        int i3 = cvsVar.i;
        q(canvas, paint, axyVar, i3, i3, (this.f14612a * i3) / this.j, null, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, false);
    }

    public final void q(Canvas canvas, Paint paint, axy axyVar, float f2, float f3, float f4, axy axyVar2, float f5, float f6, float f7, boolean z) {
        float f8;
        float min = Math.min(f3, this.j);
        float f9 = (-f2) / 2.0f;
        float f10 = (-min) / 2.0f;
        float f11 = f2 / 2.0f;
        float f12 = min / 2.0f;
        RectF rectF = new RectF(f9, f10, f11, f12);
        paint.setStyle(Paint.Style.FILL);
        canvas.save();
        if (axyVar2 != null) {
            float[] fArr = axyVar2.f11044b;
            float[] fArr2 = axyVar2.f11043a;
            float min2 = Math.min(f6, this.j);
            float min3 = Math.min(f5 / 2.0f, (f7 * min2) / this.j);
            RectF rectF2 = new RectF();
            if (z) {
                float f13 = (fArr2[0] - min3) - (axyVar.f11043a[0] - f4);
                if (f13 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    axyVar2.e((-f13) / 2.0f);
                    f8 = f5 + f13;
                } else {
                    f8 = f5;
                }
                rectF2.set(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f10, f11, f12);
            } else {
                float f14 = (fArr2[0] + min3) - (axyVar.f11043a[0] + f4);
                if (f14 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    axyVar2.e((-f14) / 2.0f);
                    f8 = f5 - f14;
                } else {
                    f8 = f5;
                }
                rectF2.set(f9, f10, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f12);
            }
            RectF rectF3 = new RectF((-f8) / 2.0f, (-min2) / 2.0f, f8 / 2.0f, min2 / 2.0f);
            canvas.translate(fArr2[0], fArr2[1]);
            canvas.rotate(elw.y(fArr));
            Path path = new Path();
            path.addRoundRect(rectF3, min3, min3, Path.Direction.CCW);
            canvas.clipPath(path);
            canvas.rotate(-elw.y(fArr));
            canvas.translate(-fArr2[0], -fArr2[1]);
            float[] fArr3 = axyVar.f11043a;
            canvas.translate(fArr3[0], fArr3[1]);
            canvas.rotate(elw.y(axyVar.f11044b));
            canvas.drawRect(rectF2, paint);
            canvas.drawRoundRect(rectF, f4, f4, paint);
        } else {
            float[] fArr4 = axyVar.f11043a;
            canvas.translate(fArr4[0], fArr4[1]);
            canvas.rotate(elw.y(axyVar.f11044b));
            canvas.drawRoundRect(rectF, f4, f4, paint);
        }
        canvas.restore();
    }

    @Override // g.elw
    public final void r(Canvas canvas, Paint paint, agm agmVar, int i) {
        int bt = eyt.bt(agmVar.f10189g, i);
        this.f14618g = agmVar.f10183a;
        float f2 = agmVar.f10186d;
        float f3 = agmVar.f10188f;
        int i2 = agmVar.f10184b;
        o(canvas, paint, f2, f3, bt, i2, i2, agmVar.f10185c, agmVar.f10187e, true);
    }

    @Override // g.elw
    public final void s() {
        Path path = this.w;
        path.rewind();
        cvs cvsVar = (cvs) this.v;
        if (cvsVar.ab(this.f14618g)) {
            int i = this.f14618g ? cvsVar.x : cvsVar.n;
            float f2 = this.f14617f;
            int i2 = (int) (f2 / i);
            this.f14613b = f2 / i2;
            for (int i3 = 0; i3 <= i2; i3++) {
                int i4 = i3 * 2;
                float f3 = i4 + 1;
                path.cubicTo(i4 + 0.48f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f3 - 0.48f, 1.0f, f3, 1.0f);
                float f4 = f3 + 0.48f;
                float f5 = i4 + 2;
                path.cubicTo(f4, 1.0f, f5 - 0.48f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f5, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            }
            Matrix matrix = this.u;
            matrix.reset();
            matrix.setScale(this.f14613b / 2.0f, -2.0f);
            matrix.postTranslate(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
            path.transform(matrix);
        } else {
            path.lineTo(this.f14617f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
        this.t.setPath(path, false);
    }
}
