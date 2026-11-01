package g;

import android.graphics.Path;

/* loaded from: classes.dex */
public final class flm implements dpy {

    /* renamed from: a, reason: collision with root package name */
    public final dlz f16988a;

    /* renamed from: b, reason: collision with root package name */
    public final dlz f16989b;

    /* renamed from: c, reason: collision with root package name */
    public final gqk f16990c;

    /* renamed from: d, reason: collision with root package name */
    public final dlz f16991d;

    /* renamed from: f, reason: collision with root package name */
    public final Path.FillType f16992f;

    /* renamed from: g, reason: collision with root package name */
    public final dlz f16993g;
    public final boolean h;

    public flm(String str, gqk gqkVar, Path.FillType fillType, dlz dlzVar, dlz dlzVar2, dlz dlzVar3, dlz dlzVar4, boolean z) {
        this.f16990c = gqkVar;
        this.f16992f = fillType;
        this.f16993g = dlzVar;
        this.f16988a = dlzVar2;
        this.f16989b = dlzVar3;
        this.f16991d = dlzVar4;
        this.h = z;
    }

    @Override // g.dpy
    public final dvz e(fts ftsVar, cgf cgfVar, grq grqVar) {
        return new com(ftsVar, cgfVar, grqVar, this);
    }
}
