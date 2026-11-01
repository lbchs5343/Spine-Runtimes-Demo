package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class hed extends ebh implements ebp, Comparable {
    public static final eek[] x;
    public int aa;

    /* renamed from: ab, reason: collision with root package name */
    public final atc f19333ab;
    public List ac;
    public fza ad;
    public List ae;
    public int af;
    public final HashSet ag;
    public boolean ah;
    public int ai;
    public fza aj;
    public List ak;
    public final ayu al;
    public final cci am;
    public eek[] an;
    public eys ao;
    public List ap;
    public final List aq;
    public boolean ar;
    public List as;
    public List at;
    public List au;
    public List av;
    public cwx aw;
    public gqc ax;
    public final int y;
    public gks z;

    static {
        dsr.k(hed.class);
        x = new eek[0];
    }

    public hed(cci cciVar, ghu ghuVar) {
        List list = Collections.EMPTY_LIST;
        this.au = list;
        this.aq = list;
        this.ag = new HashSet();
        ayu j = ayu.j(cciVar.f12631ab, ghuVar.c());
        this.al = j;
        this.am = cciVar;
        this.ax = new gqc(ghuVar.a(), frh.METHOD, 1);
        atc b2 = ghuVar.b();
        boolean z = b2 == null;
        this.ar = z;
        if (z) {
            this.f19333ab = null;
            this.y = 0;
        } else {
            this.f19333ab = b2.k();
            this.y = b2.l();
        }
        this.aw = j.f11079g;
        this.as = j.f11075c;
        this.ae = list;
        be();
    }

    @Override // g.awj
    public final String _by() {
        return this.am.x;
    }

    @Override // g.ebp
    public final int _cv() {
        return this.ax.f18566ab;
    }

    @Override // g.awj
    public final dwg a() {
        return this.am.f12631ab;
    }

    @Override // g.gut
    public final gqc ay() {
        return this.ax;
    }

    public final List az() {
        List list = this.av;
        if (list != null) {
            return list;
        }
        throw new gck("Method arg registers not loaded: " + this + ", class status: " + this.am.bd().ad);
    }

    @Override // g.cdv
    public final pk b() {
        return pk.METHOD;
    }

    public final void ba() {
        List list = this.ak;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ((fza) list.get(i)).x = i;
        }
    }

    public final boolean bb(fza fzaVar) {
        List list = fzaVar.f17684d;
        return list.size() == 1 ? ((fza) list.get(0)).equals(this.ad) : this.ad.f17685e.contains(fzaVar);
    }

    @Override // g.gut
    public final void bc(gqc gqcVar) {
        this.ax = gqcVar;
    }

    public final boolean bd() {
        int i;
        if (!bk()) {
            return false;
        }
        cci cciVar = this.am;
        if (cciVar.ak.n() && !cciVar.f12632d.be()) {
            cci cciVar2 = cciVar.ai;
            List list = this.av;
            if (list != null && !list.isEmpty() && ((gks) this.av.get(0)).h.equals(cciVar2.ak.f20149d)) {
                i = 1;
                List list2 = this.av;
                return list2 != null || list2.size() == i;
            }
        }
        i = 0;
        List list22 = this.av;
        if (list22 != null) {
        }
    }

    public final void be() {
        this.ah = false;
        this.z = null;
        this.av = null;
        List list = Collections.EMPTY_LIST;
        this.at = list;
        this.an = null;
        this.ak = null;
        this.aj = null;
        this.ad = null;
        this.ao = null;
        this.ap = list;
        this.ac = list;
        p();
    }

    public final void bf() {
        atc atcVar = this.f19333ab;
        if (this.ah) {
            return;
        }
        try {
            this.ah = true;
            if (this.ar) {
                this.af = 0;
                bl(this.as);
                return;
            }
            this.af = atcVar.f();
            this.ai = atcVar.g();
            bl(this.as);
            if (this.l.j(acq.af)) {
                this.an = x;
                return;
            }
            ffr ffrVar = new ffr(this);
            eek[] eekVarArr = new eek[atcVar.l()];
            atcVar._cu(new esv(ffrVar, 6, eekVarArr));
            this.an = eekVarArr;
        } catch (Exception e2) {
            if (!this.ar) {
                be();
                this.ar = true;
                bf();
                this.ar = false;
            }
            throw new heq(this, "Load method exception: " + e2.getClass().getSimpleName() + ": " + e2.getMessage(), e2);
        }
    }

    public final boolean bg() {
        return this.al.f11079g.equals(cwx.ao);
    }

    public final void bh(List list) {
        this.au = list;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((hed) it.next()).ag.add(this);
        }
    }

    public final gcv bi(fza fzaVar) {
        if (this.ac.isEmpty()) {
            return null;
        }
        for (gcv gcvVar : this.ac) {
            if (gcvVar.f17904e.contains(fzaVar)) {
                return gcvVar;
            }
        }
        return null;
    }

    public final List bj(fza fzaVar) {
        if (this.ac.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(this.ac.size());
        for (gcv gcvVar : this.ac) {
            if (gcvVar.f17904e.contains(fzaVar)) {
                arrayList.add(gcvVar);
            }
        }
        return arrayList;
    }

    public final boolean bk() {
        return this.ax.bf() && this.al.o();
    }

    public final void bl(List list) {
        int i;
        if (this.ar) {
            i = 0;
        } else {
            i = this.ai;
            if (i == -1) {
                i = this.af;
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    i -= ((cwx) it.next()).bi();
                }
                if (!this.ax.be()) {
                    i--;
                }
            }
        }
        cci cciVar = this.am;
        emr emrVar = cciVar.f12631ab.o;
        if (this.ax.be()) {
            this.z = null;
        } else {
            cwx au = cciVar.au();
            emrVar.getClass();
            emr.q(this, au);
            dba dbaVar = gsh.ad;
            gks gksVar = new gks(i, au);
            gksVar.w(csv.THIS);
            gksVar.w(csv.IMMUTABLE_TYPE);
            this.z = gksVar;
            i++;
        }
        if (list.isEmpty()) {
            this.av = Collections.EMPTY_LIST;
            return;
        }
        this.av = new ArrayList(list.size());
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            cwx cwxVar = (cwx) it2.next();
            emrVar.getClass();
            emr.q(this, cwxVar);
            dba dbaVar2 = gsh.ad;
            gks gksVar2 = new gks(i, cwxVar);
            gksVar2.w(csv.METHOD_ARGUMENT);
            gksVar2.w(csv.IMMUTABLE_TYPE);
            this.av.add(gksVar2);
            i += cwxVar.bi();
        }
    }

    public final gks bm(cwx cwxVar) {
        dba dbaVar = gsh.ad;
        gks gksVar = new gks(0, cwxVar);
        gksVar.w(csv.SYNTHETIC);
        vm bn = bn(gksVar);
        eak.az(bn);
        bn.s(cwxVar);
        return gksVar;
    }

    public final vm bn(gks gksVar) {
        int i = gksVar.f18327e;
        int i2 = -1;
        for (vm vmVar : this.at) {
            if (vmVar.f20180f == i) {
                i2 = Math.max(i2, vmVar.f20181g);
            }
        }
        vm vmVar2 = new vm(i, i2 + 1, gksVar);
        if (this.at.isEmpty()) {
            this.at = new ArrayList();
        }
        this.at.add(vmVar2);
        return vmVar2;
    }

    @Override // g.eue
    public final String c() {
        return awf.aa(this) + " (m)";
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.al.compareTo(((hed) obj).al);
    }

    @Override // g.eue
    public final /* bridge */ /* synthetic */ fky d() {
        return acq.j;
    }

    @Override // g.eue
    public final /* synthetic */ boolean e() {
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || hed.class != obj.getClass()) {
            return false;
        }
        return this.al.equals(((hed) obj).al);
    }

    @Override // g.ebp
    public final List f() {
        List list = this.as;
        if (list != null) {
            return list;
        }
        throw new gck("Method generic types not initialized: " + this);
    }

    @Override // g.ebp
    public final cwx g() {
        return this.aw;
    }

    @Override // g.gut
    public final cci getDeclaringClass() {
        return this.am;
    }

    @Override // g.ebp
    public final List getTypeParameters() {
        return this.ae;
    }

    @Override // g.ebp
    public final boolean h() {
        return (this.ax.f18566ab & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0;
    }

    public final int hashCode() {
        return this.al.f11074b;
    }

    @Override // g.ebp
    public final List i() {
        cvo cvoVar = (cvo) this.l.k(acq.ap);
        if (cvoVar != null) {
            return evh.g(cvoVar.f13597a, new fov(11));
        }
        cym cymVar = (cym) this.l.k(ao.l);
        return cymVar != null ? evh.g(cymVar.f13766a, new fov(11)) : Collections.EMPTY_LIST;
    }

    @Override // g.ebp
    public final ayu j() {
        return this.al;
    }

    public final String toString() {
        return this.am + "." + this.al.f11078f + '(' + evh.h(", ", this.as) + "):" + this.aw;
    }

    @Override // g.awj
    public final String typeName() {
        return "method";
    }
}
