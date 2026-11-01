package g;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes.dex */
public final class cab extends eiy {

    /* renamed from: g, reason: collision with root package name */
    public final boolean f12536g;
    public final gcv h;
    public fza i;
    public buj j;
    public eys y;
    public final fza z;

    public cab(eys eysVar, gcv gcvVar, fza fzaVar, boolean z) {
        super(eysVar);
        this.h = gcvVar;
        this.z = fzaVar;
        this.f12536g = z;
        if (fzaVar != null) {
            eek s = ffb.s(fzaVar);
            this.aa = s == null ? null : new eii(new evf((bgw) s));
            this.f15618ab = Collections.singletonList(fzaVar);
        }
    }

    @Override // g.amj
    public final String a() {
        eys eysVar = this.y;
        return eysVar == null ? "-" : eysVar.a();
    }

    @Override // g.amj
    public final void b(fsw fswVar, eos eosVar) {
        ejh ejhVar = fswVar.l;
        hed hedVar = fswVar.m;
        fza fzaVar = this.z;
        eek s = ffb.s(fzaVar);
        int i = s == null ? 0 : s.bp;
        if (i == 0) {
            i = ac();
        }
        grs grsVar = (grs) eosVar;
        grsVar.ac(i);
        dhu dhuVar = (dhu) this.h.f17902c.l.k(acq.x);
        if (dhuVar != null) {
            gez gezVar = ejhVar.f15649b;
            gezVar.getClass();
            String str = "loop" + dhuVar.f14206a.f17900a;
            ((HashSet) gezVar.f18008e).add(str);
            grsVar.d(str).d(": ");
        }
        eii eiiVar = this.aa;
        if (eiiVar == null) {
            grsVar.d("while (true) {");
            fswVar.c(grsVar, this.y);
            grsVar.ad('}');
            return;
        }
        eek j = eiiVar.j();
        ahw.c(grsVar, j);
        fto ftoVar = new fto(ejhVar, fswVar.k);
        buj bujVar = this.j;
        if (bujVar == null) {
            if (!this.f12536g) {
                grsVar.d("while (");
                ftoVar.c(grsVar, new dfa(0), eiiVar);
                grsVar.d(") {");
                bzu.d(grsVar, hedVar, j);
                fswVar.c(grsVar, this.y);
                grsVar.ad('}');
                return;
            }
            grsVar.d("do {");
            bzu.d(grsVar, hedVar, j);
            fswVar.c(grsVar, this.y);
            eek s2 = ffb.s(fzaVar);
            int i2 = s2 != null ? s2.bp : 0;
            if (i2 == 0) {
                i2 = ac();
            }
            grsVar.ac(i2);
            grsVar.d("} while (");
            ftoVar.c(grsVar, new dfa(0), eiiVar);
            grsVar.d(");");
            return;
        }
        if (bujVar instanceof k) {
            k kVar = (k) bujVar;
            grsVar.d("for (");
            eek eekVar = kVar._l;
            zw zwVar = zw.INLINE;
            fswVar.ab(eekVar, grsVar, zwVar);
            grsVar.d("; ");
            ftoVar.c(grsVar, new dfa(0), eiiVar);
            grsVar.d("; ");
            fswVar.ab(kVar._m, grsVar, zwVar);
            grsVar.d(") {");
            bzu.d(grsVar, hedVar, j);
            fswVar.c(grsVar, this.y);
            grsVar.ad('}');
            return;
        }
        if (!(bujVar instanceof cdd)) {
            throw new gck("Unknown loop type: " + bujVar.getClass());
        }
        cdd cddVar = (cdd) bujVar;
        grsVar.d("for (");
        ejb u = cddVar.bf.ai.f18326a.u();
        if (u.f15628a) {
            grsVar.d("final ");
        }
        fswVar.ac(grsVar, u.f15632e);
        grsVar.a(' ');
        fswVar.t(grsVar, u);
        grsVar.d(" : ");
        fswVar.aa(grsVar, cddVar.bg.j(0), false);
        grsVar.d(") {");
        bzu.d(grsVar, hedVar, j);
        fswVar.c(grsVar, this.y);
        grsVar.ad('}');
    }

    @Override // g.bjk, g.cfm
    public final boolean f(amj amjVar, amj amjVar2) {
        return false;
    }

    public final String toString() {
        return "LOOP:" + this.h.f17900a + ": " + a();
    }

    @Override // g.cfm
    public final List x() {
        ArrayList arrayList = new ArrayList(this.f15618ab.size() + 2);
        fza fzaVar = this.i;
        if (fzaVar != null) {
            arrayList.add(fzaVar);
        }
        arrayList.addAll(this.f15618ab);
        eys eysVar = this.y;
        if (eysVar != null) {
            arrayList.add(eysVar);
        }
        return arrayList;
    }
}
