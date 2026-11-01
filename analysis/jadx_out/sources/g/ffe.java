package g;

/* loaded from: classes.dex */
public final class ffe implements fjs {

    /* renamed from: a, reason: collision with root package name */
    public final bai f16693a;

    /* renamed from: c, reason: collision with root package name */
    public final boj f16694c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f16695d;

    public ffe(fjs fjsVar, boj bojVar) {
        this.f16694c = bojVar;
        this.f16695d = gs.al(bojVar);
        this.f16693a = new bai(fjsVar, null);
    }

    @Override // g.fjs
    public final Object b(Object obj, w wVar) {
        Object ba = acr.ba(this.f16694c, obj, this.f16695d, this.f16693a, wVar);
        return ba == cxr.COROUTINE_SUSPENDED ? ba : dgi.f14134a;
    }
}
