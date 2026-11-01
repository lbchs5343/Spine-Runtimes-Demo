package g;

import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class gek {

    /* renamed from: a, reason: collision with root package name */
    public float f17987a;

    /* renamed from: b, reason: collision with root package name */
    public float f17988b;

    /* renamed from: c, reason: collision with root package name */
    public float f17989c;

    /* renamed from: d, reason: collision with root package name */
    public float f17990d;

    /* renamed from: e, reason: collision with root package name */
    public String f17991e;

    /* renamed from: f, reason: collision with root package name */
    public float f17992f;

    /* renamed from: g, reason: collision with root package name */
    public float f17993g;
    public float h;
    public float i;
    public float j;
    public float k;

    public final String l() {
        return awf.x(new StringBuilder(), (int) (this.f17987a * 100.0f), "%");
    }

    public final String m(fdp fdpVar) {
        StringBuilder sb = new StringBuilder();
        sb.append(fdpVar.getString(R.string.dab_detail_color, this.f17991e));
        sb.append("\nalpha: ");
        sb.append((int) this.h);
        sb.append("\nred: ");
        sb.append((int) this.j);
        sb.append("\ngreen: ");
        sb.append((int) this.f17989c);
        sb.append("\nblue: ");
        sb.append((int) this.f17990d);
        sb.append("\ncyan: ");
        sb.append(o());
        sb.append("\nmagenta: ");
        sb.append(p());
        sb.append("\nyellow: ");
        sb.append(l());
        sb.append("\nblack: ");
        sb.append(n());
        sb.append("\nx: ");
        float f2 = this.i;
        sb.append((int) f2);
        sb.append("px (" + fso.aa(fdpVar, f2) + "dp)");
        sb.append("\ny: ");
        float f3 = this.f17988b;
        sb.append((int) f3);
        sb.append("px (" + fso.aa(fdpVar, f3) + "dp)");
        return sb.toString();
    }

    public final String n() {
        return awf.x(new StringBuilder(), (int) (this.f17993g * 100.0f), "%");
    }

    public final String o() {
        return awf.x(new StringBuilder(), (int) (this.f17992f * 100.0f), "%");
    }

    public final String p() {
        return awf.x(new StringBuilder(), (int) (this.k * 100.0f), "%");
    }

    public final String toString() {
        m(null);
        throw null;
    }
}
