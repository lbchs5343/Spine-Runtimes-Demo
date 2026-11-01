package g;

/* loaded from: classes.dex */
public final class bhw implements dqx {

    /* renamed from: b, reason: collision with root package name */
    public final dqx f11616b;

    public bhw(dqx dqxVar) {
        this.f11616b = dqxVar;
    }

    @Override // g.dqx
    public final Object a(fjs fjsVar, w wVar) {
        aye ayeVar = new aye();
        ayeVar.element = ckd.h;
        Object a2 = this.f11616b.a(new efw(this, ayeVar, fjsVar), wVar);
        return a2 == cxr.COROUTINE_SUSPENDED ? a2 : dgi.f14134a;
    }
}
