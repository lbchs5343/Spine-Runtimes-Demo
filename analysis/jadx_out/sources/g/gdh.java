package g;

/* loaded from: classes.dex */
public final class gdh extends avu implements dxv {
    /* synthetic */ long J$0;
    /* synthetic */ Object L$0;
    int label;

    @Override // g.bry
    public final Object a(Object obj) {
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            eg.k(obj);
            Throwable th = (Throwable) this.L$0;
            long j = this.J$0;
            cyl.f().j(ciu.f12950a, "Cannot check for unfinished work", th);
            long min = Math.min(j * 30000, ciu.f12951b);
            this.label = 1;
            if (baf.af(min, this) == cxrVar) {
                return cxrVar;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            eg.k(obj);
        }
        return Boolean.TRUE;
    }
}
