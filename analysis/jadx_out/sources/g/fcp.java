package g;

/* loaded from: classes.dex */
public final class fcp extends w {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ djo this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fcp(djo djoVar, w wVar) {
        super(wVar);
        this.this$0 = djoVar;
    }

    @Override // g.bry
    public final Object a(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object u = djo.u(this.this$0, this);
        return u == cxr.COROUTINE_SUSPENDED ? u : new clw(u);
    }
}
