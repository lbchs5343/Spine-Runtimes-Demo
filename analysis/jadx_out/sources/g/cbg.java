package g;

import android.content.Context;
import java.util.UUID;

/* loaded from: classes.dex */
public final class cbg extends avu implements bto {
    final /* synthetic */ Context $context;
    final /* synthetic */ fbt $foregroundUpdater;
    final /* synthetic */ fkj $spec;
    final /* synthetic */ cg $worker;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cbg(cg cgVar, fkj fkjVar, fbt fbtVar, Context context, bdp bdpVar) {
        super(2, bdpVar);
        this.$worker = cgVar;
        this.$spec = fkjVar;
        this.$foregroundUpdater = fbtVar;
        this.$context = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0032, code lost:
    
        if (r8 == r0) goto L18;
     */
    @Override // g.bry
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(Object obj) {
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            eg.k(obj);
            dcy foregroundInfoAsync = this.$worker.getForegroundInfoAsync();
            bff.e(foregroundInfoAsync, "worker.getForegroundInfoAsync()");
            cg cgVar = this.$worker;
            this.label = 1;
            obj = bbv.b(foregroundInfoAsync, cgVar, this);
        } else {
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                eg.k(obj);
                return obj;
            }
            eg.k(obj);
        }
        dju djuVar = (dju) obj;
        if (djuVar == null) {
            throw new IllegalStateException(awf.ad(new StringBuilder("Worker was marked important ("), this.$spec.u, ") but did not provide ForegroundInfo"));
        }
        int i2 = nx.f19738a;
        fkj fkjVar = this.$spec;
        cyl f2 = cyl.f();
        String str = fkjVar.u;
        f2.getClass();
        fbt fbtVar = this.$foregroundUpdater;
        Context context = this.$context;
        UUID id = this.$worker.getId();
        dcr dcrVar = (dcr) fbtVar;
        aqv aqvVar = (aqv) dcrVar.f13977a.f18325e;
        nz nzVar = new nz(dcrVar, id, djuVar, context);
        bff.p(aqvVar, "<this>");
        gbb e2 = bfc.e(new gkn(aqvVar, "setForegroundAsync", nzVar, 2));
        this.label = 2;
        Object am = erl.am(e2, this);
        return am == cxrVar ? cxrVar : am;
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        return ((cbg) e((hcc) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        return new cbg(this.$worker, this.$spec, this.$foregroundUpdater, this.$context, bdpVar);
    }
}
