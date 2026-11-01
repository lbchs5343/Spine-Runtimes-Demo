package g;

/* loaded from: classes3.dex */
public final class atb extends bke {

    /* renamed from: b, reason: collision with root package name */
    public static final bqd f10791b = new bqd(new atb(0), 0);

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f10792c;

    public /* synthetic */ atb(int i) {
        this.f10792c = i;
    }

    @Override // g.bke
    public final void a(fwg fwgVar, Object obj) {
        switch (this.f10792c) {
            case 0:
                fwgVar.z((Number) obj);
                break;
            case 1:
                Number number = (Number) obj;
                if (number != null) {
                    double doubleValue = number.doubleValue();
                    eem.l(doubleValue);
                    fwgVar.t(doubleValue);
                    break;
                } else {
                    fwgVar.af();
                    break;
                }
            case 2:
                Number number2 = (Number) obj;
                if (number2 != null) {
                    float floatValue = number2.floatValue();
                    eem.l(floatValue);
                    if (!(number2 instanceof Float)) {
                        number2 = Float.valueOf(floatValue);
                    }
                    fwgVar.z(number2);
                    break;
                } else {
                    fwgVar.af();
                    break;
                }
            default:
                fwgVar.af();
                break;
        }
    }

    public String toString() {
        switch (this.f10792c) {
            case 3:
                return "AnonymousOrNonStaticLocalClassAdapter";
            default:
                return super.toString();
        }
    }
}
