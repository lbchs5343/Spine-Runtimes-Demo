package g;

/* loaded from: classes.dex */
public final class add extends gsh implements ehh {

    /* renamed from: a, reason: collision with root package name */
    public String f10031a;

    public add(String str, cwx cwxVar) {
        this.f10031a = str;
        this.h = cwxVar;
    }

    @Override // g.gsh
    public final gsh b() {
        add addVar = new add(this.f10031a, this.h);
        addVar.s(this);
        addVar._bb(this.ae);
        return addVar;
    }

    @Override // g.ehh
    public final void c(String str) {
        this.f10031a = str;
    }

    @Override // g.gsh
    public final String d() {
        return this.f10031a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof add) {
            return this.f10031a.equals(((add) obj).f10031a);
        }
        return false;
    }

    @Override // g.ehh
    public final String getName() {
        return this.f10031a;
    }

    public final int hashCode() {
        return this.f10031a.hashCode();
    }

    public final String toString() {
        return "(" + this.f10031a + ' ' + this.h + ')';
    }
}
