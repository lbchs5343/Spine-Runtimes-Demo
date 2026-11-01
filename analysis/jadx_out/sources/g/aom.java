package g;

/* loaded from: classes3.dex */
public class aom extends bke {
    @Override // g.bke
    public final void a(fwg fwgVar, Object obj) {
        Boolean bool = (Boolean) obj;
        if (bool == null) {
            fwgVar.af();
            return;
        }
        fwgVar.ad();
        fwgVar.aa();
        fwgVar.k.write(bool.booleanValue() ? "true" : "false");
    }
}
