package g;

/* loaded from: classes3.dex */
public class cez extends buu {

    /* renamed from: c, reason: collision with root package name */
    public bke f12765c = null;

    @Override // g.bke
    public final void a(fwg fwgVar, Object obj) {
        bke bkeVar = this.f12765c;
        if (bkeVar == null) {
            throw new IllegalStateException("Adapter for type with cyclic dependency has been used before dependency has been resolved");
        }
        bkeVar.a(fwgVar, obj);
    }

    @Override // g.buu
    public final bke b() {
        bke bkeVar = this.f12765c;
        if (bkeVar != null) {
            return bkeVar;
        }
        throw new IllegalStateException("Adapter for type with cyclic dependency has been used before dependency has been resolved");
    }
}
