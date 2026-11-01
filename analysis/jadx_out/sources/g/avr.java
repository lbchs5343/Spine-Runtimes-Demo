package g;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class avr {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f10937a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f10938b;

    public avr(int i) {
        this.f10938b = i;
    }

    public static boolean c(gey geyVar, gey geyVar2) {
        if (geyVar instanceof fb) {
            geyVar = new bsa(geyVar.zzi());
        }
        if (geyVar2 instanceof fb) {
            geyVar2 = new bsa(geyVar2.zzi());
        }
        return (((geyVar instanceof bsa) && (geyVar2 instanceof bsa)) || !(Double.isNaN(geyVar.zzh().doubleValue()) || Double.isNaN(geyVar2.zzh().doubleValue()))) && !f(geyVar2, geyVar);
    }

    public static gey d(ehn ehnVar, Iterator it, gey geyVar) {
        if (it != null) {
            while (it.hasNext()) {
                gey t = ehnVar.l((gey) it.next()).t((gwa) geyVar);
                if (t instanceof enl) {
                    enl enlVar = (enl) t;
                    if ("break".equals(enlVar.f15864c)) {
                        return gey.o;
                    }
                    if ("return".equals(enlVar.f15864c)) {
                        return enlVar;
                    }
                }
            }
        }
        return gey.o;
    }

    public static boolean e(gey geyVar, gey geyVar2) {
        if (geyVar.getClass().equals(geyVar2.getClass())) {
            if ((geyVar instanceof gdz) || (geyVar instanceof hee)) {
                return true;
            }
            return geyVar instanceof hbz ? (Double.isNaN(geyVar.zzh().doubleValue()) || Double.isNaN(geyVar2.zzh().doubleValue()) || geyVar.zzh().doubleValue() != geyVar2.zzh().doubleValue()) ? false : true : geyVar instanceof bsa ? geyVar.zzi().equals(geyVar2.zzi()) : geyVar instanceof bbk ? geyVar.zzg().equals(geyVar2.zzg()) : geyVar == geyVar2;
        }
        if (((geyVar instanceof gdz) || (geyVar instanceof hee)) && ((geyVar2 instanceof gdz) || (geyVar2 instanceof hee))) {
            return true;
        }
        boolean z = geyVar instanceof hbz;
        if (z && (geyVar2 instanceof bsa)) {
            return e(geyVar, new hbz(geyVar2.zzh()));
        }
        boolean z2 = geyVar instanceof bsa;
        if ((!z2 || !(geyVar2 instanceof hbz)) && !(geyVar instanceof bbk)) {
            if (geyVar2 instanceof bbk) {
                return e(geyVar, new hbz(geyVar2.zzh()));
            }
            if ((z2 || z) && (geyVar2 instanceof fb)) {
                return e(geyVar, new bsa(geyVar2.zzi()));
            }
            if ((geyVar instanceof fb) && ((geyVar2 instanceof bsa) || (geyVar2 instanceof hbz))) {
                return e(new bsa(geyVar.zzi()), geyVar2);
            }
            return false;
        }
        return e(new hbz(geyVar.zzh()), geyVar2);
    }

    public static boolean f(gey geyVar, gey geyVar2) {
        if (geyVar instanceof fb) {
            geyVar = new bsa(geyVar.zzi());
        }
        if (geyVar2 instanceof fb) {
            geyVar2 = new bsa(geyVar2.zzi());
        }
        if ((geyVar instanceof bsa) && (geyVar2 instanceof bsa)) {
            return ((bsa) geyVar).f12108a.compareTo(((bsa) geyVar2).f12108a) < 0;
        }
        double doubleValue = geyVar.zzh().doubleValue();
        double doubleValue2 = geyVar2.zzh().doubleValue();
        return (Double.isNaN(doubleValue) || Double.isNaN(doubleValue2) || (doubleValue == 0.0d && doubleValue2 == 0.0d) || ((doubleValue == 0.0d && doubleValue2 == 0.0d) || Double.compare(doubleValue, doubleValue2) >= 0)) ? false : true;
    }

    public static dxk g(dpa dpaVar, List list) {
        byh.bf(2, gdt.FN.name(), list);
        gey aj = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) list.get(0));
        gey aj2 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) list.get(1));
        if (!(aj2 instanceof gwa)) {
            throw new IllegalArgumentException(tn.x("FN requires an ArrayValue of parameter names found ", aj2.getClass().getCanonicalName()));
        }
        ArrayList e2 = ((gwa) aj2).e();
        List arrayList = new ArrayList();
        if (list.size() > 2) {
            arrayList = list.subList(2, list.size());
        }
        return new dxk(aj.zzi(), e2, arrayList, dpaVar);
    }

    public static gey h(ehn ehnVar, gey geyVar, gey geyVar2) {
        if (geyVar instanceof Iterable) {
            return d(ehnVar, ((Iterable) geyVar).iterator(), geyVar2);
        }
        throw new IllegalArgumentException("Non-iterable type in for...of loop.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:360:0x08f6, code lost:
    
        if ("return".equals(r1.f15864c) != false) goto L303;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final gey i(String str, dpa dpaVar, ArrayList arrayList) {
        hbz hbzVar;
        boolean e2;
        boolean e3;
        enl enlVar;
        gey bsaVar;
        gey aj;
        gey aj2;
        String str2;
        int i = 0;
        switch (this.f10938b) {
            case 0:
                gdt gdtVar = gdt.ADD;
                switch (byh.ab(str).ordinal()) {
                    case 4:
                        return new hbz(Double.valueOf(byh.az(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) dub.n(gdt.BITWISE_AND, 2, arrayList, 0)).zzh().doubleValue()) & byh.az(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1)).zzh().doubleValue())));
                    case 5:
                        hbzVar = new hbz(Double.valueOf(byh.az(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) dub.n(gdt.BITWISE_LEFT_SHIFT, 2, arrayList, 0)).zzh().doubleValue()) << ((int) (byh.az(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1)).zzh().doubleValue()) & 31))));
                        break;
                    case 6:
                        return new hbz(Double.valueOf(~byh.az(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) dub.n(gdt.BITWISE_NOT, 1, arrayList, 0)).zzh().doubleValue())));
                    case 7:
                        return new hbz(Double.valueOf(byh.az(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) dub.n(gdt.BITWISE_OR, 2, arrayList, 0)).zzh().doubleValue()) | byh.az(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1)).zzh().doubleValue())));
                    case 8:
                        hbzVar = new hbz(Double.valueOf(byh.az(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) dub.n(gdt.BITWISE_RIGHT_SHIFT, 2, arrayList, 0)).zzh().doubleValue()) >> ((int) (byh.az(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1)).zzh().doubleValue()) & 31))));
                        break;
                    case 9:
                        return new hbz(Double.valueOf((byh.az(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) dub.n(gdt.BITWISE_UNSIGNED_RIGHT_SHIFT, 2, arrayList, 0)).zzh().doubleValue()) & 4294967295L) >>> ((int) (byh.az(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1)).zzh().doubleValue()) & 31))));
                    case 10:
                        return new hbz(Double.valueOf(byh.az(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) dub.n(gdt.BITWISE_XOR, 2, arrayList, 0)).zzh().doubleValue()) ^ byh.az(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1)).zzh().doubleValue())));
                    default:
                        j(str);
                        throw null;
                }
                return hbzVar;
            case 1:
                byh.ah(2, byh.ab(str).name(), arrayList);
                gey aj3 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0));
                gey aj4 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1));
                int ordinal = byh.ab(str).ordinal();
                if (ordinal != 23) {
                    if (ordinal == 48) {
                        e3 = e(aj3, aj4);
                    } else if (ordinal == 42) {
                        e2 = f(aj3, aj4);
                    } else if (ordinal != 43) {
                        switch (ordinal) {
                            case 37:
                                e2 = f(aj4, aj3);
                                break;
                            case 38:
                                e2 = c(aj4, aj3);
                                break;
                            case 39:
                                e2 = byh.ae(aj3, aj4);
                                break;
                            case 40:
                                e3 = byh.ae(aj3, aj4);
                                break;
                            default:
                                j(str);
                                throw null;
                        }
                    } else {
                        e2 = c(aj3, aj4);
                    }
                    e2 = !e3;
                } else {
                    e2 = e(aj3, aj4);
                }
                return e2 ? gey.j : gey.m;
            case 2:
                gdt gdtVar2 = gdt.ADD;
                int ordinal2 = byh.ab(str).ordinal();
                if (ordinal2 == 2) {
                    gey geyVar = (gey) dub.n(gdt.APPLY, 3, arrayList, 0);
                    ffr ffrVar = (ffr) dpaVar.f14566d;
                    ffr ffrVar2 = (ffr) dpaVar.f14566d;
                    gey aj5 = ffrVar.aj(dpaVar, geyVar);
                    String zzi = ffrVar2.aj(dpaVar, (gey) arrayList.get(1)).zzi();
                    gey aj6 = ffrVar2.aj(dpaVar, (gey) arrayList.get(2));
                    if (!(aj6 instanceof gwa)) {
                        throw new IllegalArgumentException(tn.x("Function arguments for Apply are not a list found ", aj6.getClass().getCanonicalName()));
                    }
                    if (zzi.isEmpty()) {
                        throw new IllegalArgumentException("Function name for apply is undefined");
                    }
                    return aj5._ag(zzi, dpaVar, ((gwa) aj6).e());
                }
                if (ordinal2 == 15) {
                    byh.ah(0, gdt.BREAK.name(), arrayList);
                    return gey.l;
                }
                if (ordinal2 == 25) {
                    return g(dpaVar, arrayList);
                }
                if (ordinal2 == 41) {
                    byh.bf(2, gdt.IF.name(), arrayList);
                    gey geyVar2 = (gey) arrayList.get(0);
                    ffr ffrVar3 = (ffr) dpaVar.f14566d;
                    ffr ffrVar4 = (ffr) dpaVar.f14566d;
                    gey aj7 = ffrVar3.aj(dpaVar, geyVar2);
                    gey aj8 = ffrVar4.aj(dpaVar, (gey) arrayList.get(1));
                    gey aj9 = arrayList.size() > 2 ? ffrVar4.aj(dpaVar, (gey) arrayList.get(2)) : null;
                    gey geyVar3 = gey.o;
                    gey t = aj7.zzg().booleanValue() ? dpaVar.t((gwa) aj8) : aj9 != null ? dpaVar.t((gwa) aj9) : geyVar3;
                    return t instanceof enl ? t : geyVar3;
                }
                if (ordinal2 == 54) {
                    return new gwa(arrayList);
                }
                if (ordinal2 == 57) {
                    return arrayList.isEmpty() ? gey.k : new enl("return", ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) dub.n(gdt.RETURN, 1, arrayList, 0)));
                }
                if (ordinal2 != 19) {
                    if (ordinal2 == 20) {
                        byh.bf(2, gdt.DEFINE_FUNCTION.name(), arrayList);
                        dxk g2 = g(dpaVar, arrayList);
                        String str3 = g2.f16608g;
                        if (str3 == null) {
                            dpaVar.q("", g2);
                            return g2;
                        }
                        dpaVar.q(str3, g2);
                        return g2;
                    }
                    if (ordinal2 == 60) {
                        gey geyVar4 = (gey) dub.n(gdt.SWITCH, 3, arrayList, 0);
                        ffr ffrVar5 = (ffr) dpaVar.f14566d;
                        ffr ffrVar6 = (ffr) dpaVar.f14566d;
                        gey aj10 = ffrVar5.aj(dpaVar, geyVar4);
                        gey aj11 = ffrVar6.aj(dpaVar, (gey) arrayList.get(1));
                        gey aj12 = ffrVar6.aj(dpaVar, (gey) arrayList.get(2));
                        if (!(aj11 instanceof gwa)) {
                            throw new IllegalArgumentException("Malformed SWITCH statement, cases are not a list");
                        }
                        if (!(aj12 instanceof gwa)) {
                            throw new IllegalArgumentException("Malformed SWITCH statement, case statements are not a list");
                        }
                        gwa gwaVar = (gwa) aj11;
                        gwa gwaVar2 = (gwa) aj12;
                        boolean z = false;
                        for (int i2 = 0; i2 < gwaVar.s(); i2++) {
                            if (z || aj10.equals(ffrVar6.aj(dpaVar, gwaVar.g(i2)))) {
                                gey aj13 = ffrVar6.aj(dpaVar, gwaVar2.g(i2));
                                if (aj13 instanceof enl) {
                                    return ((enl) aj13).f15864c.equals("break") ? gey.o : aj13;
                                }
                                z = true;
                            } else {
                                z = false;
                            }
                        }
                        if (gwaVar.s() + 1 == gwaVar2.s()) {
                            gey aj14 = ffrVar6.aj(dpaVar, gwaVar2.g(gwaVar.s()));
                            if (aj14 instanceof enl) {
                                String str4 = ((enl) aj14).f15864c;
                                if (str4.equals("return") || str4.equals("continue")) {
                                    return aj14;
                                }
                            }
                        }
                        return gey.o;
                    }
                    if (ordinal2 == 61) {
                        gey geyVar5 = (gey) dub.n(gdt.TERNARY, 3, arrayList, 0);
                        ffr ffrVar7 = (ffr) dpaVar.f14566d;
                        ffr ffrVar8 = (ffr) dpaVar.f14566d;
                        return ffrVar7.aj(dpaVar, geyVar5).zzg().booleanValue() ? ffrVar8.aj(dpaVar, (gey) arrayList.get(1)) : ffrVar8.aj(dpaVar, (gey) arrayList.get(2));
                    }
                    switch (ordinal2) {
                        case 11:
                            return dpaVar.u().t(new gwa(arrayList));
                        case 12:
                            byh.ah(0, gdt.BREAK.name(), arrayList);
                            return gey.n;
                        case 13:
                            break;
                        default:
                            j(str);
                            throw null;
                    }
                }
                if (arrayList.isEmpty()) {
                    return gey.o;
                }
                gey aj15 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0));
                return aj15 instanceof gwa ? dpaVar.t((gwa) aj15) : gey.o;
            case 3:
                gdt gdtVar3 = gdt.ADD;
                int ordinal3 = byh.ab(str).ordinal();
                if (ordinal3 == 1) {
                    gey aj16 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) dub.n(gdt.AND, 2, arrayList, 0));
                    return !aj16.zzg().booleanValue() ? aj16 : ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1));
                }
                if (ordinal3 == 47) {
                    return new bbk(Boolean.valueOf(!((ffr) dpaVar.f14566d).aj(dpaVar, (gey) dub.n(gdt.NOT, 1, arrayList, 0)).zzg().booleanValue()));
                }
                if (ordinal3 == 50) {
                    gey aj17 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) dub.n(gdt.OR, 2, arrayList, 0));
                    return aj17.zzg().booleanValue() ? aj17 : ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1));
                }
                j(str);
                throw null;
            case 4:
                gdt gdtVar4 = gdt.ADD;
                int ordinal4 = byh.ab(str).ordinal();
                if (ordinal4 == 65) {
                    gey geyVar6 = (gey) dub.n(gdt.WHILE, 4, arrayList, 0);
                    gey geyVar7 = (gey) arrayList.get(1);
                    gey geyVar8 = (gey) arrayList.get(2);
                    gey geyVar9 = (gey) arrayList.get(3);
                    ffr ffrVar9 = (ffr) dpaVar.f14566d;
                    ffr ffrVar10 = (ffr) dpaVar.f14566d;
                    gey aj18 = ffrVar9.aj(dpaVar, geyVar9);
                    if (ffrVar10.aj(dpaVar, geyVar8).zzg().booleanValue()) {
                        gey t2 = dpaVar.t((gwa) aj18);
                        if (t2 instanceof enl) {
                            enlVar = (enl) t2;
                            if ("break".equals(enlVar.f15864c)) {
                                return gey.o;
                            }
                            break;
                        }
                    }
                    while (ffrVar10.aj(dpaVar, geyVar6).zzg().booleanValue()) {
                        gey t3 = dpaVar.t((gwa) aj18);
                        if (t3 instanceof enl) {
                            enlVar = (enl) t3;
                            if ("break".equals(enlVar.f15864c)) {
                                return gey.o;
                            }
                            if ("return".equals(enlVar.f15864c)) {
                            }
                        }
                        dpaVar.j(geyVar7);
                    }
                    return gey.o;
                }
                switch (ordinal4) {
                    case 26:
                        if (!(dub.n(gdt.FOR_IN, 3, arrayList, 0) instanceof bsa)) {
                            throw new IllegalArgumentException("Variable name in FOR_IN must be a string");
                        }
                        String zzi2 = ((gey) arrayList.get(0)).zzi();
                        gey aj19 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1));
                        gey aj20 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(2));
                        Iterator zzl = aj19.zzl();
                        if (zzl != null) {
                            while (zzl.hasNext()) {
                                dpaVar.m(zzi2, (gey) zzl.next());
                                gey t4 = dpaVar.t((gwa) aj20);
                                if (t4 instanceof enl) {
                                    enlVar = (enl) t4;
                                    if ("break".equals(enlVar.f15864c)) {
                                        return gey.o;
                                    }
                                    if ("return".equals(enlVar.f15864c)) {
                                        break;
                                    }
                                }
                            }
                        }
                        return gey.o;
                    case 27:
                        if (dub.n(gdt.FOR_IN_CONST, 3, arrayList, 0) instanceof bsa) {
                            return d(new fdy(dpaVar, 22, ((gey) arrayList.get(0)).zzi()), ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1)).zzl(), ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(2)));
                        }
                        throw new IllegalArgumentException("Variable name in FOR_IN_CONST must be a string");
                    case 28:
                        if (!(dub.n(gdt.FOR_IN_LET, 3, arrayList, 0) instanceof bsa)) {
                            throw new IllegalArgumentException("Variable name in FOR_IN_LET must be a string");
                        }
                        String zzi3 = ((gey) arrayList.get(0)).zzi();
                        gey aj21 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1));
                        gey aj22 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(2));
                        Iterator zzl2 = aj21.zzl();
                        if (zzl2 != null) {
                            while (zzl2.hasNext()) {
                                gey geyVar10 = (gey) zzl2.next();
                                dpa u = dpaVar.u();
                                u.m(zzi3, geyVar10);
                                gey t5 = u.t((gwa) aj22);
                                if (t5 instanceof enl) {
                                    enlVar = (enl) t5;
                                    if ("break".equals(enlVar.f15864c)) {
                                        return gey.o;
                                    }
                                    if ("return".equals(enlVar.f15864c)) {
                                        break;
                                    }
                                }
                            }
                        }
                        return gey.o;
                    case 29:
                        gey geyVar11 = (gey) dub.n(gdt.FOR_LET, 4, arrayList, 0);
                        ffr ffrVar11 = (ffr) dpaVar.f14566d;
                        ffr ffrVar12 = (ffr) dpaVar.f14566d;
                        gey aj23 = ffrVar11.aj(dpaVar, geyVar11);
                        if (!(aj23 instanceof gwa)) {
                            throw new IllegalArgumentException("Initializer variables in FOR_LET must be an ArrayList");
                        }
                        gwa gwaVar3 = (gwa) aj23;
                        gey geyVar12 = (gey) arrayList.get(1);
                        gey geyVar13 = (gey) arrayList.get(2);
                        gey aj24 = ffrVar12.aj(dpaVar, (gey) arrayList.get(3));
                        dpa u2 = dpaVar.u();
                        for (int i3 = 0; i3 < gwaVar3.s(); i3++) {
                            String zzi4 = gwaVar3.g(i3).zzi();
                            u2.q(zzi4, dpaVar.k(zzi4));
                        }
                        while (ffrVar12.aj(dpaVar, geyVar12).zzg().booleanValue()) {
                            gey t6 = dpaVar.t((gwa) aj24);
                            if (t6 instanceof enl) {
                                enl enlVar2 = (enl) t6;
                                if ("break".equals(enlVar2.f15864c)) {
                                    return gey.o;
                                }
                                if ("return".equals(enlVar2.f15864c)) {
                                    return enlVar2;
                                }
                            }
                            dpa u3 = dpaVar.u();
                            for (int i4 = 0; i4 < gwaVar3.s(); i4++) {
                                String zzi5 = gwaVar3.g(i4).zzi();
                                u3.q(zzi5, u2.k(zzi5));
                            }
                            u3.j(geyVar13);
                            u2 = u3;
                        }
                        return gey.o;
                    case 30:
                        if (dub.n(gdt.FOR_OF, 3, arrayList, 0) instanceof bsa) {
                            return h(new akj(dpaVar, 22, ((gey) arrayList.get(0)).zzi()), ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1)), ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(2)));
                        }
                        throw new IllegalArgumentException("Variable name in FOR_OF must be a string");
                    case 31:
                        if (dub.n(gdt.FOR_OF_CONST, 3, arrayList, 0) instanceof bsa) {
                            return h(new fdy(dpaVar, 22, ((gey) arrayList.get(0)).zzi()), ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1)), ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(2)));
                        }
                        throw new IllegalArgumentException("Variable name in FOR_OF_CONST must be a string");
                    case 32:
                        if (dub.n(gdt.FOR_OF_LET, 3, arrayList, 0) instanceof bsa) {
                            return h(new gtb(dpaVar, 15, ((gey) arrayList.get(0)).zzi()), ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1)), ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(2)));
                        }
                        throw new IllegalArgumentException("Variable name in FOR_OF_LET must be a string");
                    default:
                        j(str);
                        throw null;
                }
                return enlVar;
            case 5:
                gdt gdtVar5 = gdt.ADD;
                int ordinal5 = byh.ab(str).ordinal();
                if (ordinal5 == 0) {
                    gey aj25 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) dub.n(gdt.ADD, 2, arrayList, 0));
                    gey aj26 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1));
                    bsaVar = ((aj25 instanceof fb) || (aj25 instanceof bsa) || (aj26 instanceof fb) || (aj26 instanceof bsa)) ? new bsa(String.valueOf(aj25.zzi()).concat(String.valueOf(aj26.zzi()))) : new hbz(Double.valueOf(aj26.zzh().doubleValue() + aj25.zzh().doubleValue()));
                } else if (ordinal5 == 21) {
                    bsaVar = new hbz(Double.valueOf(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) dub.n(gdt.DIVIDE, 2, arrayList, 0)).zzh().doubleValue() / ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1)).zzh().doubleValue()));
                } else {
                    if (ordinal5 == 59) {
                        return new hbz(Double.valueOf(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) dub.n(gdt.SUBTRACT, 2, arrayList, 0)).zzh().doubleValue() + (-((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1)).zzh().doubleValue())));
                    }
                    if (ordinal5 == 52 || ordinal5 == 53) {
                        byh.ah(2, str, arrayList);
                        gey aj27 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0));
                        dpaVar.j((gey) arrayList.get(1));
                        return aj27;
                    }
                    if (ordinal5 == 55 || ordinal5 == 56) {
                        byh.ah(1, str, arrayList);
                        return ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0));
                    }
                    switch (ordinal5) {
                        case 44:
                            bsaVar = new hbz(Double.valueOf(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) dub.n(gdt.MODULUS, 2, arrayList, 0)).zzh().doubleValue() % ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1)).zzh().doubleValue()));
                            break;
                        case 45:
                            bsaVar = new hbz(Double.valueOf(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) dub.n(gdt.MULTIPLY, 2, arrayList, 0)).zzh().doubleValue() * ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1)).zzh().doubleValue()));
                            break;
                        case 46:
                            return new hbz(Double.valueOf(-((ffr) dpaVar.f14566d).aj(dpaVar, (gey) dub.n(gdt.NEGATE, 1, arrayList, 0)).zzh().doubleValue()));
                        default:
                            j(str);
                            throw null;
                    }
                }
                return bsaVar;
            case 6:
                if (str == null || str.isEmpty() || !dpaVar.l(str)) {
                    throw new IllegalArgumentException(tn.x("Command not found: ", str));
                }
                gey k = dpaVar.k(str);
                if (k instanceof fdk) {
                    return ((fdk) k).e(dpaVar, arrayList);
                }
                throw new IllegalArgumentException(tn.ad("Function ", str, " is not defined"));
            default:
                gdt gdtVar6 = gdt.ADD;
                int ordinal6 = byh.ab(str).ordinal();
                if (ordinal6 != 3) {
                    if (ordinal6 == 14) {
                        byh.bf(2, gdt.CONST.name(), arrayList);
                        if (arrayList.size() % 2 != 0) {
                            throw new IllegalArgumentException(awf.ac(arrayList.size(), "CONST requires an even number of arguments, found "));
                        }
                        while (i < arrayList.size() - 1) {
                            gey aj28 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(i));
                            if (!(aj28 instanceof bsa)) {
                                throw new IllegalArgumentException(tn.x("Expected string for const name. got ", aj28.getClass().getCanonicalName()));
                            }
                            String str5 = ((bsa) aj28).f12108a;
                            dpaVar.m(str5, ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(i + 1)));
                            ((HashMap) dpaVar.f14565c).put(str5, Boolean.TRUE);
                            i += 2;
                        }
                        return gey.o;
                    }
                    if (ordinal6 == 24) {
                        byh.bf(1, gdt.EXPRESSION_LIST.name(), arrayList);
                        gey geyVar14 = gey.o;
                        while (i < arrayList.size()) {
                            geyVar14 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(i));
                            if (geyVar14 instanceof enl) {
                                throw new IllegalStateException("ControlValue cannot be in an expression list");
                            }
                            i++;
                        }
                        return geyVar14;
                    }
                    if (ordinal6 == 33) {
                        gey aj29 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) dub.n(gdt.GET, 1, arrayList, 0));
                        if (aj29 instanceof bsa) {
                            return dpaVar.k(((bsa) aj29).f12108a);
                        }
                        throw new IllegalArgumentException(tn.x("Expected string for get var. got ", aj29.getClass().getCanonicalName()));
                    }
                    if (ordinal6 == 49) {
                        byh.ah(0, gdt.NULL.name(), arrayList);
                        return gey.i;
                    }
                    if (ordinal6 == 58) {
                        gey geyVar15 = (gey) dub.n(gdt.SET_PROPERTY, 3, arrayList, 0);
                        ffr ffrVar13 = (ffr) dpaVar.f14566d;
                        ffr ffrVar14 = (ffr) dpaVar.f14566d;
                        gey aj30 = ffrVar13.aj(dpaVar, geyVar15);
                        gey aj31 = ffrVar14.aj(dpaVar, (gey) arrayList.get(1));
                        aj2 = ffrVar14.aj(dpaVar, (gey) arrayList.get(2));
                        if (aj30 == gey.o || aj30 == gey.i) {
                            throw new IllegalStateException(awf.t("Can't set property ", aj31.zzi(), " of ", aj30.zzi()));
                        }
                        if ((aj30 instanceof gwa) && (aj31 instanceof hbz)) {
                            ((gwa) aj30).r(((hbz) aj31).f19206a.intValue(), aj2);
                        } else if (aj30 instanceof fb) {
                            ((fb) aj30).a(aj31.zzi(), aj2);
                        }
                    } else {
                        if (ordinal6 == 17) {
                            if (arrayList.isEmpty()) {
                                return new gwa();
                            }
                            gwa gwaVar4 = new gwa();
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                gey aj32 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) it.next());
                                if (aj32 instanceof enl) {
                                    throw new IllegalStateException("Failed to evaluate array element");
                                }
                                gwaVar4.r(i, aj32);
                                i++;
                            }
                            return gwaVar4;
                        }
                        if (ordinal6 == 18) {
                            if (arrayList.isEmpty()) {
                                return new byt();
                            }
                            if (arrayList.size() % 2 != 0) {
                                throw new IllegalArgumentException(awf.ac(arrayList.size(), "CREATE_OBJECT requires an even number of arguments, found "));
                            }
                            byt bytVar = new byt();
                            while (i < arrayList.size() - 1) {
                                gey aj33 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(i));
                                gey aj34 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(i + 1));
                                if ((aj33 instanceof enl) || (aj34 instanceof enl)) {
                                    throw new IllegalStateException("Failed to evaluate map entry");
                                }
                                bytVar.a(aj33.zzi(), aj34);
                                i += 2;
                            }
                            return bytVar;
                        }
                        if (ordinal6 == 35 || ordinal6 == 36) {
                            gey aj35 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) dub.n(gdt.GET_PROPERTY, 2, arrayList, 0));
                            gey aj36 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1));
                            if ((aj35 instanceof gwa) && byh.ap(aj36)) {
                                return ((gwa) aj35).g(aj36.zzh().intValue());
                            }
                            if (aj35 instanceof fb) {
                                return ((fb) aj35).zzf(aj36.zzi());
                            }
                            if (aj35 instanceof bsa) {
                                if ("length".equals(aj36.zzi())) {
                                    aj2 = new hbz(Double.valueOf(((bsa) aj35).f12108a.length()));
                                } else if (byh.ap(aj36)) {
                                    bsa bsaVar2 = (bsa) aj35;
                                    if (aj36.zzh().doubleValue() < bsaVar2.f12108a.length()) {
                                        aj = new bsa(String.valueOf(bsaVar2.f12108a.charAt(aj36.zzh().intValue())));
                                    }
                                }
                            }
                            return gey.o;
                        }
                        switch (ordinal6) {
                            case 62:
                                gey aj37 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) dub.n(gdt.TYPEOF, 1, arrayList, 0));
                                if (aj37 instanceof gdz) {
                                    str2 = "undefined";
                                } else if (aj37 instanceof bbk) {
                                    str2 = "boolean";
                                } else if (aj37 instanceof hbz) {
                                    str2 = "number";
                                } else if (aj37 instanceof bsa) {
                                    str2 = "string";
                                } else if (aj37 instanceof dxk) {
                                    str2 = "function";
                                } else {
                                    if ((aj37 instanceof fud) || (aj37 instanceof enl)) {
                                        throw new IllegalArgumentException(String.format("Unsupported value type %s in typeof", aj37));
                                    }
                                    str2 = "object";
                                }
                                aj2 = new bsa(str2);
                                break;
                            case 63:
                                byh.ah(0, gdt.UNDEFINED.name(), arrayList);
                                return gey.o;
                            case 64:
                                byh.bf(1, gdt.VAR.name(), arrayList);
                                Iterator it2 = arrayList.iterator();
                                while (it2.hasNext()) {
                                    gey aj38 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) it2.next());
                                    if (!(aj38 instanceof bsa)) {
                                        throw new IllegalArgumentException(tn.x("Expected string for var name. got ", aj38.getClass().getCanonicalName()));
                                    }
                                    dpaVar.m(((bsa) aj38).f12108a, gey.o);
                                }
                                return gey.o;
                            default:
                                j(str);
                                throw null;
                        }
                    }
                    return aj2;
                }
                gey aj39 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) dub.n(gdt.ASSIGN, 2, arrayList, 0));
                if (!(aj39 instanceof bsa)) {
                    throw new IllegalArgumentException(tn.x("Expected string for assign var. got ", aj39.getClass().getCanonicalName()));
                }
                bsa bsaVar3 = (bsa) aj39;
                String str6 = bsaVar3.f12108a;
                String str7 = bsaVar3.f12108a;
                if (!dpaVar.l(str6)) {
                    throw new IllegalArgumentException(tn.x("Attempting to assign undefined value ", str7));
                }
                aj = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1));
                dpaVar.q(str7, aj);
                return aj;
        }
    }

    public final void j(String str) {
        if (!this.f10937a.contains(byh.ab(str))) {
            throw new IllegalArgumentException("Command not supported");
        }
        throw new UnsupportedOperationException("Command not implemented: ".concat(String.valueOf(str)));
    }
}
