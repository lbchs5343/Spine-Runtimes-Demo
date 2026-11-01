package g;

/* loaded from: classes.dex */
public final class bx extends eek {

    /* renamed from: a, reason: collision with root package name */
    public final int f12356a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f12357b;

    /* renamed from: c, reason: collision with root package name */
    public final int[] f12358c;

    public bx(ddo ddoVar) {
        super(hay.SWITCH_DATA, 0);
        this.f12356a = ddoVar.f14023a;
        this.f12358c = ddoVar.f14024b;
        this.f12357b = ddoVar.f14025c;
    }

    @Override // g.eek
    public final String toString() {
        StringBuilder o = awf.o("switch-data {");
        for (int i = 0; i < this.f12356a; i++) {
            o.append(this.f12358c[i]);
            o.append("->");
            o.append(ack.d(this.f12357b[i]));
            o.append(", ");
        }
        o.append('}');
        al(o);
        return o.toString();
    }
}
