package g;

import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.function.Function;

/* loaded from: classes.dex */
public final class ba {

    /* renamed from: a, reason: collision with root package name */
    public static final eem f11146a;

    /* renamed from: b, reason: collision with root package name */
    public final cci f11147b;

    /* renamed from: c, reason: collision with root package name */
    public final ur f11148c;

    static {
        aud ap = acr.ap();
        fvw fvwVar = fvw.LOWER_CASE_WITH_DASHES;
        Objects.requireNonNull(fvwVar);
        ap.n = fvwVar;
        ap.k = false;
        f11146a = ap.p();
    }

    public ba(cci cciVar) {
        this.f11147b = cciVar;
        this.f11148c = cciVar.f12631ab.i;
    }

    public final String d(ggg gggVar, cwx cwxVar) {
        grs grsVar = new grs(this.f11148c);
        gggVar.v(grsVar, cwxVar);
        return grsVar.x.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01e7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final bkz e(cci cciVar, ggg gggVar) {
        Iterator it;
        ur urVar;
        atc atcVar;
        List list;
        atc atcVar2;
        ur urVar2 = this.f11148c;
        final ggg gggVar2 = gggVar == null ? new ggg(cciVar, urVar2) : new ggg(cciVar, gggVar);
        ve veVar = cciVar.ak;
        bkz bkzVar = new bkz();
        bkzVar.aw(veVar.t());
        if (veVar.j()) {
            veVar.m();
        }
        if (!cciVar.bi()) {
            cciVar.f12632d.getClass();
        }
        int i = cciVar.f12632d.f18566ab;
        cwx cwxVar = cciVar.af;
        if (cwxVar != null && !cwxVar.equals(cwx.t)) {
            if (!cciVar.l.g(csv.REMOVE_SUPER_CLASS)) {
                bkzVar.av(d(gggVar2, cwxVar));
            }
        }
        if (!cciVar.j.isEmpty()) {
            final int i2 = 0;
            bkzVar.au(evh.g(cciVar.j, new Function(this) { // from class: g.gtj

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ ba f18724b;

                {
                    this.f18724b = this;
                }

                public final /* synthetic */ Function andThen(Function function) {
                    int i3 = i2;
                    return j$.util.function.k.$default$andThen(this, function);
                }

                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    switch (i2) {
                        case 0:
                            return this.f18724b.d(gggVar2, (cwx) obj);
                        default:
                            return this.f18724b.d(gggVar2, (cwx) obj);
                    }
                }

                public final /* synthetic */ Function compose(Function function) {
                    int i3 = i2;
                    return j$.util.function.k.$default$compose(this, function);
                }
            }));
        }
        grs grsVar = new grs(urVar2);
        bzu.f(grsVar, cciVar);
        bzu.g(grsVar, cciVar);
        gggVar2.y(grsVar);
        grsVar.x.getClass();
        bkzVar.as = new ArrayList();
        cciVar.av();
        for (hcd hcdVar : cciVar.ag) {
            csv csvVar = csv.DONT_GENERATE;
            sm smVar = hcdVar.l;
            dsj dsjVar = hcdVar.f19217g;
            if (!smVar.g(csvVar)) {
                nh nhVar = new nh();
                String str = dsjVar.f14712e;
                dsjVar.g();
                grs grsVar2 = new grs(urVar2);
                gggVar2.ab(grsVar2, hcdVar);
                grsVar2.x.getClass();
                int i3 = hcdVar.h.f18566ab;
                bkzVar.as.add(nhVar);
            }
        }
        bkzVar.at = new ArrayList();
        cciVar.av();
        Iterator it2 = cciVar.aj.iterator();
        while (it2.hasNext()) {
            hed hedVar = (hed) it2.next();
            csv csvVar2 = csv.DONT_GENERATE;
            sm smVar2 = hedVar.l;
            atc atcVar3 = hedVar.f19333ab;
            ayu ayuVar = hedVar.al;
            if (!smVar2.g(csvVar2)) {
                goc gocVar = new goc();
                ayuVar.f11078f.equals(ayuVar.f11073a);
                d(gggVar2, hedVar.aw);
                final int i4 = 1;
                gocVar.aq = evh.g(ayuVar.f11075c, new Function(this) { // from class: g.gtj

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ ba f18724b;

                    {
                        this.f18724b = this;
                    }

                    public final /* synthetic */ Function andThen(Function function) {
                        int i32 = i4;
                        return j$.util.function.k.$default$andThen(this, function);
                    }

                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        switch (i4) {
                            case 0:
                                return this.f18724b.d(gggVar2, (cwx) obj);
                            default:
                                return this.f18724b.d(gggVar2, (cwx) obj);
                        }
                    }

                    public final /* synthetic */ Function compose(Function function) {
                        int i32 = i4;
                        return j$.util.function.k.$default$compose(this, function);
                    }
                });
                ejh ejhVar = new ejh(gggVar2, hedVar);
                flc flcVar = new flc(urVar2);
                ejhVar.m(flcVar);
                flcVar.x.getClass();
                int i5 = hedVar.ax.f18566ab;
                if (hedVar.ar) {
                    list = Collections.EMPTY_LIST;
                } else {
                    flc ac = hedVar.am.f12631ab.ac();
                    try {
                        ejhVar.i(ac);
                        bov bovVar = (bov) ac.finish();
                        String str2 = bovVar.f11931a;
                        if (str2.isEmpty()) {
                            list = Collections.EMPTY_LIST;
                        } else {
                            String[] split = str2.split(urVar2.x);
                            ffr ffrVar = bovVar.f11932b;
                            Map map = (Map) ffrVar.f16721f;
                            long j = (hedVar.ar ? 0L : atcVar3.j()) + 16;
                            int length = split.length;
                            ArrayList arrayList = new ArrayList(length);
                            it = it2;
                            int length2 = urVar2.x.length();
                            int i6 = 0;
                            urVar = urVar2;
                            int i7 = 0;
                            while (i7 < length) {
                                String str3 = split[i7];
                                int i8 = i7 + 2;
                                int i9 = i7;
                                int i10 = length2;
                                cuf cufVar = new cuf(5);
                                ffr ffrVar2 = ffrVar;
                                if (((cdv) ((NavigableMap) ffrVar.f16719c).get(Integer.valueOf(i6))) instanceof ahw) {
                                    atcVar2 = atcVar3;
                                    Long.toHexString((((ahw) r4).f10243a * 2) + j);
                                } else {
                                    atcVar2 = atcVar3;
                                }
                                arrayList.add(cufVar);
                                i6 = str3.length() + i10 + i6;
                                i7 = i9 + 1;
                                ffrVar = ffrVar2;
                                length2 = i10;
                                atcVar3 = atcVar2;
                            }
                            atcVar = atcVar3;
                            list = arrayList;
                            gocVar.ar = list;
                            Long.toHexString(!hedVar.ar ? 0L : atcVar.j());
                            bkzVar.at.add(gocVar);
                            it2 = it;
                            urVar2 = urVar;
                        }
                    } catch (Exception e2) {
                        throw new gck("Method generation error", e2);
                    }
                }
                urVar = urVar2;
                it = it2;
                atcVar = atcVar3;
                gocVar.ar = list;
                Long.toHexString(!hedVar.ar ? 0L : atcVar.j());
                bkzVar.at.add(gocVar);
                it2 = it;
                urVar2 = urVar;
            }
        }
        List<cci> list2 = cciVar.i;
        if (!list2.isEmpty()) {
            bkzVar.aq = new ArrayList(list2.size());
            for (cci cciVar2 : list2) {
                if (!cciVar2.l.g(csv.DONT_GENERATE)) {
                    bkzVar.aq.add(e(cciVar2, gggVar2));
                }
            }
        }
        if (!cciVar.ak.n()) {
            List g2 = evh.g(gggVar2.r(), new fov(9));
            Collections.sort(g2);
            bkzVar.ar = g2;
        }
        return bkzVar;
    }
}
