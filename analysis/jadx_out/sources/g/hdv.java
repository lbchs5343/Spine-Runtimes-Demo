package g;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class hdv extends elw {

    /* renamed from: a, reason: collision with root package name */
    public float f19305a;

    /* renamed from: b, reason: collision with root package name */
    public float f19306b;

    /* renamed from: c, reason: collision with root package name */
    public float f19307c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f19308d;

    /* renamed from: e, reason: collision with root package name */
    public int f19309e;

    /* renamed from: f, reason: collision with root package name */
    public float f19310f;

    /* renamed from: g, reason: collision with root package name */
    public final RectF f19311g;
    public float h;
    public float i;
    public float j;
    public final Pair o;
    public float q;

    public hdv(alp alpVar) {
        super(alpVar);
        this.f19311g = new RectF();
        this.o = new Pair(new axy(), new axy());
    }

    public final void aa(Canvas canvas, Paint paint, float f2, float f3, int i, int i2, int i3, float f4, float f5, boolean z) {
        float f6;
        float f7;
        float f8;
        float f9;
        Canvas canvas2;
        Paint paint2;
        float f10 = f3 >= f2 ? f3 - f2 : (f3 + 1.0f) - f2;
        float f11 = f2 % 1.0f;
        if (f11 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            f11 += 1.0f;
        }
        if (this.f19307c < 1.0f) {
            float f12 = f11 + f10;
            if (f12 > 1.0f) {
                aa(canvas, paint, f11, 1.0f, i, i2, 0, f4, f5, z);
                aa(canvas, paint, 1.0f, f12, i, 0, i3, f4, f5, z);
                return;
            }
        }
        float degrees = (float) Math.toDegrees(this.q / this.i);
        float f13 = f10 - 0.99f;
        if (f13 >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            float f14 = ((f13 * degrees) / 180.0f) / 0.01f;
            f10 += f14;
            if (!z) {
                f11 -= f14 / 2.0f;
            }
        }
        float v = aky.v(1.0f - this.f19307c, 1.0f, f11);
        float v2 = aky.v(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.f19307c, f10);
        float degrees2 = (float) Math.toDegrees(i2 / this.i);
        float degrees3 = ((v2 * 360.0f) - degrees2) - ((float) Math.toDegrees(i3 / this.i));
        float f15 = (v * 360.0f) + degrees2;
        if (degrees3 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            return;
        }
        alp alpVar = (alp) this.v;
        boolean z2 = alpVar.ab(this.f19308d) && z && f4 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        paint.setAntiAlias(true);
        paint.setColor(i);
        paint.setStrokeWidth(this.f19310f);
        float f16 = this.q * 2.0f;
        float f17 = degrees * 2.0f;
        PathMeasure pathMeasure = this.t;
        if (degrees3 < f17) {
            float f18 = degrees3 / f17;
            float f19 = (degrees * f18) + f15;
            axy axyVar = new axy();
            if (z2) {
                float length = (pathMeasure.getLength() * (f19 / 360.0f)) / 2.0f;
                float f20 = this.f19305a * f4;
                float f21 = this.i;
                if (f21 != this.h || f20 != this.f19306b) {
                    this.f19306b = f20;
                    this.h = f21;
                    s();
                }
                pathMeasure.getPosTan(length, axyVar.f11043a, axyVar.f11044b);
            } else {
                axyVar.h(f19 + 90.0f);
                axyVar.f(-this.i);
            }
            paint.setStyle(Paint.Style.FILL);
            ab(canvas, paint, axyVar, f16, this.f19310f, f18);
            return;
        }
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(alpVar.l() ? Paint.Cap.ROUND : Paint.Cap.BUTT);
        float f22 = f15 + degrees;
        float f23 = degrees3 - f17;
        Pair pair = this.o;
        ((axy) pair.first).g();
        ((axy) pair.second).g();
        if (z2) {
            float f24 = f22 / 360.0f;
            float f25 = f23 / 360.0f;
            float f26 = this.f19305a * f4;
            int i4 = this.f19308d ? alpVar.x : alpVar.n;
            float f27 = this.i;
            if (f27 != this.h || f26 != this.f19306b || i4 != this.f19309e) {
                this.f19306b = f26;
                this.f19309e = i4;
                this.h = f27;
                s();
            }
            Path path = this.x;
            path.rewind();
            float ac = dzm.ac(f25, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
            if (alpVar.ab(this.f19308d)) {
                f6 = ac;
                f7 = 1.0f;
                float f28 = this.j;
                f8 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                float f29 = f5 / ((float) ((this.i * 6.283185307179586d) / f28));
                f24 += f29;
                f9 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT - (f29 * 360.0f);
            } else {
                f6 = ac;
                f7 = 1.0f;
                f8 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                f9 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            }
            float f30 = f24 % f7;
            float length2 = (pathMeasure.getLength() * f30) / 2.0f;
            float length3 = (pathMeasure.getLength() * (f30 + f6)) / 2.0f;
            pathMeasure.getSegment(length2, length3, path, true);
            axy axyVar2 = (axy) pair.first;
            axyVar2.g();
            pathMeasure.getPosTan(length2, axyVar2.f11043a, axyVar2.f11044b);
            axy axyVar3 = (axy) pair.second;
            axyVar3.g();
            pathMeasure.getPosTan(length3, axyVar3.f11043a, axyVar3.f11044b);
            Matrix matrix = this.u;
            matrix.reset();
            matrix.setRotate(f9);
            axyVar2.h(f9);
            axyVar3.h(f9);
            path.transform(matrix);
            canvas2 = canvas;
            paint2 = paint;
            canvas2.drawPath(path, paint2);
        } else {
            ((axy) pair.first).h(f22 + 90.0f);
            ((axy) pair.first).f(-this.i);
            ((axy) pair.second).h(f22 + f23 + 90.0f);
            ((axy) pair.second).f(-this.i);
            float f31 = this.i;
            float f32 = -f31;
            RectF rectF = this.f19311g;
            rectF.set(f32, f32, f31, f31);
            canvas.drawArc(rectF, f22, f23, false, paint);
            canvas2 = canvas;
            paint2 = paint;
            f8 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        if (alpVar.l() || this.q <= f8) {
            return;
        }
        paint2.setStyle(Paint.Style.FILL);
        ab(canvas2, paint2, (axy) pair.first, f16, this.f19310f, 1.0f);
        ab(canvas, paint, (axy) pair.second, f16, this.f19310f, 1.0f);
    }

    public final void ab(Canvas canvas, Paint paint, axy axyVar, float f2, float f3, float f4) {
        float min = Math.min(f3, this.f19310f);
        float f5 = f2 / 2.0f;
        float min2 = Math.min(f5, (this.q * min) / this.f19310f);
        RectF rectF = new RectF((-f2) / 2.0f, (-min) / 2.0f, f5, min / 2.0f);
        canvas.save();
        float[] fArr = axyVar.f11043a;
        canvas.translate(fArr[0], fArr[1]);
        canvas.rotate(elw.y(axyVar.f11044b));
        canvas.scale(f4, f4);
        canvas.drawRoundRect(rectF, min2, min2, paint);
        canvas.restore();
    }

    @Override // g.elw
    public final void k(Canvas canvas, Paint paint, float f2, float f3, int i, int i2, int i3) {
        int bt = eyt.bt(i, i2);
        this.f19308d = false;
        aa(canvas, paint, f2, f3, bt, i3, i3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, false);
    }

    @Override // g.elw
    public final int l() {
        return z();
    }

    @Override // g.elw
    public final void m(Canvas canvas, Rect rect, float f2, boolean z, boolean z2) {
        float width = rect.width() / z();
        float height = rect.height() / z();
        alp alpVar = (alp) this.v;
        float f3 = (alpVar.f10448c / 2.0f) + alpVar.f10449d;
        canvas.translate((f3 * width) + rect.left, (f3 * height) + rect.top);
        canvas.rotate(-90.0f);
        canvas.scale(width, height);
        if (alpVar.f10450e != 0) {
            canvas.scale(1.0f, -1.0f);
            if (Build.VERSION.SDK_INT == 29) {
                canvas.rotate(0.1f);
            }
        }
        float f4 = -f3;
        canvas.clipRect(f4, f4, f3, f3);
        this.f19310f = alpVar.s * f2;
        this.q = Math.min(r9 / 2, alpVar.aa()) * f2;
        this.f19305a = alpVar.q * f2;
        int i = alpVar.f10448c;
        int i2 = alpVar.s;
        float f5 = (i - i2) / 2.0f;
        this.i = f5;
        if (z || z2) {
            float f6 = ((1.0f - f2) * i2) / 2.0f;
            if ((z && alpVar.z == 2) || (z2 && alpVar.m == 1)) {
                this.i = f5 + f6;
            } else if ((z && alpVar.z == 1) || (z2 && alpVar.m == 2)) {
                this.i = f5 - f6;
            }
        }
        if (z2 && alpVar.m == 3) {
            this.f19307c = f2;
        } else {
            this.f19307c = 1.0f;
        }
    }

    @Override // g.elw
    public final int n() {
        return z();
    }

    @Override // g.elw
    public final void p(Canvas canvas, Paint paint, int i, int i2) {
    }

    @Override // g.elw
    public final void r(Canvas canvas, Paint paint, agm agmVar, int i) {
        int bt = eyt.bt(agmVar.f10189g, i);
        canvas.save();
        canvas.rotate(agmVar.h);
        this.f19308d = agmVar.f10183a;
        float f2 = agmVar.f10186d;
        float f3 = agmVar.f10188f;
        int i2 = agmVar.f10184b;
        aa(canvas, paint, f2, f3, bt, i2, i2, agmVar.f10185c, agmVar.f10187e, true);
        canvas.restore();
    }

    @Override // g.elw
    public final void s() {
        int i;
        Path path = this.w;
        path.rewind();
        path.moveTo(1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = 2;
            if (i3 >= 2) {
                break;
            }
            path.cubicTo(1.0f, 0.5522848f, 0.5522848f, 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
            path.cubicTo(-0.5522848f, 1.0f, -1.0f, 0.5522848f, -1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            path.cubicTo(-1.0f, -0.5522848f, -0.5522848f, -1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, -1.0f);
            path.cubicTo(0.5522848f, -1.0f, 1.0f, -0.5522848f, 1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            i3++;
        }
        Matrix matrix = this.u;
        matrix.reset();
        float f2 = this.i;
        matrix.setScale(f2, f2);
        path.transform(matrix);
        boolean ab2 = ((alp) this.v).ab(this.f19308d);
        PathMeasure pathMeasure = this.t;
        if (ab2) {
            pathMeasure.setPath(path, false);
            float f3 = this.f19306b;
            path.rewind();
            float length = pathMeasure.getLength();
            float f4 = 2.0f;
            int max = Math.max(3, (int) ((length / (this.f19308d ? r2.x : r2.n)) / 2.0f)) * 2;
            this.j = length / max;
            ArrayList arrayList = new ArrayList();
            for (int i4 = 0; i4 < max; i4++) {
                axy axyVar = new axy();
                float f5 = i4;
                pathMeasure.getPosTan(this.j * f5, axyVar.f11043a, axyVar.f11044b);
                axy axyVar2 = new axy();
                float f6 = this.j;
                pathMeasure.getPosTan((f6 / 2.0f) + (f5 * f6), axyVar2.f11043a, axyVar2.f11044b);
                arrayList.add(axyVar);
                axyVar2.f(f3 * 2.0f);
                arrayList.add(axyVar2);
            }
            arrayList.add((axy) arrayList.get(0));
            axy axyVar3 = (axy) arrayList.get(0);
            float[] fArr = axyVar3.f11043a;
            char c2 = 1;
            path.moveTo(fArr[0], fArr[1]);
            int i5 = 1;
            while (i5 < arrayList.size()) {
                axy axyVar4 = (axy) arrayList.get(i5);
                float f7 = (this.j / f4) * 0.48f;
                float[] fArr2 = axyVar3.f11043a;
                float[] fArr3 = new float[i];
                System.arraycopy(fArr2, i2, fArr3, i2, i);
                System.arraycopy(axyVar3.f11044b, i2, new float[i], i2, i);
                new Matrix();
                float[] fArr4 = axyVar4.f11043a;
                float[] fArr5 = new float[i];
                System.arraycopy(fArr4, i2, fArr5, i2, i);
                System.arraycopy(axyVar4.f11044b, i2, new float[i], i2, i);
                new Matrix();
                float atan2 = (float) Math.atan2(r6[c2], r6[i2]);
                double d2 = fArr3[i2];
                double d3 = f7;
                double d4 = atan2;
                fArr3[0] = (float) ((Math.cos(d4) * d3) + d2);
                fArr3[1] = (float) ((Math.sin(d4) * d3) + fArr3[1]);
                double d5 = -f7;
                double atan22 = (float) Math.atan2(r11[1], r11[0]);
                fArr5[0] = (float) ((Math.cos(atan22) * d5) + fArr5[0]);
                float sin = (float) ((Math.sin(atan22) * d5) + fArr5[1]);
                fArr5[1] = sin;
                float f8 = fArr3[0];
                float f9 = fArr3[1];
                float f10 = fArr5[0];
                float[] fArr6 = axyVar4.f11043a;
                path.cubicTo(f8, f9, f10, sin, fArr6[0], fArr6[1]);
                i5++;
                axyVar3 = axyVar4;
                pathMeasure = pathMeasure;
                i2 = 0;
                i = 2;
                f4 = 2.0f;
                c2 = 1;
            }
        }
        pathMeasure.setPath(path, false);
    }

    public final int z() {
        dzw dzwVar = this.v;
        return (((alp) dzwVar).f10449d * 2) + ((alp) dzwVar).f10448c;
    }
}
