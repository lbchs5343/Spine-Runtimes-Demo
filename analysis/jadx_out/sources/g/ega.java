package g;

/* loaded from: classes.dex */
public final class ega extends w implements fjs {
    public final boj collectContext;
    public final int collectContextSize;
    public final fjs collector;
    private bdp<? super dgi> completion_;
    private boj lastEmissionContext;

    public ega(fjs fjsVar, boj bojVar) {
        super(cjk.f12983a, cgq.f12850a);
        this.collector = fjsVar;
        this.collectContext = bojVar;
        this.collectContextSize = ((Number) bojVar.c(0, gak.f17798c)).intValue();
    }

    @Override // g.bry
    public final Object a(Object obj) {
        Throwable a2 = sl.a(obj);
        if (a2 != null) {
            this.lastEmissionContext = new yg(a2, getContext());
        }
        bdp<? super dgi> bdpVar = this.completion_;
        if (bdpVar != null) {
            bdpVar._z(obj);
        }
        return cxr.COROUTINE_SUSPENDED;
    }

    @Override // g.fjs
    public final Object b(Object obj, w wVar) {
        try {
            Object d2 = d(wVar, obj);
            return d2 == cxr.COROUTINE_SUSPENDED ? d2 : dgi.f14134a;
        } catch (Throwable th) {
            this.lastEmissionContext = new yg(th, wVar.getContext());
            throw th;
        }
    }

    public final Object d(w wVar, Object obj) {
        boj context = wVar.getContext();
        kj.h(context);
        boj bojVar = this.lastEmissionContext;
        if (bojVar != context) {
            if (bojVar instanceof yg) {
                throw new IllegalStateException(gs.ap("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + ((yg) bojVar).f20336a + ", but then emission attempt of value '" + obj + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ").toString());
            }
            if (((Number) context.c(0, new are(this))).intValue() != this.collectContextSize) {
                throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + this.collectContext + ",\n\t\tbut emission happened in " + context + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
            }
            this.lastEmissionContext = context;
        }
        this.completion_ = wVar;
        bnk bnkVar = div.f14251a;
        fjs fjsVar = this.collector;
        bff.ag(fjsVar, "null cannot be cast to non-null type kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>");
        Object b2 = bnkVar.b(fjsVar, obj, this);
        if (!bff.n(b2, cxr.COROUTINE_SUSPENDED)) {
            this.completion_ = null;
        }
        return b2;
    }

    @Override // g.bry, g.qz
    public final qz f() {
        bdp<? super dgi> bdpVar = this.completion_;
        if (bdpVar instanceof qz) {
            return (qz) bdpVar;
        }
        return null;
    }

    @Override // g.w, g.bdp
    public final boj getContext() {
        boj bojVar = this.lastEmissionContext;
        return bojVar == null ? cgq.f12850a : bojVar;
    }

    @Override // g.bry
    public final StackTraceElement j() {
        return null;
    }
}
