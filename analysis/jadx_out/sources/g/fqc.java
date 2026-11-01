package g;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class fqc implements dqx {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ edl f17230b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ gdh f17231c;

    public fqc(edl edlVar, gdh gdhVar) {
        this.f17230b = edlVar;
        this.f17231c = gdhVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0074 -> B:14:0x00b5). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00a6 -> B:11:0x00a9). Please report as a decompilation issue!!! */
    @Override // g.dqx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(fjs fjsVar, w wVar) {
        cfw cfwVar;
        int i;
        long j;
        fqc fqcVar;
        int i2;
        fqc fqcVar2;
        fjs fjsVar2;
        Throwable th;
        Serializable ao;
        if (wVar instanceof cfw) {
            cfwVar = (cfw) wVar;
            int i3 = cfwVar.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                cfwVar.label = i3 - Integer.MIN_VALUE;
                Object obj = cfwVar.result;
                cxr cxrVar = cxr.COROUTINE_SUSPENDED;
                i = cfwVar.label;
                if (i != 0) {
                    eg.k(obj);
                    j = 0;
                    fqcVar = this;
                    edl edlVar = fqcVar.f17230b;
                    cfwVar.L$0 = fqcVar;
                    cfwVar.L$1 = fjsVar;
                    cfwVar.L$2 = null;
                    cfwVar.J$0 = j;
                    cfwVar.I$0 = 0;
                    cfwVar.label = 1;
                    ao = gs.ao(edlVar, fjsVar, cfwVar);
                    if (ao != cxrVar) {
                    }
                    return cxrVar;
                }
                if (i == 1) {
                    i2 = cfwVar.I$0;
                    j = cfwVar.J$0;
                    fjsVar2 = (fjs) cfwVar.L$1;
                    fqcVar2 = (fqc) cfwVar.L$0;
                    eg.k(obj);
                    th = (Throwable) obj;
                    if (th != null) {
                    }
                    fqcVar = fqcVar2;
                    if (i2 == 0) {
                    }
                } else {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    j = cfwVar.J$0;
                    Throwable th2 = (Throwable) cfwVar.L$2;
                    fjsVar2 = (fjs) cfwVar.L$1;
                    fqcVar2 = (fqc) cfwVar.L$0;
                    eg.k(obj);
                    if (!((Boolean) obj).booleanValue()) {
                        j++;
                        i2 = 1;
                        fqcVar = fqcVar2;
                        if (i2 == 0) {
                            return dgi.f14134a;
                        }
                        fjsVar = fjsVar2;
                        edl edlVar2 = fqcVar.f17230b;
                        cfwVar.L$0 = fqcVar;
                        cfwVar.L$1 = fjsVar;
                        cfwVar.L$2 = null;
                        cfwVar.J$0 = j;
                        cfwVar.I$0 = 0;
                        cfwVar.label = 1;
                        ao = gs.ao(edlVar2, fjsVar, cfwVar);
                        if (ao != cxrVar) {
                            fqcVar2 = fqcVar;
                            obj = ao;
                            fjsVar2 = fjsVar;
                            i2 = 0;
                            th = (Throwable) obj;
                            if (th != null) {
                                gdh gdhVar = fqcVar2.f17231c;
                                Long l = new Long(j);
                                cfwVar.L$0 = fqcVar2;
                                cfwVar.L$1 = fjsVar2;
                                cfwVar.L$2 = th;
                                cfwVar.J$0 = j;
                                cfwVar.label = 2;
                                gdhVar.getClass();
                                long longValue = l.longValue();
                                gdh gdhVar2 = new gdh(4, cfwVar);
                                gdhVar2.L$0 = th;
                                gdhVar2.J$0 = longValue;
                                Object a2 = gdhVar2.a(dgi.f14134a);
                                if (a2 != cxrVar) {
                                    obj = a2;
                                    th2 = th;
                                    if (!((Boolean) obj).booleanValue()) {
                                        throw th2;
                                    }
                                }
                            }
                            fqcVar = fqcVar2;
                            if (i2 == 0) {
                            }
                        }
                        return cxrVar;
                    }
                }
            }
        }
        cfwVar = new cfw(this, wVar);
        Object obj2 = cfwVar.result;
        cxr cxrVar2 = cxr.COROUTINE_SUSPENDED;
        i = cfwVar.label;
        if (i != 0) {
        }
    }
}
