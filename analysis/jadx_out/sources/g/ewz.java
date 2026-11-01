package g;

import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class ewz implements dpy {

    /* renamed from: a, reason: collision with root package name */
    public final String f16304a;

    /* renamed from: b, reason: collision with root package name */
    public final List f16305b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f16306c;

    public ewz(String str, List list, boolean z) {
        this.f16304a = str;
        this.f16305b = list;
        this.f16306c = z;
    }

    @Override // g.dpy
    public final dvz e(fts ftsVar, cgf cgfVar, grq grqVar) {
        return new bl(ftsVar, grqVar, this, cgfVar);
    }

    public final String toString() {
        return "ShapeGroup{name='" + this.f16304a + "' Shapes: " + Arrays.toString(this.f16305b.toArray()) + '}';
    }
}
