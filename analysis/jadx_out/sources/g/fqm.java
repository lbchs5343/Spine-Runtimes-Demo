package g;

import android.os.Bundle;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class fqm extends acn {

    /* renamed from: a, reason: collision with root package name */
    public final tl f17247a;

    /* renamed from: b, reason: collision with root package name */
    public final tl f17248b;

    /* renamed from: c, reason: collision with root package name */
    public long f17249c;

    public fqm(cyg cygVar) {
        super(cygVar);
        this.f17248b = new tl(0);
        this.f17247a = new tl(0);
    }

    public final void g(long j, ein einVar) {
        cyg cygVar = (cyg) this.z;
        if (einVar == null) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11519c.h("Not logging ad exposure. No active activity");
        } else if (j < 1000) {
            bgm bgmVar2 = cygVar.z;
            cyg.ak(bgmVar2);
            bgmVar2.f11519c.i(Long.valueOf(j), "Not logging ad exposure. Less than 1000 ms. exposure");
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j);
            dkq.q(einVar, bundle, true);
            csp cspVar = cygVar.f13745c;
            cyg.aj(cspVar);
            cspVar.au("am", "_xa", bundle);
        }
    }

    public final void h(String str, long j, ein einVar) {
        cyg cygVar = (cyg) this.z;
        if (einVar == null) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11519c.h("Not logging ad unit exposure. No active activity");
        } else {
            if (j < 1000) {
                bgm bgmVar2 = cygVar.z;
                cyg.ak(bgmVar2);
                bgmVar2.f11519c.i(Long.valueOf(j), "Not logging ad unit exposure. Less than 1000 ms. exposure");
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j);
            dkq.q(einVar, bundle, true);
            csp cspVar = cygVar.f13745c;
            cyg.aj(cspVar);
            cspVar.au("am", "_xu", bundle);
        }
    }

    public final void j(long j) {
        tl tlVar = this.f17247a;
        Iterator it = ((bxl) tlVar.keySet()).iterator();
        while (it.hasNext()) {
            tlVar.put((String) it.next(), Long.valueOf(j));
        }
        if (tlVar.isEmpty()) {
            return;
        }
        this.f17249c = j;
    }

    public final void k(String str, long j) {
        cyg cygVar = (cyg) this.z;
        if (str == null || str.length() == 0) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11518b.h("Ad unit id must be a non-empty string");
        } else {
            fth fthVar = cygVar.j;
            cyg.ak(fthVar);
            fthVar.p(new kp(this, str, j, 1));
        }
    }

    public final void l(long j) {
        bcm bcmVar = ((cyg) this.z).h;
        cyg.aj(bcmVar);
        ein u = bcmVar.u(false);
        tl tlVar = this.f17247a;
        Iterator it = ((bxl) tlVar.keySet()).iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            h(str, j - ((Long) tlVar.get(str)).longValue(), u);
        }
        if (!tlVar.isEmpty()) {
            g(j - this.f17249c, u);
        }
        j(j);
    }

    public final void m(String str, long j) {
        cyg cygVar = (cyg) this.z;
        if (str == null || str.length() == 0) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11518b.h("Ad unit id must be a non-empty string");
        } else {
            fth fthVar = cygVar.j;
            cyg.ak(fthVar);
            fthVar.p(new kp(this, str, j, 0));
        }
    }
}
