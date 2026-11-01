package j$.util.concurrent;

/* loaded from: classes2.dex */
public final class r extends l {

    /* renamed from: e, reason: collision with root package name */
    public r f20769e;

    /* renamed from: f, reason: collision with root package name */
    public r f20770f;

    /* renamed from: g, reason: collision with root package name */
    public r f20771g;
    public r h;
    public boolean i;

    public r(int i, Object obj, Object obj2, l lVar, r rVar) {
        super(i, obj, obj2, lVar);
        this.f20769e = rVar;
    }

    @Override // j$.util.concurrent.l
    public final l a(Object obj, int i) {
        return b(i, obj, null);
    }

    public final r b(int i, Object obj, Class cls) {
        if (obj == null) {
            return null;
        }
        r rVar = this;
        do {
            r rVar2 = rVar.f20770f;
            r rVar3 = rVar.f20771g;
            int i2 = rVar.f20751a;
            if (i2 <= i) {
                if (i2 >= i) {
                    Object obj2 = rVar.f20752b;
                    if (obj2 == obj || (obj2 != null && obj.equals(obj2))) {
                        return rVar;
                    }
                    if (rVar2 != null) {
                        if (rVar3 != null) {
                            if (cls != null || (cls = ConcurrentHashMap.c(obj)) != null) {
                                int i3 = ConcurrentHashMap.f20732g;
                                int compareTo = (obj2 == null || obj2.getClass() != cls) ? 0 : ((Comparable) obj).compareTo(obj2);
                                if (compareTo != 0) {
                                    if (compareTo >= 0) {
                                        rVar2 = rVar3;
                                    }
                                }
                            }
                            r b2 = rVar3.b(i, obj, cls);
                            if (b2 != null) {
                                return b2;
                            }
                        }
                    }
                }
                rVar = rVar3;
            }
            rVar = rVar2;
        } while (rVar != null);
        return null;
    }
}
