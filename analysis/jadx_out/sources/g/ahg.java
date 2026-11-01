package g;

/* loaded from: classes.dex */
public final class ahg implements fjs {

    /* renamed from: a, reason: collision with root package name */
    public final cvu f10220a;

    public ahg(ayw aywVar) {
        this.f10220a = aywVar;
    }

    @Override // g.fjs
    public final Object b(Object obj, w wVar) {
        Object d2 = this.f10220a.d(obj, wVar);
        return d2 == cxr.COROUTINE_SUSPENDED ? d2 : dgi.f14134a;
    }
}
