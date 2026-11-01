package g;

/* loaded from: classes3.dex */
public class bzd implements dsb {
    @Override // g.dsb
    public final bke j(eem eemVar, ri riVar) {
        Class cls = riVar.f19901a;
        if (!Enum.class.isAssignableFrom(cls) || cls == Enum.class) {
            return null;
        }
        if (!cls.isEnum()) {
            cls = cls.getSuperclass();
        }
        return new dpq(cls);
    }
}
