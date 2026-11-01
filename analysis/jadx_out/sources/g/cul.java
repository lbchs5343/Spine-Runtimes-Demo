package g;

import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public final class cul extends axr implements and {
    final /* synthetic */ eje $completer;
    final /* synthetic */ adm $this_asListenableFuture;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cul(eje ejeVar, ghn ghnVar) {
        super(1);
        this.$completer = ejeVar;
        this.$this_asListenableFuture = ghnVar;
    }

    @Override // g.and
    public final Object invoke(Object obj) {
        gpe gpeVar;
        Throwable th = (Throwable) obj;
        if (th == null) {
            eje ejeVar = this.$completer;
            Object ah = ((ghn) this.$this_asListenableFuture).ah();
            if (ah instanceof gpe) {
                throw new IllegalStateException("This job has not completed yet");
            }
            if (ah instanceof wh) {
                throw ((wh) ah).f20211c;
            }
            xk xkVar = ah instanceof xk ? (xk) ah : null;
            if (xkVar != null && (gpeVar = xkVar.f20295a) != null) {
                ah = gpeVar;
            }
            ejeVar.e(ah);
        } else if (th instanceof CancellationException) {
            eje ejeVar2 = this.$completer;
            ejeVar2.f15639a = true;
            gbb gbbVar = ejeVar2.f15641c;
            if (gbbVar != null && gbbVar.f17842b.cancel(true)) {
                ejeVar2.f15640b = null;
                ejeVar2.f15641c = null;
                ejeVar2.f15642d = null;
            }
        } else {
            this.$completer.f(th);
        }
        return dgi.f14134a;
    }
}
