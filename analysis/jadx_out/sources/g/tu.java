package g;

import java.util.Date;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class tu implements ggq {

    /* renamed from: c, reason: collision with root package name */
    public static final ait f20069c;

    /* renamed from: d, reason: collision with root package name */
    public static final ait f20070d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f20071e;

    /* renamed from: f, reason: collision with root package name */
    public final HashMap f20072f;

    /* renamed from: g, reason: collision with root package name */
    public final HashMap f20073g;
    public final ehz h;

    /* renamed from: b, reason: collision with root package name */
    public static final ehz f20068b = new ehz(0);

    /* renamed from: a, reason: collision with root package name */
    public static final afj f20067a = new afj();

    /* JADX WARN: Type inference failed for: r0v1, types: [g.ait] */
    /* JADX WARN: Type inference failed for: r0v2, types: [g.ait] */
    static {
        final int i = 0;
        f20069c = new ya() { // from class: g.ait
            @Override // g.box
            public final void b(Object obj, Object obj2) {
                switch (i) {
                    case 0:
                        ((abx) obj2).a((String) obj);
                        break;
                    default:
                        ((abx) obj2).b(((Boolean) obj).booleanValue());
                        break;
                }
            }
        };
        final int i2 = 1;
        f20070d = new ya() { // from class: g.ait
            @Override // g.box
            public final void b(Object obj, Object obj2) {
                switch (i2) {
                    case 0:
                        ((abx) obj2).a((String) obj);
                        break;
                    default:
                        ((abx) obj2).b(((Boolean) obj).booleanValue());
                        break;
                }
            }
        };
    }

    public tu() {
        HashMap hashMap = new HashMap();
        this.f20072f = hashMap;
        HashMap hashMap2 = new HashMap();
        this.f20073g = hashMap2;
        this.h = f20068b;
        this.f20071e = false;
        hashMap2.put(String.class, f20069c);
        hashMap.remove(String.class);
        hashMap2.put(Boolean.class, f20070d);
        hashMap.remove(Boolean.class);
        hashMap2.put(Date.class, f20067a);
        hashMap.remove(Date.class);
    }

    public final ggq i(Class cls, xx xxVar) {
        this.f20072f.put(cls, xxVar);
        this.f20073g.remove(cls);
        return this;
    }
}
