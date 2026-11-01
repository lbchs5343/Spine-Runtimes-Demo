package g;

/* loaded from: classes.dex */
public final class fdf implements dqx {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ dqx f16596b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ avu f16597c;

    /* JADX WARN: Multi-variable type inference failed */
    public fdf(bhw bhwVar, bto btoVar) {
        this.f16596b = bhwVar;
        this.f16597c = (avu) btoVar;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [g.avu, g.bto] */
    @Override // g.dqx
    public final Object a(fjs fjsVar, w wVar) {
        Object a2 = this.f16596b.a(new efj(fjsVar, this.f16597c), wVar);
        return a2 == cxr.COROUTINE_SUSPENDED ? a2 : dgi.f14134a;
    }
}
