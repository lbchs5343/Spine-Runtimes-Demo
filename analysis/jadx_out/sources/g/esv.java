package g;

import j$.util.Collection;
import j$.util.stream.Collectors;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class esv implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16100a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f16101b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f16102c;

    public /* synthetic */ esv(ede edeVar, hed hedVar, hed hedVar2) {
        this.f16100a = 5;
        this.f16101b = hedVar;
        this.f16102c = hedVar2;
    }

    public /* synthetic */ esv(Object obj, int i, Object obj2) {
        this.f16100a = i;
        this.f16101b = obj;
        this.f16102c = obj2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:78:0x0214, code lost:
    
        if (r10 != false) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0244, code lost:
    
        if (r0 != false) goto L113;
     */
    @Override // java.util.function.Consumer
    /* renamed from: accept */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void n(Object obj) {
        eek eekVar;
        cwx j;
        gks gksVar;
        Map map;
        List list;
        cwx cwxVar;
        switch (this.f16100a) {
            case 0:
                fza fzaVar = (fza) this.f16101b;
                fza fzaVar2 = (fza) this.f16102c;
                fza fzaVar3 = (fza) obj;
                fzaVar3.f17684d.remove(fzaVar);
                giq.o(fzaVar3, fzaVar2);
                eek s = ffb.s(fzaVar3);
                if (s instanceof dog) {
                    ((dog) s).aa(fzaVar, fzaVar2);
                }
                fzaVar3.ad();
                return;
            case 1:
                hed hedVar = (hed) this.f16101b;
                BitSet bitSet = (BitSet) this.f16102c;
                aea aeaVar = (aea) obj;
                fza fzaVar4 = aeaVar.i;
                if (fzaVar4 != null) {
                    bitSet.set(fzaVar4.x);
                    return;
                }
                hedVar.bw("Null handler block in: " + aeaVar);
                return;
            case 2:
                ggg gggVar = (ggg) this.f16101b;
                eos eosVar = (eos) this.f16102c;
                ebh ebhVar = (ebh) obj;
                if (ebhVar instanceof cci) {
                    cci cciVar = (cci) ebhVar;
                    try {
                        ggg gggVar2 = gggVar.h;
                        if (gggVar2 == null) {
                            gggVar2 = gggVar;
                        }
                        ggg gggVar3 = new ggg(cciVar, gggVar2);
                        ((grs) eosVar).m();
                        if (!gggVar3.f18082e.l.g(csv.DONT_GENERATE)) {
                            gggVar3.y(eosVar);
                            gggVar3.t(eosVar, false);
                        }
                        gggVar.f18078a.addAll(gggVar3.r());
                        return;
                    } catch (Exception e2) {
                        cciVar.getClass();
                        dcj.d(cciVar, "Inner class code generation error", e2);
                        return;
                    }
                }
                hed hedVar2 = (hed) ebhVar;
                qp qpVar = gggVar.f18082e.f12631ab.i.aa;
                qpVar.getClass();
                int i = esh.f16082a[qpVar.ordinal()];
                if (i == 1 || i == 2) {
                    fmz fmzVar = (fmz) hedVar2.l.k(acq.f9987g);
                    if (fmzVar != null && fmzVar.f17057b != null) {
                        try {
                            if (Collections.unmodifiableList(hedVar2.au).isEmpty()) {
                                hedVar2.w(csv.DONT_GENERATE);
                                return;
                            }
                            List list2 = (List) Collection.b.stream(Collections.unmodifiableList(hedVar2.au)).filter(new bev(10)).collect(Collectors.toList());
                            if (list2.isEmpty()) {
                                hedVar2.w(csv.DONT_GENERATE);
                                return;
                            }
                            hedVar2.bw("Method not inlined, still used in: " + list2);
                        } catch (Exception e3) {
                            hedVar2.bt("Failed to check method usage", e3);
                        }
                    }
                } else if (i != 3 && i != 4) {
                    throw new RuntimeException("Unexpected decompilation mode: " + qpVar);
                }
                grs grsVar = (grs) eosVar;
                if (grsVar.x.length() != gggVar.f18084g) {
                    grsVar.m();
                }
                int i2 = grsVar.z;
                try {
                    gggVar.x(eosVar, hedVar2);
                    return;
                } catch (Exception e4) {
                    if (hedVar2.am.bd().l.g(csv.RESTART_CODEGEN)) {
                        throw new gck("Method generation error", e4);
                    }
                    dcj.d(hedVar2, "Method generation error", e4);
                    bzu.g(eosVar, hedVar2);
                    grsVar.z = i2;
                    grsVar.af();
                    return;
                }
            case 3:
                ggg gggVar4 = (ggg) this.f16101b;
                grs grsVar2 = (grs) this.f16102c;
                ve veVar = (ve) obj;
                grsVar2.ae("import ");
                cci ae = gggVar4.f18082e.f12631ab.ae(veVar);
                if (ae != null) {
                    grsVar2.b(ae);
                }
                grsVar2.d(veVar.m());
                grsVar2.a(';');
                return;
            case 4:
                buj.bb((hed) this.f16101b, (byr) this.f16102c, (amj) obj);
                return;
            case 5:
                hed hedVar3 = (hed) this.f16101b;
                hed hedVar4 = (hed) this.f16102c;
                cci cciVar2 = hedVar4.am;
                eek eekVar2 = (eek) obj;
                switch (dva.f14878a[eekVar2.ah.ordinal()]) {
                    case 1:
                    case 2:
                        hed x = hedVar3.am.f12631ab.x(((gif) eekVar2).ac());
                        if (x != null) {
                            x.bh(acw.aj(new ArrayList(Collections.unmodifiableList(x.au)), hedVar4, hedVar3));
                            cci cciVar3 = x.am;
                            cciVar3.h = acw.aj(cciVar3.h, hedVar4, hedVar3);
                            cciVar3.z = acw.aj(cciVar3.z, cciVar2, hedVar3.am);
                            return;
                        }
                        return;
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                        hcd ag = hedVar3.am.f12631ab.ag((dsj) ((adz) eekVar2).f10070a);
                        if (ag != null) {
                            ag.f19214d = acw.aj(new ArrayList(ag.f19214d), hedVar4, hedVar3);
                            cci cciVar4 = ag.f19216f;
                            cciVar4.h = acw.aj(cciVar4.h, hedVar4, hedVar3);
                            cciVar4.z = acw.aj(cciVar4.z, cciVar2, hedVar3.am);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            case 6:
                ffr ffrVar = (ffr) this.f16101b;
                eek[] eekVarArr = (eek[]) this.f16102c;
                yu yuVar = (yu) obj;
                hed hedVar5 = (hed) ffrVar.f16721f;
                int offset = yuVar.getOffset();
                try {
                    yuVar.b();
                    eekVar = ffrVar.t(yuVar);
                } catch (Exception e5) {
                    acq acqVar = acq.af;
                    boolean j2 = hedVar5.l.j(acqVar);
                    dcj.d(hedVar5, "Failed to decode insn: " + yuVar, e5);
                    if (j2) {
                        throw new gck("Failed to decode insn: " + yuVar, e5);
                    }
                    eekVar = new eek(hay.NOP, 0);
                    eekVar.o(acqVar, new hab("decode failed: " + e5.getMessage(), e5));
                }
                eekVar.ag = offset;
                eekVarArr[offset] = eekVar;
                return;
            case 7:
                String str = (String) this.f16101b;
                String str2 = (String) this.f16102c;
                nq nqVar = (nq) obj;
                String str3 = nqVar.f19721c;
                if (str3 == null || !str3.startsWith(str)) {
                    throw new IllegalArgumentException(awf.t("Plugin option name should start with plugin id: '", str, "', option: ", str3));
                }
                String str4 = nqVar.f19723e;
                if (str4 == null || str4.isEmpty()) {
                    throw new IllegalArgumentException("Plugin option description not set, plugin: ".concat(str2));
                }
                if (((List) Collection.b.stream(nqVar.f19724f).map(nqVar.f19720b).collect(Collectors.toList())) == null) {
                    throw new IllegalArgumentException(awf.t("Plugin option values is null, option: ", str3, ", plugin: ", str2));
                }
                return;
            case 8:
                erg ergVar = (erg) this.f16101b;
                hed hedVar6 = (hed) this.f16102c;
                eek eekVar3 = (eek) obj;
                if (eekVar3 instanceof gif) {
                    gif gifVar = (gif) eekVar3;
                    if (gifVar.ac().f11075c.size() == 0) {
                        return;
                    }
                    ebp r = ergVar.f16024a.f14930b.r(gifVar);
                    if (r == null) {
                        int z = gifVar.z();
                        ArrayList d2 = erg.d(gifVar, z);
                        ArrayList arrayList = new ArrayList(d2);
                        if (erg.b(arrayList, gifVar.ac().f11075c)) {
                            erg.c(gifVar, z, d2, arrayList);
                            return;
                        }
                        return;
                    }
                    if (r.h() && (cwxVar = (cwx) evh.o(r.f())) != null && (cwxVar instanceof aoe)) {
                        gifVar.w(csv.VARARG_CALL);
                    }
                    ayu ac = gifVar.ac();
                    if ((gifVar instanceof eew) && ((eew) gifVar).ab()) {
                        j = hedVar6.am.af;
                    } else {
                        gsh aa = gifVar.aa();
                        j = aa != null ? aa.j() : ac.f11076d.f20149d;
                    }
                    fnq fnqVar = ergVar.f16024a.f14930b;
                    fnqVar.getClass();
                    ArrayList arrayList2 = new ArrayList();
                    fnqVar.l(j, ac, arrayList2);
                    if (arrayList2.isEmpty()) {
                        return;
                    }
                    cwx cwxVar2 = gifVar.ac().f11076d.f20149d;
                    gsh aa2 = gifVar.aa();
                    if (aa2 != null) {
                        cwxVar2 = aa2.j();
                    } else if (gifVar.ah == hay.CONSTRUCTOR && (gksVar = gifVar.ai) != null) {
                        cwxVar2 = gksVar.j();
                    }
                    emr emrVar = ergVar.f16024a.o;
                    Map y = emrVar.y(cwxVar2);
                    ebp r2 = ((dwg) emrVar.n).f14930b.r(gifVar);
                    List list3 = gifVar.aj;
                    if (r2 == null) {
                        map = Collections.EMPTY_MAP;
                    } else {
                        HashMap hashMap = new HashMap(list3.size() + 1);
                        cwx g2 = r2.g();
                        gks gksVar2 = gifVar.ai;
                        if (gksVar2 != null && g2 != null && g2.h() && (g2 instanceof btl)) {
                            hashMap.put(g2, gksVar2.j());
                        }
                        int min = Math.min(r2.f().size(), list3.size() - gifVar.z());
                        for (int i3 = 0; i3 < min; i3++) {
                            cwx cwxVar3 = (cwx) r2.f().get(i3);
                            gsh j3 = gifVar.j(gifVar.z() + i3);
                            if (j3 != null && cwxVar3 != null && cwxVar3.h() && (cwxVar3 instanceof btl)) {
                                hashMap.put(cwxVar3, j3.j());
                            }
                        }
                        map = hashMap;
                    }
                    if (y == null || y.isEmpty()) {
                        y = map;
                    } else if (map != null && !map.isEmpty()) {
                        HashMap hashMap2 = new HashMap(map.size() + y.size());
                        hashMap2.putAll(y);
                        hashMap2.putAll(map);
                        y = hashMap2;
                    }
                    ebp g3 = ergVar.g(r, y);
                    ArrayList arrayList3 = new ArrayList(arrayList2.size() + 1);
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        arrayList3.add(ergVar.g((ebp) it.next(), y));
                    }
                    arrayList3.add(g3);
                    int z2 = gifVar.z();
                    ArrayList d3 = erg.d(gifVar, z2);
                    if (ergVar.i(g3, arrayList3, d3)) {
                        list = d3;
                    } else {
                        int size = d3.size();
                        ArrayList arrayList4 = new ArrayList(d3);
                        if (erg.b(arrayList4, g3.f())) {
                            boolean i4 = ergVar.i(g3, arrayList3, arrayList4);
                            list = arrayList4;
                            break;
                        }
                        boolean z3 = false;
                        for (int i5 = 0; i5 < size; i5++) {
                            cwx cwxVar4 = (cwx) arrayList4.get(i5);
                            cwx cwxVar5 = (cwx) g3.f().get(i5);
                            if (!cwxVar4.bm() && cwxVar5.bm()) {
                                arrayList4.set(i5, cwxVar5);
                                z3 = true;
                            }
                        }
                        if (z3) {
                            boolean i6 = ergVar.i(g3, arrayList3, arrayList4);
                            list = arrayList4;
                            break;
                        }
                        list = size == 1 ? g3.f() : g3.f();
                    }
                    cwm cwmVar = hedVar6.am.f12631ab.u.f12545e;
                    List f2 = g3.f();
                    int size2 = list.size();
                    ArrayList arrayList5 = new ArrayList(size2);
                    for (int i7 = 0; i7 < size2; i7++) {
                        cwx cwxVar6 = (cwx) f2.get(i7);
                        cwx cwxVar7 = (cwx) list.get(i7);
                        if (cwmVar.h(cwxVar6, cwxVar7) == dho.NARROW_BY_GENERIC) {
                            arrayList5.add(cwxVar6);
                        } else {
                            arrayList5.add(cwxVar7);
                        }
                    }
                    erg.c(gifVar, z2, d3, arrayList5);
                    return;
                }
                return;
            default:
                hed hedVar7 = (hed) this.f16101b;
                cwx cwxVar8 = (cwx) this.f16102c;
                vm vmVar = (vm) obj;
                cwx m = vmVar.m();
                if (m == null || !m.h()) {
                    return;
                }
                dho h = hedVar7.am.f12631ab.u.f12545e.h(m, cwxVar8);
                if (h == dho.CONFLICT || h.e()) {
                    hedVar7.bs("Incorrect type for immutable var: ssa=" + m + ", code=" + cwxVar8 + ", for " + vmVar.w(hedVar7));
                    return;
                }
                return;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.f16100a;
        return j$.util.function.j.$default$andThen(this, consumer);
    }
}
