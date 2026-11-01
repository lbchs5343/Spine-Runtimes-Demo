package g;

import android.window.BackEvent;

/* loaded from: classes.dex */
public final class dqa {

    /* renamed from: a, reason: collision with root package name */
    public final int f14626a;

    /* renamed from: b, reason: collision with root package name */
    public final float f14627b;

    /* renamed from: c, reason: collision with root package name */
    public final float f14628c;

    /* renamed from: d, reason: collision with root package name */
    public final float f14629d;

    public dqa(BackEvent backEvent) {
        cmz cmzVar = cmz.f13155a;
        float b2 = cmzVar.b(backEvent);
        float c2 = cmzVar.c(backEvent);
        float e2 = cmzVar.e(backEvent);
        int f2 = cmzVar.f(backEvent);
        this.f14627b = b2;
        this.f14628c = c2;
        this.f14629d = e2;
        this.f14626a = f2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BackEventCompat{touchX=");
        sb.append(this.f14627b);
        sb.append(", touchY=");
        sb.append(this.f14628c);
        sb.append(", progress=");
        sb.append(this.f14629d);
        sb.append(", swipeEdge=");
        return awf.s(sb, this.f14626a, '}');
    }
}
