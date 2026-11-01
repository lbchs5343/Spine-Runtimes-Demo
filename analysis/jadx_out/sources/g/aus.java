package g;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class aus extends avu implements bto {
    final /* synthetic */ cg $delegate;
    final /* synthetic */ vn $workConstraintsTracker;
    final /* synthetic */ fkj $workSpec;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aus(cg cgVar, vn vnVar, fkj fkjVar, bdp bdpVar) {
        super(2, bdpVar);
        this.$delegate = cgVar;
        this.$workConstraintsTracker = vnVar;
        this.$workSpec = fkjVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b1 A[Catch: all -> 0x0082, TRY_LEAVE, TryCatch #0 {all -> 0x0082, blocks: (B:43:0x006f, B:44:0x0081, B:15:0x0085, B:18:0x009f, B:21:0x00a7, B:22:0x00b0, B:24:0x00b1, B:7:0x001b, B:8:0x0064, B:30:0x0053), top: B:2:0x0008, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x009e  */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [g.dta] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v6, types: [g.dta] */
    /* JADX WARN: Type inference failed for: r1v9 */
    @Override // g.bry
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(Object obj) {
        CancellationException cancellationException;
        AtomicInteger atomicInteger;
        dcy dcyVar;
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        ?? r1 = this.label;
        boolean z = true;
        try {
            try {
                if (r1 == 0) {
                    eg.k(obj);
                    hcc hccVar = (hcc) this.L$0;
                    AtomicInteger atomicInteger2 = new AtomicInteger(-256);
                    dcy startWork = this.$delegate.startWork();
                    bff.e(startWork, "delegate.startWork()");
                    fe al = baf.al(hccVar, null, null, new aq(this.$workConstraintsTracker, this.$workSpec, atomicInteger2, startWork, null), 3);
                    try {
                        this.L$0 = atomicInteger2;
                        this.L$1 = startWork;
                        this.L$2 = al;
                        this.label = 1;
                        obj = erl.am(startWork, this);
                        if (obj == cxrVar) {
                            return cxrVar;
                        }
                        atomicInteger = atomicInteger2;
                        dcyVar = startWork;
                        r1 = al;
                    } catch (CancellationException e2) {
                        cancellationException = e2;
                        atomicInteger = atomicInteger2;
                        dcyVar = startWork;
                        String str = goy.f18524a;
                        cg cgVar = this.$delegate;
                        cyl f2 = cyl.f();
                        cgVar.getClass().toString();
                        f2.getClass();
                        if (atomicInteger.get() != -256) {
                        }
                        if (dcyVar.isCancelled()) {
                        }
                    }
                } else {
                    if (r1 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    dta dtaVar = (dta) this.L$2;
                    dcyVar = (dcy) this.L$1;
                    atomicInteger = (AtomicInteger) this.L$0;
                    try {
                        eg.k(obj);
                        r1 = dtaVar;
                    } catch (CancellationException e3) {
                        cancellationException = e3;
                        String str2 = goy.f18524a;
                        cg cgVar2 = this.$delegate;
                        cyl f22 = cyl.f();
                        cgVar2.getClass().toString();
                        f22.getClass();
                        if (atomicInteger.get() != -256) {
                            z = false;
                        }
                        if (dcyVar.isCancelled()) {
                            throw cancellationException;
                        }
                        if (z) {
                            throw new bsc(atomicInteger.get());
                        }
                        throw cancellationException;
                    }
                }
                dea deaVar = (dea) obj;
                r1._bi(null);
                return deaVar;
            } catch (Throwable th) {
                r1._bi(null);
                throw th;
            }
        } catch (Throwable th2) {
            String str3 = goy.f18524a;
            cg cgVar3 = this.$delegate;
            cyl f3 = cyl.f();
            cgVar3.getClass().toString();
            f3.getClass();
            throw th2;
        }
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        return ((aus) e((hcc) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        aus ausVar = new aus(this.$delegate, this.$workConstraintsTracker, this.$workSpec, bdpVar);
        ausVar.L$0 = obj;
        return ausVar;
    }
}
