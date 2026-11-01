package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class ceq {

    /* renamed from: a, reason: collision with root package name */
    public double f12750a;

    /* renamed from: b, reason: collision with root package name */
    public double f12751b;

    /* renamed from: c, reason: collision with root package name */
    public double f12752c;

    /* renamed from: d, reason: collision with root package name */
    public double f12753d;

    /* renamed from: e, reason: collision with root package name */
    public double f12754e;

    /* renamed from: f, reason: collision with root package name */
    public double f12755f;

    /* renamed from: g, reason: collision with root package name */
    public double f12756g;
    public final akp h;
    public boolean i;
    public double j;

    public ceq() {
        this.f12753d = Math.sqrt(1500.0d);
        this.f12756g = 0.5d;
        this.i = false;
        this.f12755f = Double.MAX_VALUE;
        this.h = new akp();
    }

    public ceq(float f2) {
        this.f12753d = Math.sqrt(1500.0d);
        this.f12756g = 0.5d;
        this.i = false;
        this.h = new akp();
        this.f12755f = f2;
    }

    public final void k(float f2) {
        if (f2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            throw new IllegalArgumentException("Damping ratio must be non-negative");
        }
        this.f12756g = f2;
        this.i = false;
    }

    public final void l(float f2) {
        if (f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            throw new IllegalArgumentException("Spring stiffness constant must be positive.");
        }
        this.f12753d = Math.sqrt(f2);
        this.i = false;
    }

    public final akp m(double d2, double d3, long j) {
        double sin;
        double cos;
        if (!this.i) {
            if (this.f12755f == Double.MAX_VALUE) {
                throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
            }
            double d4 = this.f12756g;
            if (d4 > 1.0d) {
                double d5 = this.f12753d;
                this.f12754e = (Math.sqrt((d4 * d4) - 1.0d) * d5) + ((-d4) * d5);
                double d6 = this.f12756g;
                double d7 = this.f12753d;
                this.j = ((-d6) * d7) - (Math.sqrt((d6 * d6) - 1.0d) * d7);
            } else if (d4 >= 0.0d && d4 < 1.0d) {
                this.f12750a = Math.sqrt(1.0d - (d4 * d4)) * this.f12753d;
            }
            this.i = true;
        }
        double d8 = j / 1000.0d;
        double d9 = d2 - this.f12755f;
        double d10 = this.f12756g;
        if (d10 > 1.0d) {
            double d11 = this.j;
            double d12 = ((d11 * d9) - d3) / (d11 - this.f12754e);
            double d13 = d9 - d12;
            sin = (Math.pow(2.718281828459045d, this.f12754e * d8) * d12) + (Math.pow(2.718281828459045d, d11 * d8) * d13);
            double d14 = this.j;
            double pow = Math.pow(2.718281828459045d, d14 * d8) * d13 * d14;
            double d15 = this.f12754e;
            cos = (Math.pow(2.718281828459045d, d15 * d8) * d12 * d15) + pow;
        } else if (d10 == 1.0d) {
            double d16 = this.f12753d;
            double d17 = (d16 * d9) + d3;
            double d18 = (d17 * d8) + d9;
            double pow2 = Math.pow(2.718281828459045d, (-d16) * d8) * d18;
            double pow3 = Math.pow(2.718281828459045d, (-this.f12753d) * d8) * d18;
            double d19 = -this.f12753d;
            cos = (Math.pow(2.718281828459045d, d19 * d8) * d17) + (pow3 * d19);
            sin = pow2;
        } else {
            double d20 = 1.0d / this.f12750a;
            double d21 = this.f12753d;
            double d22 = ((d10 * d21 * d9) + d3) * d20;
            sin = ((Math.sin(this.f12750a * d8) * d22) + (Math.cos(this.f12750a * d8) * d9)) * Math.pow(2.718281828459045d, (-d10) * d21 * d8);
            double d23 = this.f12753d;
            double d24 = this.f12756g;
            double d25 = (-d23) * sin * d24;
            double pow4 = Math.pow(2.718281828459045d, (-d24) * d23 * d8);
            double d26 = this.f12750a;
            double sin2 = Math.sin(d26 * d8) * (-d26) * d9;
            double d27 = this.f12750a;
            cos = (((Math.cos(d27 * d8) * d22 * d27) + sin2) * pow4) + d25;
        }
        float f2 = (float) (sin + this.f12755f);
        akp akpVar = this.h;
        akpVar.f10398a = f2;
        akpVar.f10399b = (float) cos;
        return akpVar;
    }
}
