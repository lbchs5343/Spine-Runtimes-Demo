package g;

/* loaded from: classes.dex */
public abstract class avu extends w implements hdx {
    private final int arity;

    public avu(int i, bdp bdpVar) {
        super(bdpVar);
        this.arity = i;
    }

    @Override // g.hdx
    public final int h() {
        return this.arity;
    }

    @Override // g.bry
    public final String toString() {
        if (i() != null) {
            return super.toString();
        }
        bii.f11650a.getClass();
        String a2 = cky.a(this);
        bff.e(a2, "renderLambdaToString(...)");
        return a2;
    }
}
