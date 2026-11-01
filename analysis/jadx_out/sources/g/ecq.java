package g;

/* loaded from: classes.dex */
public abstract class ecq extends cwy implements eqk {
    private final boolean syntheticJavaProperty;

    public ecq(bfw bfwVar) {
        super(bfwVar, fso.class, "classSimpleName", "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;", true);
        this.syntheticJavaProperty = false;
    }

    public final eqk a() {
        if (this.syntheticJavaProperty) {
            return this;
        }
        eqk eqkVar = this.f13658c;
        if (eqkVar != null) {
            return eqkVar;
        }
        g();
        this.f13658c = this;
        return this;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ecq) {
            ecq ecqVar = (ecq) obj;
            return f().equals(ecqVar.f()) && e().equals(ecqVar.e()) && i().equals(ecqVar.i()) && bff.n(this.receiver, ecqVar.receiver);
        }
        if (obj instanceof ecq) {
            return obj.equals(a());
        }
        return false;
    }

    public final int hashCode() {
        return i().hashCode() + ((e().hashCode() + (f().hashCode() * 31)) * 31);
    }

    public final String toString() {
        eqk a2 = a();
        if (a2 != this) {
            return a2.toString();
        }
        return "property " + e() + " (Kotlin reflection is not available)";
    }
}
