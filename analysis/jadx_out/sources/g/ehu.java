package g;

import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class ehu extends avu implements bto {
    final /* synthetic */ dqx[] $flows;
    final /* synthetic */ int $i;
    final /* synthetic */ AtomicInteger $nonClosed;
    final /* synthetic */ bfl $resultChannel;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ehu(dqx[] dqxVarArr, int i, AtomicInteger atomicInteger, bfl bflVar, bdp bdpVar) {
        super(2, bdpVar);
        this.$flows = dqxVarArr;
        this.$i = i;
        this.$nonClosed = atomicInteger;
        this.$resultChannel = bflVar;
    }

    @Override // g.bry
    public final Object a(Object obj) {
        AtomicInteger atomicInteger;
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        int i = this.label;
        try {
            if (i == 0) {
                eg.k(obj);
                dqx[] dqxVarArr = this.$flows;
                int i2 = this.$i;
                dqx dqxVar = dqxVarArr[i2];
                aos aosVar = new aos(this.$resultChannel, i2);
                this.label = 1;
                if (dqxVar.a(aosVar, this) == cxrVar) {
                    return cxrVar;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                eg.k(obj);
            }
            if (atomicInteger.decrementAndGet() == 0) {
                this.$resultChannel._cl(null);
            }
            return dgi.f14134a;
        } finally {
            if (this.$nonClosed.decrementAndGet() == 0) {
                this.$resultChannel._cl(null);
            }
        }
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        return ((ehu) e((hcc) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        return new ehu(this.$flows, this.$i, this.$nonClosed, this.$resultChannel, bdpVar);
    }
}
