package g;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class gqw implements dpy {

    /* renamed from: a, reason: collision with root package name */
    public final fvo f18604a;

    /* renamed from: b, reason: collision with root package name */
    public final cnc f18605b;

    /* renamed from: c, reason: collision with root package name */
    public final dlz f18606c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f18607d;

    /* renamed from: f, reason: collision with root package name */
    public final dlz f18608f;

    /* renamed from: g, reason: collision with root package name */
    public final gqk f18609g;
    public final cnc h;
    public final float i;
    public final dlz j;
    public final ArrayList k;
    public final dlz l;
    public final ctn m;

    public gqw(String str, gqk gqkVar, dlz dlzVar, dlz dlzVar2, dlz dlzVar3, dlz dlzVar4, cnc cncVar, ctn ctnVar, fvo fvoVar, float f2, ArrayList arrayList, cnc cncVar2, boolean z) {
        this.f18609g = gqkVar;
        this.j = dlzVar;
        this.l = dlzVar2;
        this.f18606c = dlzVar3;
        this.f18608f = dlzVar4;
        this.h = cncVar;
        this.m = ctnVar;
        this.f18604a = fvoVar;
        this.i = f2;
        this.k = arrayList;
        this.f18605b = cncVar2;
        this.f18607d = z;
    }

    @Override // g.dpy
    public final dvz e(fts ftsVar, cgf cgfVar, grq grqVar) {
        return new exr(ftsVar, grqVar, this);
    }
}
