package g;

/* loaded from: classes.dex */
public abstract class gvf extends cwy implements hdx, eqk, eym {
    private final int arity;
    private final int flags;

    public gvf(int i, Object obj, Class cls, String str, String str2, int i2) {
        super(obj, cls, str, str2, (i2 & 1) == 1);
        this.arity = i;
        this.flags = 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof gvf) {
            gvf gvfVar = (gvf) obj;
            return e().equals(gvfVar.e()) && i().equals(gvfVar.i()) && this.flags == gvfVar.flags && this.arity == gvfVar.arity && bff.n(this.receiver, gvfVar.receiver) && bff.n(f(), gvfVar.f());
        }
        if (!(obj instanceof gvf)) {
            return false;
        }
        eqk eqkVar = this.f13658c;
        if (eqkVar == null) {
            g();
            this.f13658c = this;
            eqkVar = this;
        }
        return obj.equals(eqkVar);
    }

    @Override // g.cwy
    public final eqk g() {
        bii.f11650a.getClass();
        return this;
    }

    @Override // g.hdx
    public final int h() {
        return this.arity;
    }

    public final int hashCode() {
        return i().hashCode() + ((e().hashCode() + (f() == null ? 0 : f().hashCode() * 31)) * 31);
    }

    public final String toString() {
        eqk eqkVar = this.f13658c;
        if (eqkVar == null) {
            g();
            this.f13658c = this;
            eqkVar = this;
        }
        if (eqkVar != this) {
            return eqkVar.toString();
        }
        if ("<init>".equals(e())) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + e() + " (Kotlin reflection is not available)";
    }
}
