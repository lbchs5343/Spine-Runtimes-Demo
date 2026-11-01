package g;

import j$.util.Objects;
import java.util.List;

/* loaded from: classes.dex */
public final class mf implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final Object f19637a;

    /* renamed from: b, reason: collision with root package name */
    public final List f19638b;

    /* renamed from: c, reason: collision with root package name */
    public final gju f19639c;

    /* renamed from: d, reason: collision with root package name */
    public final String f19640d;

    public mf(String str, List list, Object obj, gju gjuVar) {
        Objects.requireNonNull(str);
        this.f19640d = str;
        Objects.requireNonNull(list);
        this.f19638b = list;
        Objects.requireNonNull(obj);
        this.f19637a = obj;
        Objects.requireNonNull(gjuVar);
        this.f19639c = gjuVar;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f19640d.compareTo(((mf) obj).f19640d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof mf) {
            return this.f19640d.equals(((mf) obj).f19640d);
        }
        return false;
    }

    public final int hashCode() {
        return this.f19640d.hashCode();
    }

    public final String toString() {
        return "Res{" + this.f19640d + ", type=" + this.f19639c + ", subFiles=" + this.f19638b + '}';
    }
}
