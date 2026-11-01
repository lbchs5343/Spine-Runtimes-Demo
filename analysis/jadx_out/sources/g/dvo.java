package g;

import android.content.Context;
import android.os.Build;

/* loaded from: classes.dex */
public final class dvo extends avu implements bto {
    final /* synthetic */ fbt $foregroundUpdater;
    final /* synthetic */ cg $worker;
    int label;
    final /* synthetic */ dly this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dvo(dly dlyVar, cg cgVar, fbt fbtVar, bdp bdpVar) {
        super(2, bdpVar);
        this.this$0 = dlyVar;
        this.$worker = cgVar;
        this.$foregroundUpdater = fbtVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0056, code lost:
    
        if (r3 == r0) goto L23;
     */
    @Override // g.bry
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(Object obj) {
        Object obj2 = cxr.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            eg.k(obj);
            dly dlyVar = this.this$0;
            Context context = dlyVar.k;
            fkj fkjVar = dlyVar.f14408g;
            cg cgVar = this.$worker;
            fbt fbtVar = this.$foregroundUpdater;
            gkr gkrVar = dlyVar.f14407f;
            this.label = 1;
            int i2 = nx.f19738a;
            boolean z = fkjVar.s;
            Object obj3 = dgi.f14134a;
            if (z && Build.VERSION.SDK_INT < 31) {
                bxc bxcVar = (bxc) gkrVar.f18323c;
                bff.e(bxcVar, "taskExecutor.mainThreadExecutor");
                Object an = baf.an(ffb.cc(bxcVar), new cbg(cgVar, fkjVar, fbtVar, context, null), this);
                if (an == obj2) {
                    obj3 = an;
                }
            }
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
        String str = bbv.f11244a;
        dly dlyVar2 = this.this$0;
        cyl f2 = cyl.f();
        fkj fkjVar2 = dlyVar2.f14408g;
        f2.getClass();
        dcy startWork = this.$worker.startWork();
        bff.e(startWork, "worker.startWork()");
        cg cgVar2 = this.$worker;
        this.label = 2;
        Object b2 = bbv.b(startWork, cgVar2, this);
        return b2 == obj2 ? obj2 : b2;
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        return ((dvo) e((hcc) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        return new dvo(this.this$0, this.$worker, this.$foregroundUpdater, bdpVar);
    }
}
