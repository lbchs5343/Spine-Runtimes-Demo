package g;

/* loaded from: classes3.dex */
public final class bwq extends gom {

    /* renamed from: a, reason: collision with root package name */
    public final eeg f12334a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f12335b;

    public bwq(bku bkuVar, eyd eydVar, eya eyaVar, eeg eegVar, boolean z) {
        super(bkuVar, eydVar, eyaVar);
        this.f12334a = eegVar;
        this.f12335b = z;
    }

    @Override // g.gom
    public final Object c(fdw fdwVar, Object[] objArr) {
        czh czhVar = (czh) this.f12334a.c(fdwVar);
        bdp bdpVar = (bdp) objArr[objArr.length - 1];
        try {
            if (!this.f12335b) {
                return acr.an(czhVar, bdpVar);
            }
            bff.ag(czhVar, "null cannot be cast to non-null type retrofit2.Call<kotlin.Unit?>");
            return acr.aq(czhVar, bdpVar);
        } catch (LinkageError e2) {
            throw e2;
        } catch (ThreadDeath e3) {
            throw e3;
        } catch (VirtualMachineError e4) {
            throw e4;
        } catch (Throwable th) {
            return acr.ar(th, bdpVar);
        }
    }
}
