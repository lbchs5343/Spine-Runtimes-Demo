package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class ejh {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f15648a = dsr.k(ejh.class);

    /* renamed from: b, reason: collision with root package name */
    public final gez f15649b;

    /* renamed from: c, reason: collision with root package name */
    public final hed f15650c;

    /* renamed from: d, reason: collision with root package name */
    public final ggg f15651d;

    /* renamed from: e, reason: collision with root package name */
    public final ffr f15652e;

    public ejh(ggg gggVar, hed hedVar) {
        this.f15650c = hedVar;
        this.f15651d = gggVar;
        this.f15652e = gggVar.j;
        this.f15649b = new gez(gggVar, hedVar);
    }

    public static ejh f(hed hedVar) {
        return new ejh(new ggg(hedVar.am, null, false, true, true, csu.AUTO), hedVar);
    }

    public static String g(int i) {
        return i < 0 ? String.format("LB_%x", Integer.valueOf(-i)) : String.format("L%x", Integer.valueOf(i));
    }

    public static String h(fza fzaVar) {
        return String.format("L%d", Integer.valueOf(fzaVar.h));
    }

    public final void i(eos eosVar) {
        hed hedVar = this.f15650c;
        cci cciVar = hedVar.am;
        ur urVar = cciVar.f12631ab.i;
        cci bd = cciVar.bd();
        if (bd.l.k(acq.w) != null) {
            throw new ClassCastException();
        }
        int i = cjb.f12968a[urVar.aa.ordinal()];
        if (i == 1) {
            if (this.f15651d.f18080c || hedVar.ao == null) {
                l(eosVar);
                return;
            } else {
                j(eosVar);
                return;
            }
        }
        if (i == 2) {
            j(eosVar);
            return;
        }
        if (i != 3) {
            if (i != 4) {
                return;
            }
            n(eosVar, eis.FALLBACK_MODE);
            return;
        }
        if (hedVar.ak == null) {
            grs grsVar = (grs) eosVar;
            grsVar.ae("// Blocks not ready for simple mode, using fallback");
            n(grsVar, eis.FALLBACK_MODE);
            return;
        }
        ur urVar2 = hedVar.am.f12631ab.i;
        urVar2.j.getClass();
        flc flcVar = new flc(urVar2);
        try {
            flcVar.z = ((grs) eosVar).z;
            flcVar.af();
            o(flcVar);
            eosVar.c(flcVar);
        } catch (Exception e2) {
            dcj.d(hedVar, "Simple mode code generation failed", e2);
            Pattern pattern = bzu.f12528a;
            grs grsVar2 = (grs) eosVar;
            grsVar2.ae("/* ERROR: ");
            grsVar2.d("Simple mode code generation failed");
            grsVar2.aa();
            evh.j(grsVar2, e2);
            grsVar2.ab();
            grsVar2.d("*/");
            l(eosVar);
        }
    }

    public final void j(eos eosVar) {
        hed hedVar = this.f15650c;
        try {
            new fsw(this, false).b(eosVar, hedVar.ao);
        } catch (BootstrapMethodError | StackOverflowError unused) {
            blf blfVar = new blf("StackOverflow");
            hedVar.getClass();
            dcj.d(hedVar, "Method code generation error", blfVar);
            bzu.g(eosVar, hedVar);
            l(eosVar);
        } catch (Exception e2) {
            cci bd = hedVar.am.bd();
            if (bd.l.g(csv.RESTART_CODEGEN)) {
                throw e2;
            }
            dcj.d(hedVar, "Method code generation error", e2);
            bzu.g(eosVar, hedVar);
            l(eosVar);
        }
    }

    public final void k(eos eosVar, eek eekVar, boolean z) {
        coe coeVar = (coe) eekVar.l.k(acq.al);
        if (coeVar == null) {
            return;
        }
        eosVar.d("     // Catch:");
        for (aea aeaVar : coeVar.f13218a) {
            eosVar.a(' ');
            this.f15651d.o(eosVar, aeaVar.l());
            eosVar.d(" -> ");
            if (z) {
                eosVar.d(g(aeaVar.h));
            } else {
                eosVar.d(h(aeaVar.i));
            }
        }
    }

    public final void l(eos eosVar) {
        afa afaVar = afa.ERROR;
        hed hedVar = this.f15650c;
        boolean bx = hedVar.bx(afaVar);
        ayu ayuVar = hedVar.al;
        if (bx) {
            grs grsVar = (grs) eosVar;
            grsVar.ae("/*");
            n(grsVar, eis.COMMENTED_DUMP);
            grsVar.ae("*/");
        }
        grs grsVar2 = (grs) eosVar;
        grsVar2.ae("throw new UnsupportedOperationException(\"Method not generated: ");
        grsVar2.d(hedVar.am.ak.m()).a('.').d(ayuVar.f11073a).a('(').d(evh.h(", ", ayuVar.f11075c)).d("):").d(ayuVar.f11079g.toString()).d("\");");
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean m(eos eosVar) {
        Iterator it;
        List i;
        ejb u;
        ks ksVar;
        hed hedVar = this.f15650c;
        ayu ayuVar = hedVar.al;
        ayu ayuVar2 = hedVar.al;
        cci cciVar = hedVar.am;
        boolean z = true;
        if (ayuVar.m()) {
            ((grs) eosVar).ag();
            eosVar.g(hedVar);
            eosVar.d("static");
            return true;
        }
        if (hedVar.l.g(csv.ANONYMOUS_CONSTRUCTOR)) {
            ((grs) eosVar).ag();
            eosVar.g(hedVar);
            return false;
        }
        fpr fprVar = (fpr) hedVar.l.k(acq.h);
        if (fprVar != null && !fprVar.f17208a.contains(hedVar)) {
            grs grsVar = (grs) eosVar;
            grsVar.ae("@Override");
            if (hedVar.bx(afa.INFO)) {
                grsVar.d(" // ");
                grsVar.d(evh.d(fprVar.f17209b, ", ", new gpn(12)));
            }
        }
        ffr ffrVar = this.f15652e;
        ffrVar.u(hedVar, eosVar);
        gqc gqcVar = cciVar.f12632d;
        gqc gqcVar2 = hedVar.ax;
        if (gqcVar.ba()) {
            gqcVar2 = gqcVar2.ah(1024).ah(1);
        }
        if ((gqcVar.f18566ab & 8192) != 0) {
            gqcVar2 = gqcVar2.ah(1);
        }
        if (ayuVar2.o() && cciVar.bi()) {
            gqcVar2 = gqcVar2.ah(7);
        }
        if (!ayuVar2.f11078f.equals(ayuVar2.f11073a) && !gqcVar2.bf()) {
            bzu.c(eosVar, hedVar, ayuVar2.f11078f);
        }
        if (hedVar.l.g(csv.INCONSISTENT_CODE) && hedVar.bx(afa.ERROR)) {
            grs grsVar2 = (grs) eosVar;
            grsVar2.ae("/*");
            grsVar2.aa();
            grsVar2.ae("Code generated incorrectly, please refer to instructions dump.");
            cciVar.f12631ab.i.getClass();
            if (grsVar2 instanceof flc) {
                grsVar2.ae("To view partially-correct code enable 'Show inconsistent code' option in preferences");
            } else {
                grsVar2.ae("To view partially-correct add '--show-bad-code' argument");
            }
            grsVar2.ab();
            grsVar2.ae("*/");
        }
        grs grsVar3 = (grs) eosVar;
        grsVar3.ac(hedVar.bp);
        grsVar3.d(gqcVar2.aj(hedVar.bx(afa.INFO)));
        if (gqcVar.ba() && !hedVar.ar && !hedVar.ax.be()) {
            grsVar3.d("default ");
        }
        List list = hedVar.ae;
        ggg gggVar = this.f15651d;
        if (gggVar.q(grsVar3, list, false)) {
            grsVar3.a(' ');
        }
        if (gqcVar2.bf()) {
            grsVar3.g(hedVar);
            grsVar3.d(gggVar.f18082e.ak.i());
        } else {
            gggVar.v(grsVar3, hedVar.aw);
            grsVar3.a(' ');
            ghf ghfVar = (ghf) hedVar.l.k(acq.bi);
            hed hedVar2 = ghfVar != null ? ghfVar.f18153a : hedVar;
            grsVar3.g(hedVar2);
            grsVar3.d(hedVar2.al.f11073a);
        }
        grsVar3.a('(');
        List az = hedVar.az();
        if (ayuVar2.o()) {
            if (cciVar.l.j(acq.k)) {
                if (az.size() == 2) {
                    az = Collections.EMPTY_LIST;
                } else if (az.size() > 2) {
                    az = az.subList(2, az.size());
                } else {
                    hedVar.bu("Incorrect number of args for enum constructor: " + az.size() + " (expected >= 2)");
                }
                gca gcaVar = (gca) hedVar.l.k(ao.i);
                it = az.iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    gks gksVar = (gks) it.next();
                    vm vmVar = gksVar.f18326a;
                    if (vmVar == null) {
                        boolean z2 = gggVar.f18080c;
                        u = new ejb();
                        u.f15632e = gksVar.h;
                        u.f15630c = gksVar.getName();
                        u.f15629b = gksVar.al();
                        u.f15631d = z;
                        u.f15629b = gksVar.al();
                        if (z2) {
                            u.f15633f = Collections.singletonList(new vm(gksVar.f18327e, 0, gksVar));
                        }
                    } else {
                        u = vmVar.u();
                    }
                    if (gcaVar != null) {
                        ArrayList arrayList = gcaVar.f17880a;
                        if (i2 < arrayList.size() && (ksVar = (ks) arrayList.get(i2)) != null) {
                            HashMap hashMap = ksVar.f19565a;
                            if (!hashMap.isEmpty()) {
                                Iterator it2 = hashMap.values().iterator();
                                while (it2.hasNext()) {
                                    ffrVar.af(grsVar3, (fpa) it2.next());
                                    grsVar3.a(' ');
                                }
                            }
                        }
                    }
                    if (u.f15628a) {
                        grsVar3.d("final ");
                    }
                    cwx cwxVar = u.f15632e;
                    if (cwxVar == null || cwxVar == cwx.ad) {
                        cwxVar = gksVar.h;
                    }
                    if (it.hasNext() || (hedVar.ax.f18566ab & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) == 0) {
                        gggVar.v(grsVar3, cwxVar);
                    } else {
                        cwxVar.getClass();
                        if (cwxVar instanceof aoe) {
                            gggVar.v(grsVar3, cwxVar.k());
                            grsVar3.d("...");
                        } else {
                            hedVar.bu("Last argument in varargs method is not array: " + u);
                            gggVar.v(grsVar3, cwxVar);
                        }
                    }
                    grsVar3.a(' ');
                    String n = this.f15649b.n(u);
                    if ((grsVar3 instanceof flc) && vmVar != null) {
                        grsVar3.g(cmw.h(hedVar, u.h()));
                    }
                    grsVar3.d(n);
                    i2++;
                    if (it.hasNext()) {
                        grsVar3.d(", ");
                    }
                    z = true;
                }
                grsVar3.a(')');
                i = hedVar.i();
                if (!i.isEmpty()) {
                    grsVar3.d(" throws ");
                    Iterator it3 = i.iterator();
                    while (it3.hasNext()) {
                        ((ggg) ffrVar.f16719c).v(grsVar3, (cwx) it3.next());
                        if (it3.hasNext()) {
                            grsVar3.d(", ");
                        }
                    }
                }
                if ((cciVar.f12632d.f18566ab & 8192) != 0) {
                    gpg gpgVar = (gpg) hedVar.l.k(ao.m);
                    ghr ghrVar = gpgVar == null ? null : gpgVar.f18535a;
                    if (ghrVar != null) {
                        grsVar3.d(" default ");
                        ffrVar.r(cciVar.f12631ab, grsVar3, ghrVar);
                    }
                }
                return true;
            }
        }
        if (hedVar.l.g(csv.SKIP_FIRST_ARG)) {
            az = az.subList(1, az.size());
        }
        gca gcaVar2 = (gca) hedVar.l.k(ao.i);
        it = az.iterator();
        int i22 = 0;
        while (it.hasNext()) {
        }
        grsVar3.a(')');
        i = hedVar.i();
        if (!i.isEmpty()) {
        }
        if ((cciVar.f12632d.f18566ab & 8192) != 0) {
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:80:0x0190, code lost:
    
        if (r14.ag == ((g.bgw) r0).ad()) goto L74;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void n(eos eosVar, eis eisVar) {
        eis eisVar2 = eis.COMMENTED_DUMP;
        hed hedVar = this.f15650c;
        if (eisVar == eisVar2 && hedVar.a().i.aq != afa.DEBUG) {
            long j = hedVar.y;
            if (j > 200) {
                grs grsVar = (grs) eosVar;
                grsVar.aa();
                grsVar.ae("Method dump skipped, instruction units count: " + j);
                if (grsVar instanceof flc) {
                    grsVar.ae("To view this dump change 'Code comments level' option to 'DEBUG'");
                } else {
                    grsVar.ae("To view this dump add '--comments-level debug' option");
                }
                grsVar.ab();
                return;
            }
        }
        if (eisVar != eis.FALLBACK_MODE) {
            List e2 = hedVar.l.e(acq.af);
            try {
                try {
                    hedVar.be();
                    hedVar.bf();
                    Iterator it = bcv.c().iterator();
                    while (it.hasNext()) {
                        cmb.h((pj) it.next(), hedVar);
                    }
                    final int i = 0;
                    Iterable.b.forEach(e2, new Consumer(this) { // from class: g.fxo

                        /* renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ ejh f17577b;

                        {
                            this.f17577b = this;
                        }

                        @Override // java.util.function.Consumer
                        /* renamed from: accept */
                        public final void n(Object obj) {
                            hab habVar = (hab) obj;
                            switch (i) {
                                case 0:
                                    this.f17577b.f15650c.o(acq.af, habVar);
                                    break;
                                default:
                                    this.f17577b.f15650c.o(acq.af, habVar);
                                    break;
                            }
                        }

                        public final /* synthetic */ Consumer andThen(Consumer consumer) {
                            int i2 = i;
                            return j$.util.function.j.$default$andThen(this, consumer);
                        }
                    });
                    final int i2 = 1;
                    Iterable.b.forEach(e2, new Consumer(this) { // from class: g.fxo

                        /* renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ ejh f17577b;

                        {
                            this.f17577b = this;
                        }

                        @Override // java.util.function.Consumer
                        /* renamed from: accept */
                        public final void n(Object obj) {
                            hab habVar = (hab) obj;
                            switch (i2) {
                                case 0:
                                    this.f17577b.f15650c.o(acq.af, habVar);
                                    break;
                                default:
                                    this.f17577b.f15650c.o(acq.af, habVar);
                                    break;
                            }
                        }

                        public final /* synthetic */ Consumer andThen(Consumer consumer) {
                            int i22 = i2;
                            return j$.util.function.j.$default$andThen(this, consumer);
                        }
                    });
                } catch (Throwable th) {
                    final int i3 = 1;
                    Iterable.b.forEach(e2, new Consumer(this) { // from class: g.fxo

                        /* renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ ejh f17577b;

                        {
                            this.f17577b = this;
                        }

                        @Override // java.util.function.Consumer
                        /* renamed from: accept */
                        public final void n(Object obj) {
                            hab habVar = (hab) obj;
                            switch (i3) {
                                case 0:
                                    this.f17577b.f15650c.o(acq.af, habVar);
                                    break;
                                default:
                                    this.f17577b.f15650c.o(acq.af, habVar);
                                    break;
                            }
                        }

                        public final /* synthetic */ Consumer andThen(Consumer consumer) {
                            int i22 = i3;
                            return j$.util.function.j.$default$andThen(this, consumer);
                        }
                    });
                    throw th;
                }
            } catch (Exception e3) {
                f15648a.l("Error reload instructions in fallback mode:", e3);
                ((grs) eosVar).ae("// Can't load method instructions: " + e3.getMessage());
                final int i4 = 1;
                Iterable.b.forEach(e2, new Consumer(this) { // from class: g.fxo

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ ejh f17577b;

                    {
                        this.f17577b = this;
                    }

                    @Override // java.util.function.Consumer
                    /* renamed from: accept */
                    public final void n(Object obj) {
                        hab habVar = (hab) obj;
                        switch (i4) {
                            case 0:
                                this.f17577b.f15650c.o(acq.af, habVar);
                                break;
                            default:
                                this.f17577b.f15650c.o(acq.af, habVar);
                                break;
                        }
                    }

                    public final /* synthetic */ Consumer andThen(Consumer consumer) {
                        int i22 = i4;
                        return j$.util.function.j.$default$andThen(this, consumer);
                    }
                });
                return;
            }
        }
        eek[] eekVarArr = hedVar.an;
        if (eekVarArr == null) {
            ((grs) eosVar).ae("// Can't load method instructions.");
            return;
        }
        grs grsVar2 = (grs) eosVar;
        grsVar2.aa();
        gks gksVar = hedVar.z;
        if (gksVar != null) {
            gez gezVar = this.f15649b;
            gezVar.getClass();
            String name = gksVar.getName();
            if (name == null || gezVar.f18010g) {
                name = "r" + gksVar.f18327e;
            }
            grsVar2.ae(name);
            grsVar2.d(" = this;");
        }
        grs grsVar3 = (grs) eosVar;
        int i5 = grsVar3.z;
        ejh f2 = f(hedVar);
        grb grbVar = new grb(f2, true);
        int length = eekVarArr.length;
        eek eekVar = null;
        for (int i6 = 0; i6 < length; i6++) {
            eek eekVar2 = eekVarArr[i6];
            if (eekVar2 != null) {
                acq acqVar = acq.af;
                if (eekVar2.l.j(acqVar)) {
                    for (hab habVar : eekVar2.l.e(acqVar)) {
                        grsVar3.ae("// ");
                        grsVar3.d(habVar.f19099a);
                    }
                } else {
                    if (eisVar != eis.BLOCK_DUMP) {
                        if (!eekVar2.l.j(acq.bh)) {
                            acq acqVar2 = acq.p;
                            if (eekVar2.l.j(acqVar2)) {
                                if (eekVar != null && eekVar.ah == hay.IF) {
                                    List e4 = eekVar2.l.e(acqVar2);
                                    if (e4.size() == 1) {
                                        aef aefVar = (aef) e4.get(0);
                                        if (aefVar.f10088a == eekVar.ag && aefVar.f10089b == eekVar2.ag) {
                                        }
                                    }
                                }
                            }
                        }
                        grsVar3.ab();
                        grsVar3.ae(g(eekVar2.ag).concat(":"));
                        grsVar3.aa();
                    }
                    hay hayVar = eekVar2.ah;
                    if (hayVar != hay.NOP) {
                        try {
                            boolean contains = (eisVar == eis.COMMENTED_DUMP && hayVar == hay.CONST_STR) ? ((epw) eekVar2).f15951a.contains("*/") : false;
                            if (contains) {
                                grs grsVar4 = (grs) eosVar;
                                grsVar4.ab();
                                grsVar4.ae("*/");
                                grsVar4.ae("//  ");
                            } else {
                                ((grs) eosVar).ac(eekVar2.bp);
                            }
                            ahw.c(eosVar, eekVar2);
                            gks gksVar2 = eekVar2.ai;
                            if (gksVar2 != null) {
                                cwx cwxVar = gksVar2.h;
                                if (cwxVar.h()) {
                                    eosVar.d(cwxVar.toString()).a(' ');
                                }
                            }
                            grbVar.ab(eekVar2, eosVar, zw.INLINE);
                            if (contains) {
                                grs grsVar5 = (grs) eosVar;
                                grsVar5.ae("/*");
                                grsVar5.aa();
                            }
                            try {
                                f2.k(eosVar, eekVar2, true);
                                bzu.d(eosVar, f2.f15650c, eekVar2);
                            } catch (Exception e5) {
                                e = e5;
                                f15648a.h("Error generate fallback instruction: ", e.getCause());
                                grsVar3.z = i5;
                                grsVar3.af();
                                grsVar3.ae("// error: " + eekVar2);
                                eekVar = eekVar2;
                            }
                        } catch (Exception e6) {
                            e = e6;
                        }
                        eekVar = eekVar2;
                    }
                }
                eekVar = eekVar2;
            }
        }
        grsVar2.ab();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.util.List] */
    public final void o(flc flcVar) {
        ArrayList<fza> arrayList;
        hed hedVar = this.f15650c;
        fpd fpdVar = new fpd(hedVar);
        BitSet bitSet = (BitSet) fpdVar.f17188d;
        BitSet bitSet2 = (BitSet) fpdVar.f17187c;
        for (fza fzaVar : hedVar.ak) {
            if (fzaVar.ac.isEmpty() && fzaVar.f17685e.size() > 0 && fzaVar.f17684d.size() == 1) {
                fza fzaVar2 = (fza) fzaVar.f17684d.get(0);
                List list = fzaVar.f17685e;
                giq.l(fzaVar, fzaVar2);
                if (list.size() == 1) {
                    giq.q((fza) list.get(0), fzaVar, fzaVar2);
                } else {
                    Iterator it = new ArrayList(list).iterator();
                    while (it.hasNext()) {
                        giq.q((fza) it.next(), fzaVar, fzaVar2);
                    }
                }
                fzaVar.w(csv.REMOVE);
            }
        }
        dec.c(hedVar);
        ArrayList arrayList2 = new ArrayList(hedVar.ak.size());
        ffb.ce(hedVar, hedVar.aj, new gpn(19), new efe(4, arrayList2));
        Collection.b.removeIf(arrayList2, new egl(10, fpdVar));
        if (!hedVar.ap.isEmpty()) {
            Iterator it2 = hedVar.ap.iterator();
            while (it2.hasNext()) {
                fza fzaVar3 = ((aea) it2.next()).i;
                if (fzaVar3 != null) {
                    EnumSet enumSet = giq.f18211a;
                    Iterator it3 = fzaVar3.f17685e.iterator();
                    while (it3.hasNext()) {
                        ((fza) it3.next()).f17684d.remove(fzaVar3);
                    }
                    fzaVar3.f17685e.clear();
                }
            }
        }
        if (arrayList2.isEmpty()) {
            arrayList = Collections.EMPTY_LIST;
        } else {
            int size = arrayList2.size();
            fza fzaVar4 = null;
            int i = 0;
            while (i < size) {
                fza fzaVar5 = (fza) arrayList2.get(i);
                i++;
                fza fzaVar6 = i == size ? null : (fza) arrayList2.get(i);
                List list2 = fzaVar5.f17685e;
                int size2 = list2.size();
                if (size2 > 1) {
                    bitSet2.set(fzaVar5.x);
                } else if (size2 == 1 && fzaVar4 != null && !fzaVar4.equals(list2.get(0))) {
                    if (!fzaVar5.l.g(csv.EXC_BOTTOM_SPLITTER)) {
                        bitSet2.set(fzaVar5.x);
                    }
                    if (fzaVar4.f17684d.size() == 1 && !hedVar.bb(fzaVar4)) {
                        bitSet.set(fzaVar4.x);
                    }
                }
                eek s = ffb.s(fzaVar5);
                if (s instanceof dog) {
                    if (s instanceof bgw) {
                        bgw bgwVar = (bgw) s;
                        fza fzaVar7 = bgwVar._br;
                        if (Objects.equals(fzaVar6, fzaVar7)) {
                            bgwVar.z();
                            bitSet2.set(bgwVar._br.x);
                        } else {
                            bitSet2.set(fzaVar7.x);
                        }
                        bgwVar.ab();
                    } else {
                        Iterator it4 = fzaVar5.f17684d.iterator();
                        while (it4.hasNext()) {
                            bitSet2.set(((fza) it4.next()).x);
                        }
                    }
                }
                if (fzaVar5.l.j(acq.bh)) {
                    bitSet2.set(fzaVar5.x);
                }
                if (fzaVar6 == null && !hedVar.bb(fzaVar5)) {
                    bitSet.set(fzaVar5.x);
                }
                fzaVar4 = fzaVar5;
            }
            arrayList = arrayList2;
            if (hedVar.bg()) {
                int size3 = arrayList2.size() - 1;
                fza fzaVar8 = (fza) arrayList2.get(size3);
                arrayList = arrayList2;
                if (fzaVar8.l.g(csv.RETURN)) {
                    arrayList2.remove(size3);
                    arrayList = arrayList2;
                }
            }
        }
        grb grbVar = new grb(this, true);
        for (fza fzaVar9 : arrayList) {
            if (!fzaVar9.l.g(csv.DONT_GENERATE)) {
                if (bitSet2.get(fzaVar9.x)) {
                    flcVar.ab();
                    flcVar.ae(h(fzaVar9));
                    flcVar.a(':');
                    flcVar.aa();
                }
                Iterator it5 = fzaVar9.ac.iterator();
                while (it5.hasNext()) {
                    eek eekVar = (eek) it5.next();
                    if (!eekVar.l.g(csv.DONT_GENERATE)) {
                        gks gksVar = eekVar.ai;
                        if (gksVar != null) {
                            ejb u = gksVar.f18326a.u();
                            if (!u.f15631d) {
                                eekVar.w(csv.DECLARE_VAR);
                                u.f15631d = true;
                            }
                        }
                        ahw.c(flcVar, eekVar);
                        grbVar.ab(eekVar, flcVar, null);
                        k(flcVar, eekVar, false);
                        bzu.d(flcVar, hedVar, eekVar);
                    }
                }
                if (bitSet.get(fzaVar9.x)) {
                    flcVar.ae("goto ");
                    flcVar.d(h((fza) fzaVar9.f17684d.get(0)));
                }
            }
        }
    }
}
