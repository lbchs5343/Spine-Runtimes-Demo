package g;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class esd implements dpy {

    /* renamed from: a, reason: collision with root package name */
    public final float f16072a;

    /* renamed from: b, reason: collision with root package name */
    public final dlz f16073b;

    /* renamed from: c, reason: collision with root package name */
    public final cnc f16074c;

    /* renamed from: d, reason: collision with root package name */
    public final cnc f16075d;

    /* renamed from: f, reason: collision with root package name */
    public final ctn f16076f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f16077g;
    public final ArrayList h;
    public final dlz i;
    public final fvo j;

    public esd(String str, cnc cncVar, ArrayList arrayList, dlz dlzVar, dlz dlzVar2, cnc cncVar2, ctn ctnVar, fvo fvoVar, float f2, boolean z) {
        this.f16075d = cncVar;
        this.h = arrayList;
        this.i = dlzVar;
        this.f16073b = dlzVar2;
        this.f16074c = cncVar2;
        this.f16076f = ctnVar;
        this.j = fvoVar;
        this.f16072a = f2;
        this.f16077g = z;
    }

    @Override // g.dpy
    public final dvz e(fts ftsVar, cgf cgfVar, grq grqVar) {
        return new dib(ftsVar, grqVar, this);
    }
}
