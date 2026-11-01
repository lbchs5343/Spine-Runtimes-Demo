package g;

/* loaded from: classes.dex */
public abstract class edf extends bry {
    public edf(bdp bdpVar) {
        super(bdpVar);
        if (bdpVar != null && bdpVar.getContext() != cgq.f12850a) {
            throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext");
        }
    }

    @Override // g.bdp
    public final boj getContext() {
        return cgq.f12850a;
    }
}
