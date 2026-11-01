package g;

import java.io.Serializable;

/* loaded from: classes.dex */
public abstract class axr implements hdx, Serializable {
    private final int arity;

    public axr(int i) {
        this.arity = i;
    }

    @Override // g.hdx
    public final int h() {
        return this.arity;
    }

    public final String toString() {
        bii.f11650a.getClass();
        String a2 = cky.a(this);
        bff.e(a2, "renderLambdaToString(...)");
        return a2;
    }
}
