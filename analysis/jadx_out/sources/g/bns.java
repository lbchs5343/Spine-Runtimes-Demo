package g;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class bns {

    /* renamed from: a, reason: collision with root package name */
    public final amj f11881a;

    /* renamed from: b, reason: collision with root package name */
    public final cih f11882b;

    public bns(cih cihVar, amj amjVar) {
        Objects.requireNonNull(amjVar);
        this.f11881a = amjVar;
        Objects.requireNonNull(cihVar);
        this.f11882b = cihVar;
    }

    public final String toString() {
        return "BlockParentContainer{" + this.f11882b + ", parent=" + this.f11881a + '}';
    }
}
