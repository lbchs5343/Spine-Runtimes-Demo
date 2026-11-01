package g;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class gay implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public boolean f17828a;

    /* renamed from: b, reason: collision with root package name */
    public gez f17829b;

    /* renamed from: c, reason: collision with root package name */
    public final dpa f17830c;

    /* renamed from: d, reason: collision with root package name */
    public final ClassLoader f17831d;

    /* renamed from: e, reason: collision with root package name */
    public evf f17832e;

    /* renamed from: f, reason: collision with root package name */
    public final cqc f17833f;

    /* renamed from: g, reason: collision with root package name */
    public final cka f17834g;
    public final ArrayList h = new ArrayList();

    public gay(cqc cqcVar, cka ckaVar) {
        this.f17833f = cqcVar;
        this.f17834g = ckaVar;
        this.f17830c = ckaVar.a();
        this.f17831d = ckaVar.getClass().getClassLoader();
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return ((String) this.f17830c.f14569g).compareTo((String) ((gay) obj).f17830c.f14569g);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof gay) {
            return ((String) this.f17830c.f14569g).equals((String) ((gay) obj).f17830c.f14569g);
        }
        return false;
    }

    public final int hashCode() {
        return ((String) this.f17830c.f14569g).hashCode();
    }

    public final String toString() {
        return (String) this.f17830c.f14569g;
    }
}
