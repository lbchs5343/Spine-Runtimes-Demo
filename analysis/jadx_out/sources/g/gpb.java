package g;

import android.graphics.Path;
import android.graphics.PointF;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class gpb implements fyj, gjf, dvz {

    /* renamed from: a, reason: collision with root package name */
    public final bsb f18525a;

    /* renamed from: b, reason: collision with root package name */
    public final bsb f18526b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18527c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f18528d;

    /* renamed from: e, reason: collision with root package name */
    public final bsb f18529e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f18530f;
    public final bsb h;
    public final bsb j;
    public final fts k;
    public final bsb l;
    public final ezt m;
    public final cej o;

    /* renamed from: g, reason: collision with root package name */
    public final Path f18531g = new Path();
    public final ais i = new ais(1);

    public gpb(fts ftsVar, grq grqVar, cup cupVar) {
        this.k = ftsVar;
        ezt type = cupVar.getType();
        this.m = type;
        this.f18528d = cupVar.f13544g;
        this.f18530f = cupVar.i;
        cej dq = cupVar.h.dq();
        this.h = (bsb) dq;
        cej dq2 = cupVar.j.dq();
        this.o = dq2;
        cej dq3 = cupVar.f13540b.dq();
        this.f18525a = (bsb) dq3;
        cej dq4 = cupVar.f13543f.dq();
        this.l = (bsb) dq4;
        cej dq5 = cupVar.f13539a.dq();
        this.f18529e = (bsb) dq5;
        ezt eztVar = ezt.STAR;
        if (type == eztVar) {
            this.j = (bsb) cupVar.f13541c.dq();
            this.f18526b = (bsb) cupVar.k.dq();
        } else {
            this.j = null;
            this.f18526b = null;
        }
        grqVar.bg(dq);
        grqVar.bg(dq2);
        grqVar.bg(dq3);
        grqVar.bg(dq4);
        grqVar.bg(dq5);
        if (type == eztVar) {
            grqVar.bg(this.j);
            grqVar.bg(this.f18526b);
        }
        dq.l(this);
        dq2.l(this);
        dq3.l(this);
        dq4.l(this);
        dq5.l(this);
        if (type == eztVar) {
            this.j.l(this);
            this.f18526b.l(this);
        }
    }

    @Override // g.fyj
    public final void dq() {
        this.f18527c = false;
        this.k.invalidateSelf();
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
                    this.i.f10279a.add(ejwVar);
                    ejwVar.g(this);
                }
            }
            i++;
        }
    }

    @Override // g.gjf
    public final Path p() {
        float f2;
        float f3;
        float f4;
        float f5;
        double d2;
        float f6;
        float f7;
        float f8;
        float f9;
        int i;
        float f10;
        float f11;
        float f12;
        int i2;
        double d3;
        boolean z = this.f18527c;
        Path path = this.f18531g;
        if (z) {
            return path;
        }
        path.reset();
        if (this.f18528d) {
            this.f18527c = true;
            return path;
        }
        int i3 = enf.f15858a[this.m.ordinal()];
        cej cejVar = this.o;
        bsb bsbVar = this.l;
        bsb bsbVar2 = this.f18529e;
        bsb bsbVar3 = this.f18525a;
        bsb bsbVar4 = this.h;
        if (i3 == 1) {
            float floatValue = ((Float) bsbVar4.m()).floatValue();
            double radians = Math.toRadians((bsbVar3 != null ? ((Float) bsbVar3.m()).floatValue() : 0.0d) - 90.0d);
            double d4 = floatValue;
            float f13 = (float) (6.283185307179586d / d4);
            if (this.f18530f) {
                f13 *= -1.0f;
            }
            float f14 = f13;
            float f15 = f14 / 2.0f;
            float f16 = floatValue - ((int) floatValue);
            if (f16 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                f2 = f15;
                f3 = 2.0f;
                radians += (1.0f - f16) * f15;
            } else {
                f2 = f15;
                f3 = 2.0f;
            }
            float floatValue2 = ((Float) bsbVar.m()).floatValue();
            float floatValue3 = ((Float) this.j.m()).floatValue();
            bsb bsbVar5 = this.f18526b;
            float floatValue4 = bsbVar5 != null ? ((Float) bsbVar5.m()).floatValue() / 100.0f : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            float floatValue5 = bsbVar2 != null ? ((Float) bsbVar2.m()).floatValue() / 100.0f : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            if (f16 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                float g2 = awf.g(floatValue2, floatValue3, f16, floatValue3);
                double d5 = g2;
                float cos = (float) (Math.cos(radians) * d5);
                float sin = (float) (Math.sin(radians) * d5);
                path.moveTo(cos, sin);
                d2 = radians + ((f14 * f16) / f3);
                f5 = f2;
                f6 = sin;
                f7 = g2;
                f4 = cos;
            } else {
                double d6 = floatValue2;
                float cos2 = (float) (Math.cos(radians) * d6);
                float sin2 = (float) (d6 * Math.sin(radians));
                path.moveTo(cos2, sin2);
                f4 = cos2;
                f5 = f2;
                d2 = radians + f5;
                f6 = sin2;
                f7 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            }
            double ceil = Math.ceil(d4) * 2.0d;
            float f17 = f6;
            double d7 = d2;
            int i4 = 0;
            boolean z2 = false;
            while (true) {
                double d8 = i4;
                if (d8 >= ceil) {
                    break;
                }
                float f18 = z2 ? floatValue2 : floatValue3;
                float f19 = (f7 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || d8 != ceil - 2.0d) ? f5 : (f14 * f16) / f3;
                if (f7 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || d8 != ceil - 1.0d) {
                    f8 = f16;
                    f9 = f18;
                    i = i4;
                    f10 = f5;
                } else {
                    f8 = f16;
                    f9 = f7;
                    f10 = f5;
                    i = i4;
                }
                double d9 = f9;
                float cos3 = (float) (Math.cos(d7) * d9);
                float sin3 = (float) (Math.sin(d7) * d9);
                if (floatValue4 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && floatValue5 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    path.lineTo(cos3, sin3);
                    f12 = cos3;
                    f11 = sin3;
                } else {
                    float f20 = f17;
                    double atan2 = (float) (Math.atan2(f17, f4) - 1.5707963267948966d);
                    float cos4 = (float) Math.cos(atan2);
                    float sin4 = (float) Math.sin(atan2);
                    Path path2 = path;
                    f11 = sin3;
                    double atan22 = (float) (Math.atan2(sin3, cos3) - 1.5707963267948966d);
                    float cos5 = (float) Math.cos(atan22);
                    float sin5 = (float) Math.sin(atan22);
                    float f21 = z2 ? floatValue4 : floatValue5;
                    float f22 = z2 ? floatValue5 : floatValue4;
                    float f23 = (z2 ? floatValue3 : floatValue2) * f21 * 0.47829f;
                    float f24 = cos4 * f23;
                    float f25 = f23 * sin4;
                    float f26 = (z2 ? floatValue2 : floatValue3) * f22 * 0.47829f;
                    float f27 = cos5 * f26;
                    float f28 = f26 * sin5;
                    if (f16 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        if (i == 0) {
                            f24 *= f8;
                            f25 *= f8;
                        } else if (d8 == ceil - 1.0d) {
                            f27 *= f8;
                            f28 *= f8;
                        }
                    }
                    f12 = cos3;
                    path = path2;
                    path.cubicTo(f4 - f24, f20 - f25, f27 + cos3, f11 + f28, f12, f11);
                }
                d7 += f19;
                z2 = !z2;
                i4 = i + 1;
                f4 = f12;
                f5 = f10;
                f16 = f8;
                f17 = f11;
                f3 = 2.0f;
            }
            PointF pointF = (PointF) cejVar.m();
            path.offset(pointF.x, pointF.y);
            path.close();
        } else if (i3 == 2) {
            int floor = (int) Math.floor(((Float) bsbVar4.m()).floatValue());
            double radians2 = Math.toRadians((bsbVar3 != null ? ((Float) bsbVar3.m()).floatValue() : 0.0d) - 90.0d);
            double d10 = floor;
            float floatValue6 = ((Float) bsbVar2.m()).floatValue() / 100.0f;
            float floatValue7 = ((Float) bsbVar.m()).floatValue();
            double d11 = floatValue7;
            float cos6 = (float) (Math.cos(radians2) * d11);
            float sin6 = (float) (Math.sin(radians2) * d11);
            path.moveTo(cos6, sin6);
            double d12 = (float) (6.283185307179586d / d10);
            double ceil2 = Math.ceil(d10);
            double d13 = radians2 + d12;
            int i5 = 0;
            while (i5 < ceil2) {
                float cos7 = (float) (Math.cos(d13) * d11);
                cej cejVar2 = cejVar;
                float sin7 = (float) (Math.sin(d13) * d11);
                if (floatValue6 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    i2 = i5;
                    Path path3 = path;
                    double atan23 = (float) (Math.atan2(sin6, cos6) - 1.5707963267948966d);
                    float cos8 = (float) Math.cos(atan23);
                    float sin8 = (float) Math.sin(atan23);
                    d3 = d11;
                    double atan24 = (float) (Math.atan2(sin7, cos7) - 1.5707963267948966d);
                    float f29 = floatValue7 * floatValue6 * 0.25f;
                    float f30 = cos8 * f29;
                    float f31 = f29 * sin8;
                    float cos9 = ((float) Math.cos(atan24)) * f29;
                    float sin9 = sin7 + (f29 * ((float) Math.sin(atan24)));
                    path = path3;
                    path.cubicTo(cos6 - f30, sin6 - f31, cos9 + cos7, sin9, cos7, sin7);
                } else {
                    i2 = i5;
                    d3 = d11;
                    path.lineTo(cos7, sin7);
                }
                d13 += d12;
                i5 = i2 + 1;
                cos6 = cos7;
                sin6 = sin7;
                cejVar = cejVar2;
                d11 = d3;
            }
            PointF pointF2 = (PointF) cejVar.m();
            path.offset(pointF2.x, pointF2.y);
            path.close();
        }
        path.close();
        this.i.f(path);
        this.f18527c = true;
        return path;
    }
}
