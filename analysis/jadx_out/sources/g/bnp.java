package g;

import java.util.HashSet;

/* loaded from: classes.dex */
public final class bnp {

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f11877a;

    /* renamed from: b, reason: collision with root package name */
    public final bjk f11878b;

    public bnp() {
        this.f11877a = new HashSet();
    }

    public bnp(bnp bnpVar, bjk bjkVar) {
        this.f11877a = new HashSet(bnpVar.f11877a);
        this.f11878b = bjkVar;
    }

    public final String toString() {
        return "Region: " + this.f11878b + ", exits: " + this.f11877a;
    }
}
