package g;

/* loaded from: classes3.dex */
public final class exm extends gom {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16323a;

    /* renamed from: b, reason: collision with root package name */
    public final eeg f16324b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ exm(bku bkuVar, eyd eydVar, eya eyaVar, eeg eegVar, int i) {
        super(bkuVar, eydVar, eyaVar);
        this.f16323a = i;
        this.f16324b = eegVar;
    }

    @Override // g.gom
    public final Object c(fdw fdwVar, Object[] objArr) {
        switch (this.f16323a) {
            case 0:
                return this.f16324b.c(fdwVar);
            default:
                czh czhVar = (czh) this.f16324b.c(fdwVar);
                bdp bdpVar = (bdp) objArr[objArr.length - 1];
                try {
                    gsn gsnVar = new gsn(1, awt.ab(bdpVar));
                    gsnVar.ac();
                    gsnVar.y(new fug(czhVar, 2));
                    czhVar.d(new dcq(11, gsnVar));
                    return gsnVar.z();
                } catch (Exception e2) {
                    return acr.ar(e2, bdpVar);
                }
        }
    }
}
