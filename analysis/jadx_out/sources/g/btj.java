package g;

/* loaded from: classes.dex */
public final class btj extends afo {

    /* renamed from: a, reason: collision with root package name */
    public final fkb f12191a;

    public btj(fkb fkbVar) {
        this.f12191a = fkbVar;
    }

    @Override // g.afo
    public final fkb be(cgy cgyVar) {
        fkb fkbVar = this.f12191a;
        Class<?> cls = fkbVar.getClass();
        fkb f2 = fkbVar.f(cgyVar);
        if (cls.isInstance(f2)) {
            return (fkb) cls.cast(f2);
        }
        throw new gck("A state of class " + fkbVar.getClass() + " has duplicated to produce a class of " + f2.getClass());
    }
}
