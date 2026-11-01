package g;

import android.graphics.Path;

/* loaded from: classes.dex */
public final class gjw implements dpy {

    /* renamed from: a, reason: collision with root package name */
    public final dlz f18273a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f18274b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f18275c;

    /* renamed from: d, reason: collision with root package name */
    public final Path.FillType f18276d;

    /* renamed from: f, reason: collision with root package name */
    public final dlz f18277f;

    public gjw(String str, boolean z, Path.FillType fillType, dlz dlzVar, dlz dlzVar2, boolean z2) {
        this.f18275c = z;
        this.f18276d = fillType;
        this.f18277f = dlzVar;
        this.f18273a = dlzVar2;
        this.f18274b = z2;
    }

    @Override // g.dpy
    public final dvz e(fts ftsVar, cgf cgfVar, grq grqVar) {
        return new vl(ftsVar, grqVar, this);
    }

    public final String toString() {
        return "ShapeFill{color=, fillEnabled=" + this.f18275c + '}';
    }
}
