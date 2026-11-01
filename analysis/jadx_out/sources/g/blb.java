package g;

/* loaded from: classes3.dex */
public class blb extends bke {
    @Override // g.bke
    public final void a(fwg fwgVar, Object obj) {
        Number number = (Number) obj;
        if (number == null) {
            fwgVar.af();
            return;
        }
        if (!(number instanceof Float)) {
            number = Float.valueOf(number.floatValue());
        }
        fwgVar.z(number);
    }
}
