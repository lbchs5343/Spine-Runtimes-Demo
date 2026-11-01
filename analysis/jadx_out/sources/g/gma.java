package g;

import java.util.Queue;

/* loaded from: classes3.dex */
public final class gma extends cfq {
    private static final long serialVersionUID = -176083308134819629L;
    Queue<cae> eventQueue;
    ani logger;
    String name;

    @Override // g.dba
    public final boolean ac() {
        return true;
    }

    @Override // g.dba
    public final boolean ad() {
        return true;
    }

    @Override // g.dba
    public final boolean ae() {
        return true;
    }

    @Override // g.dba
    public final boolean af() {
        return true;
    }

    @Override // g.dba
    public final boolean ah() {
        return true;
    }

    @Override // g.alg, g.dba
    public final String getName() {
        return this.name;
    }

    @Override // g.alg
    public final void i(bmk bmkVar, Object[] objArr) {
        cae caeVar = new cae();
        System.currentTimeMillis();
        caeVar.f12538a = bmkVar;
        caeVar.f12539b = this.logger;
        Thread.currentThread().getName();
        caeVar.f12540c = objArr;
        this.eventQueue.add(caeVar);
    }
}
