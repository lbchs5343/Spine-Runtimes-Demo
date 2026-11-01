package g;

/* loaded from: classes.dex */
public final class it extends w {
    int I$0;
    long J$0;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ djo this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public it(djo djoVar, w wVar) {
        super(wVar);
        this.this$0 = djoVar;
    }

    @Override // g.bry
    public final Object a(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object an = this.this$0.an(null, 0, 0L, this);
        return an == cxr.COROUTINE_SUSPENDED ? an : new clw(an);
    }
}
