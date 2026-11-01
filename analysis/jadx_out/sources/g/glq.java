package g;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class glq extends pj implements avy {

    /* renamed from: a, reason: collision with root package name */
    public boolean f18363a;

    /* renamed from: b, reason: collision with root package name */
    public fbc f18364b;

    @Override // g.avy
    public final boolean _bq(hed hedVar, cfm cfmVar) {
        if (!this.f18363a && (cfmVar instanceof eln)) {
            Iterator it = ((eln) cfmVar).i.iterator();
            loop0: while (true) {
                if (!it.hasNext()) {
                    break;
                }
                for (Object obj : ((adk) it.next()).f10047a) {
                    if (obj instanceof hcd) {
                        cci bd = ((hcd) obj).f19216f.bd();
                        dba dbaVar = ewg.f16268a;
                        cci cciVar = bd.ai;
                        if (cciVar != null && cciVar.ak.i().equals("R") && !"android.R".equals(bd.ak.m())) {
                            this.f18363a = true;
                            this.f18364b.getClass();
                            break loop0;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final boolean c(ks ksVar) {
        ve veVar;
        if (ksVar == null) {
            return false;
        }
        for (fpa fpaVar : ksVar.f19565a.values()) {
            if (fpaVar.f17179a != any.SYSTEM) {
                Iterator it = fpaVar.f17181c.entrySet().iterator();
                while (it.hasNext()) {
                    Object obj = ((ghr) ((Map.Entry) it.next()).getValue()).f18176f;
                    if ((obj instanceof chf) && (veVar = ((chf) obj).c().f14711d.f20148c) != null && veVar.f20150e.equals("R") && !veVar.f20147b.equals("android.R")) {
                        this.f18364b.getClass();
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // g.pj
    public final void h(dwg dwgVar) {
        this.f18364b = dwgVar.f14931c;
    }

    @Override // g.pj
    public final void j(hed hedVar) {
        if (c((ks) hedVar.l.k(ao.q))) {
            this.f18363a = true;
        } else {
            if (this.f18363a || !ddx.b(hedVar, fuu.SWITCH)) {
                return;
            }
            buj.ax(hedVar, this);
        }
    }

    @Override // g.pj
    public final boolean k(cci cciVar) {
        if (this.f18363a) {
            return false;
        }
        return !c((ks) cciVar.l.k(ao.q));
    }
}
