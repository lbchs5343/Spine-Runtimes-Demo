package g;

/* loaded from: classes3.dex */
public class dvs extends bke {
    @Override // g.bke
    public final void a(fwg fwgVar, Object obj) {
        Number number = (Number) obj;
        if (number == null) {
            fwgVar.af();
        } else {
            fwgVar.t(number.doubleValue());
        }
    }
}
