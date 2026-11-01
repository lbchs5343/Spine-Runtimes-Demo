package g;

import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Map;
import j$.util.Objects;
import j$.util.stream.Collectors;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public final class fn implements atc {

    /* renamed from: a, reason: collision with root package name */
    public static final Set f17059a;

    /* renamed from: b, reason: collision with root package name */
    public final int f17060b;

    /* renamed from: c, reason: collision with root package name */
    public final cmv f17061c;

    /* renamed from: d, reason: collision with root package name */
    public final gqc f17062d;

    static {
        Object[] objArr = {zz.n, zz.f20420b, zz.f20424f};
        HashSet hashSet = new HashSet(3);
        for (int i = 0; i < 3; i++) {
            Object obj = objArr[i];
            Objects.requireNonNull(obj);
            if (!hashSet.add(obj)) {
                throw new IllegalArgumentException("duplicate element: " + obj);
            }
        }
        f17059a = Collections.unmodifiableSet(hashSet);
    }

    public fn(cmv cmvVar, int i) {
        this.f17061c = cmvVar;
        this.f17062d = cmvVar.j;
        this.f17060b = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [g.esv] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.util.Set] */
    @Override // g.atc
    public final void _cu(esv esvVar) {
        HashSet hashSet;
        int i = this.f17060b;
        gqc gqcVar = this.f17062d;
        gqcVar.f18566ab = i + 4;
        gqcVar.at(gqcVar.bc());
        int ai = gqcVar.ai();
        if (ai == 0) {
            hashSet = Collections.EMPTY_SET;
        } else {
            HashSet hashSet2 = new HashSet(ai);
            for (int i2 = 0; i2 < ai; i2++) {
                gqcVar.at(4);
                int ai2 = gqcVar.ai();
                gqcVar.at(2);
                hashSet2.add(Integer.valueOf(ai2));
            }
            hashSet = hashSet2;
        }
        gqcVar.f18566ab = i + 4;
        gqcVar.at(gqcVar.bc());
        gqcVar.at(gqcVar.ai() * 8);
        cmv cmvVar = this.f17061c;
        eau eauVar = (eau) cmvVar.h.g(gqcVar, zz.m);
        int h = h();
        gqcVar.at(2);
        int bc = gqcVar.bc();
        ggu gguVar = new ggu(cmvVar, gqcVar, h, hashSet, eauVar);
        fce fceVar = new fce(gguVar);
        gguVar.i = fceVar;
        int i3 = 0;
        while (i3 < bc) {
            fceVar.r = false;
            fceVar.f16553ab = i3;
            int ap = gqcVar.ap();
            ahb ahbVar = t.f20024a[ap];
            if (ahbVar == null) {
                throw new cyf(awf.d(new StringBuilder("Unknown opcode: 0x"), ap));
            }
            fceVar.t = ap;
            fceVar.y = ahbVar;
            fceVar.ad(ahbVar.f10203a);
            fceVar.aa = ahbVar.f10204b;
            fceVar.v = ahbVar.f10208f;
            cpd cpdVar = null;
            fceVar.q = null;
            cpd cpdVar2 = (cpd) gguVar.f18129e.get(Integer.valueOf(i3));
            if (cpdVar2 != null) {
                int i4 = cpdVar2.f13265a;
                cqz[] cqzVarArr = cpdVar2.f13266b;
                cpdVar = new cpd(i4, (cqz[]) Arrays.copyOf(cqzVarArr, cqzVarArr.length));
            } else {
                dl dlVar = (dl) gguVar.f18127c.f15208b.get(Integer.valueOf(i3));
                if (dlVar != null) {
                    cpdVar = new cpd(gguVar.h);
                    int i5 = dlVar.f14345c;
                    cpdVar.f13265a = i5 - 1;
                    if (i5 > 0) {
                        System.arraycopy(dlVar.f14346d, 0, cpdVar.f13266b, 0, i5);
                    }
                }
            }
            if (cpdVar != null) {
                gguVar.f18125a = cpdVar;
            }
            if (gguVar.f18126b.contains(Integer.valueOf(i3))) {
                cpd cpdVar3 = gguVar.f18125a;
                cpdVar3.f13265a = -1;
                cpdVar3.d(cqz.NARROW);
                gguVar.f18130f = true;
            } else {
                gguVar.f18130f = false;
            }
            esvVar.n(fceVar);
            int i6 = fceVar.v;
            if (!fceVar.r) {
                if (i6 == -1) {
                    dle dleVar = fceVar.y.f10209g;
                    if (dleVar != null) {
                        dleVar._ct(fceVar.u);
                    }
                    i6 = fceVar.v;
                } else {
                    gqcVar.at(i6);
                }
            }
            i3 += i6 + 1;
        }
    }

    @Override // g.atc
    public final List e() {
        int i = this.f17060b + 4;
        gqc gqcVar = this.f17062d;
        gqcVar.f18566ab = i;
        gqcVar.at(gqcVar.bc());
        int ai = gqcVar.ai();
        if (ai == 0) {
            return Collections.EMPTY_LIST;
        }
        gkr gkrVar = this.f17061c.f13144g;
        HashMap hashMap = new HashMap(ai);
        for (int i2 = 0; i2 < ai; i2++) {
            int ai2 = gqcVar.ai();
            int ai3 = gqcVar.ai();
            int ai4 = gqcVar.ai();
            int ai5 = gqcVar.ai();
            List list = (List) Map.b.computeIfAbsent(hashMap, new gih(ai2, ai3), new gpn(10));
            if (ai5 == 0) {
                list.add(new dyb(ai4, null));
            } else {
                list.add(new dyb(ai4, gkrVar.h(ai5)));
            }
        }
        return (List) Collection.b.stream(hashMap.entrySet()).map(new gpn(11)).collect(Collectors.toList());
    }

    @Override // g.atc
    public final int f() {
        return this.f17062d.ai() + h();
    }

    @Override // g.atc
    public final int g() {
        return h();
    }

    public final int h() {
        int i = this.f17060b;
        gqc gqcVar = this.f17062d;
        gqcVar.f18566ab = i;
        return gqcVar.ai() + 1;
    }

    @Override // g.atc
    public final int j() {
        return this.f17060b;
    }

    @Override // g.atc
    public final atc k() {
        return this;
    }

    @Override // g.atc
    public final int l() {
        int i = this.f17060b + 4;
        gqc gqcVar = this.f17062d;
        gqcVar.f18566ab = i;
        return gqcVar.bc();
    }

    @Override // g.atc
    public final gtb m() {
        List unmodifiableList;
        int h = h();
        int i = this.f17060b + 4;
        gqc gqcVar = this.f17062d;
        gqcVar.f18566ab = i;
        gqcVar.at(gqcVar.bc());
        gqcVar.at(gqcVar.ai() * 8);
        erm ermVar = this.f17061c.h;
        ermVar.getClass();
        Set set = f17059a;
        Objects.requireNonNull(set);
        geg f2 = ermVar.f(gqcVar, new fev(0, set));
        aqp aqpVar = (aqp) f2.c(zz.n);
        dtf dtfVar = (dtf) f2.c(zz.f20420b);
        if (aqpVar == null && dtfVar == null) {
            return null;
        }
        Object obj = aqpVar != null ? aqpVar.f10666a : Collections.EMPTY_MAP;
        if (dtfVar == null) {
            unmodifiableList = Collections.EMPTY_LIST;
        } else {
            ArrayList arrayList = dtfVar.f14763a;
            agr agrVar = (agr) f2.c(zz.f20424f);
            if (agrVar != null) {
                ArrayList arrayList2 = agrVar.f10194a;
                if (!arrayList2.isEmpty()) {
                    HashMap hashMap = new HashMap(arrayList.size());
                    Iterable.b.forEach(arrayList, new agx(17, hashMap));
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        fqt fqtVar = (fqt) it.next();
                        fqt fqtVar2 = (fqt) hashMap.get(fqtVar);
                        if (fqtVar2 != null) {
                            fqtVar2.f17260a = fqtVar.f17260a;
                        }
                    }
                }
            }
            Iterable.b.forEach(arrayList, new gkd(h, 1));
            unmodifiableList = Collections.unmodifiableList(arrayList);
        }
        return new gtb(obj, 5, unmodifiableList);
    }
}
