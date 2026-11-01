package g;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class gjz {

    /* renamed from: a, reason: collision with root package name */
    public final cfm f18287a;

    /* renamed from: b, reason: collision with root package name */
    public final cih f18288b;

    public gjz(cfm cfmVar, cih cihVar) {
        this.f18287a = cfmVar;
        this.f18288b = cihVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && gjz.class == obj.getClass()) {
            gjz gjzVar = (gjz) obj;
            if (Objects.equals(this.f18287a, gjzVar.f18287a) && Objects.equals(this.f18288b, gjzVar.f18288b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f18287a, this.f18288b);
    }

    public final String toString() {
        return "UsePlace{region=" + this.f18287a + ", block=" + this.f18288b + '}';
    }
}
