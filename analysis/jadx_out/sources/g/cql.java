package g;

import java.lang.reflect.Array;

/* loaded from: classes3.dex */
public final class cql extends bke {

    /* renamed from: b, reason: collision with root package name */
    public static final gxq f13334b = new gxq();

    /* renamed from: c, reason: collision with root package name */
    public final dpq f13335c;

    public cql(eem eemVar, bke bkeVar, Class cls) {
        this.f13335c = new dpq(cls, eemVar, bkeVar);
    }

    @Override // g.bke
    public final void a(fwg fwgVar, Object obj) {
        if (obj == null) {
            fwgVar.af();
            return;
        }
        fwgVar.ae();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.f13335c.a(fwgVar, Array.get(obj, i));
        }
        fwgVar.w();
    }
}
