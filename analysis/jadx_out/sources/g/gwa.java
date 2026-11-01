package g;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public final class gwa implements Iterable, gey, fb {

    /* renamed from: c, reason: collision with root package name */
    public final TreeMap f18854c;

    /* renamed from: d, reason: collision with root package name */
    public final TreeMap f18855d;

    public gwa() {
        this.f18854c = new TreeMap();
        this.f18855d = new TreeMap();
    }

    public gwa(List list) {
        this();
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                r(i, (gey) list.get(i));
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:343:0x083c, code lost:
    
        if (g.dzm.an(r27, r29, (g.dxk) r0, java.lang.Boolean.FALSE, java.lang.Boolean.TRUE).s() == s()) goto L382;
     */
    /* JADX WARN: Removed duplicated region for block: B:134:0x03ad  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x040a  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x050f  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0525  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x055a  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0564  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x056e  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x05a7  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x05bf  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x05f3  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x069d  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x06dd  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x0772  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x07a2  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x0806  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x084a  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:393:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:396:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:399:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:402:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:405:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:411:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:418:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:422:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:425:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:428:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:431:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02a0  */
    @Override // g.gey
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final gey _ag(String str, dpa dpaVar, ArrayList arrayList) {
        String str2;
        String str3;
        Object obj;
        String str4;
        String str5;
        String str6;
        String str7;
        char c2;
        char c3;
        double d2;
        double d3;
        String str8 = "toString";
        String str9 = "splice";
        if ("concat".equals(str) || "every".equals(str) || "filter".equals(str) || "forEach".equals(str) || "indexOf".equals(str) || "join".equals(str) || "lastIndexOf".equals(str) || "map".equals(str) || "pop".equals(str) || "push".equals(str) || "reduce".equals(str) || "reduceRight".equals(str) || "reverse".equals(str) || "shift".equals(str) || "slice".equals(str) || "some".equals(str)) {
            str2 = "filter";
            str3 = "sort";
        } else {
            str2 = "filter";
            str3 = "sort";
            if (!str3.equals(str)) {
                obj = "reduce";
                if (str9.equals(str)) {
                    str9 = str9;
                } else {
                    str9 = str9;
                    if (!str8.equals(str)) {
                        str8 = str8;
                        str4 = "unshift";
                        if (!str4.equals(str)) {
                            return bfc.j(this, new bsa(str), dpaVar, arrayList);
                        }
                        Double valueOf = Double.valueOf(-1.0d);
                        switch (str.hashCode()) {
                            case -1776922004:
                                str5 = str2;
                                str6 = "forEach";
                                str7 = str8;
                                if (str.equals(str7)) {
                                    c2 = 18;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1354795244:
                                str5 = str2;
                                str6 = "forEach";
                                if (str.equals("concat")) {
                                    str7 = str8;
                                    c2 = 0;
                                    break;
                                }
                                str7 = str8;
                                c2 = 65535;
                                break;
                            case -1274492040:
                                str5 = str2;
                                str6 = "forEach";
                                if (str.equals(str5)) {
                                    str7 = str8;
                                    c2 = 2;
                                    break;
                                }
                                str7 = str8;
                                c2 = 65535;
                                break;
                            case -934873754:
                                str6 = "forEach";
                                if (str.equals(obj)) {
                                    c2 = '\n';
                                    str5 = str2;
                                    str7 = str8;
                                    break;
                                }
                                str5 = str2;
                                str7 = str8;
                                c2 = 65535;
                                break;
                            case -895859076:
                                str6 = "forEach";
                                if (str.equals(str9)) {
                                    c2 = 17;
                                    str5 = str2;
                                    str7 = str8;
                                    break;
                                }
                                str5 = str2;
                                str7 = str8;
                                c2 = 65535;
                                break;
                            case -678635926:
                                str6 = "forEach";
                                if (str.equals(str6)) {
                                    str5 = str2;
                                    str7 = str8;
                                    c2 = 3;
                                    break;
                                }
                                str5 = str2;
                                str7 = str8;
                                c2 = 65535;
                                break;
                            case -467511597:
                                if (str.equals("lastIndexOf")) {
                                    c2 = 6;
                                    str5 = str2;
                                    str6 = "forEach";
                                    str7 = str8;
                                    break;
                                }
                                str5 = str2;
                                str6 = "forEach";
                                str7 = str8;
                                c2 = 65535;
                                break;
                            case -277637751:
                                if (str.equals(str4)) {
                                    c2 = 19;
                                    str5 = str2;
                                    str6 = "forEach";
                                    str7 = str8;
                                    break;
                                }
                                str5 = str2;
                                str6 = "forEach";
                                str7 = str8;
                                c2 = 65535;
                                break;
                            case 107868:
                                if (str.equals("map")) {
                                    c2 = 7;
                                    str5 = str2;
                                    str6 = "forEach";
                                    str7 = str8;
                                    break;
                                }
                                str5 = str2;
                                str6 = "forEach";
                                str7 = str8;
                                c2 = 65535;
                                break;
                            case 111185:
                                if (str.equals("pop")) {
                                    c2 = '\b';
                                    str5 = str2;
                                    str6 = "forEach";
                                    str7 = str8;
                                    break;
                                }
                                str5 = str2;
                                str6 = "forEach";
                                str7 = str8;
                                c2 = 65535;
                                break;
                            case 3267882:
                                if (str.equals("join")) {
                                    c2 = 5;
                                    str5 = str2;
                                    str6 = "forEach";
                                    str7 = str8;
                                    break;
                                }
                                str5 = str2;
                                str6 = "forEach";
                                str7 = str8;
                                c2 = 65535;
                                break;
                            case 3452698:
                                if (str.equals("push")) {
                                    c2 = '\t';
                                    str5 = str2;
                                    str6 = "forEach";
                                    str7 = str8;
                                    break;
                                }
                                str5 = str2;
                                str6 = "forEach";
                                str7 = str8;
                                c2 = 65535;
                                break;
                            case 3536116:
                                if (str.equals("some")) {
                                    c2 = 15;
                                    str5 = str2;
                                    str6 = "forEach";
                                    str7 = str8;
                                    break;
                                }
                                str5 = str2;
                                str6 = "forEach";
                                str7 = str8;
                                c2 = 65535;
                                break;
                            case 3536286:
                                if (str.equals(str3)) {
                                    c2 = 16;
                                    str5 = str2;
                                    str6 = "forEach";
                                    str7 = str8;
                                    break;
                                }
                                str5 = str2;
                                str6 = "forEach";
                                str7 = str8;
                                c2 = 65535;
                                break;
                            case 96891675:
                                if (str.equals("every")) {
                                    str5 = str2;
                                    str6 = "forEach";
                                    str7 = str8;
                                    c2 = 1;
                                    break;
                                }
                                str5 = str2;
                                str6 = "forEach";
                                str7 = str8;
                                c2 = 65535;
                                break;
                            case 109407362:
                                if (str.equals("shift")) {
                                    c2 = '\r';
                                    str5 = str2;
                                    str6 = "forEach";
                                    str7 = str8;
                                    break;
                                }
                                str5 = str2;
                                str6 = "forEach";
                                str7 = str8;
                                c2 = 65535;
                                break;
                            case 109526418:
                                if (str.equals("slice")) {
                                    c2 = 14;
                                    str5 = str2;
                                    str6 = "forEach";
                                    str7 = str8;
                                    break;
                                }
                                str5 = str2;
                                str6 = "forEach";
                                str7 = str8;
                                c2 = 65535;
                                break;
                            case 965561430:
                                if (str.equals("reduceRight")) {
                                    c2 = 11;
                                    str5 = str2;
                                    str6 = "forEach";
                                    str7 = str8;
                                    break;
                                }
                                str5 = str2;
                                str6 = "forEach";
                                str7 = str8;
                                c2 = 65535;
                                break;
                            case 1099846370:
                                if (str.equals("reverse")) {
                                    c2 = '\f';
                                    str5 = str2;
                                    str6 = "forEach";
                                    str7 = str8;
                                    break;
                                }
                                str5 = str2;
                                str6 = "forEach";
                                str7 = str8;
                                c2 = 65535;
                                break;
                            case 1943291465:
                                if (str.equals("indexOf")) {
                                    c2 = 4;
                                    str5 = str2;
                                    str6 = "forEach";
                                    str7 = str8;
                                    break;
                                }
                                str5 = str2;
                                str6 = "forEach";
                                str7 = str8;
                                c2 = 65535;
                                break;
                            default:
                                str5 = str2;
                                str6 = "forEach";
                                str7 = str8;
                                c2 = 65535;
                                break;
                        }
                        String str10 = ",";
                        c3 = c2;
                        TreeMap treeMap = this.f18854c;
                        String str11 = str5;
                        String str12 = str6;
                        fdk fdkVar = null;
                        gey geyVar = gey.o;
                        switch (c3) {
                            case 0:
                                gey zzd = zzd();
                                if (!arrayList.isEmpty()) {
                                    Iterator it = arrayList.iterator();
                                    while (it.hasNext()) {
                                        gey aj = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) it.next());
                                        if (aj instanceof enl) {
                                            throw new IllegalStateException("Failed evaluation of arguments");
                                        }
                                        gwa gwaVar = (gwa) zzd;
                                        int s = gwaVar.s();
                                        if (aj instanceof gwa) {
                                            gwa gwaVar2 = (gwa) aj;
                                            Iterator t = gwaVar2.t();
                                            while (t.hasNext()) {
                                                Integer num = (Integer) t.next();
                                                gwaVar.r(num.intValue() + s, gwaVar2.g(num.intValue()));
                                            }
                                        } else {
                                            gwaVar.r(s, aj);
                                        }
                                    }
                                }
                                return zzd;
                            case 1:
                                byh.ah(1, "every", arrayList);
                                gey aj2 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0));
                                if (!(aj2 instanceof dxk)) {
                                    throw new IllegalArgumentException("Callback should be a method");
                                }
                                if (s() != 0) {
                                    break;
                                }
                                return gey.j;
                            case 2:
                                byh.ah(1, str11, arrayList);
                                gey aj3 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0));
                                if (!(aj3 instanceof dxk)) {
                                    throw new IllegalArgumentException("Callback should be a method");
                                }
                                if (treeMap.size() == 0) {
                                    return new gwa();
                                }
                                gey zzd2 = zzd();
                                gwa an = dzm.an(this, dpaVar, (dxk) aj3, null, Boolean.TRUE);
                                gwa gwaVar3 = new gwa();
                                Iterator t2 = an.t();
                                while (t2.hasNext()) {
                                    gwaVar3.r(gwaVar3.s(), ((gwa) zzd2).g(((Integer) t2.next()).intValue()));
                                }
                                return gwaVar3;
                            case 3:
                                byh.ah(1, str12, arrayList);
                                gey aj4 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0));
                                if (!(aj4 instanceof dxk)) {
                                    throw new IllegalArgumentException("Callback should be a method");
                                }
                                if (treeMap.size() != 0) {
                                    dzm.an(this, dpaVar, (dxk) aj4, null, null);
                                    return geyVar;
                                }
                                return geyVar;
                            case 4:
                                byh.ba("indexOf", 2, arrayList);
                                if (!arrayList.isEmpty()) {
                                    geyVar = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0));
                                }
                                if (arrayList.size() > 1) {
                                    d2 = byh.ar(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1)).zzh().doubleValue());
                                    if (d2 >= s()) {
                                        return new hbz(valueOf);
                                    }
                                    if (d2 < 0.0d) {
                                        d2 += s();
                                    }
                                } else {
                                    d2 = 0.0d;
                                }
                                Iterator t3 = t();
                                while (t3.hasNext()) {
                                    int intValue = ((Integer) t3.next()).intValue();
                                    double d4 = intValue;
                                    if (d4 >= d2 && byh.ae(g(intValue), geyVar)) {
                                        return new hbz(Double.valueOf(d4));
                                    }
                                }
                                return new hbz(valueOf);
                            case 5:
                                byh.ba("join", 1, arrayList);
                                if (s() == 0) {
                                    return gey.p;
                                }
                                if (!arrayList.isEmpty()) {
                                    gey aj5 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0));
                                    str10 = ((aj5 instanceof hee) || (aj5 instanceof gdz)) ? "" : aj5.zzi();
                                }
                                return new bsa(h(str10));
                            case 6:
                                byh.ba("lastIndexOf", 2, arrayList);
                                if (!arrayList.isEmpty()) {
                                    geyVar = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0));
                                }
                                double s2 = s() - 1;
                                if (arrayList.size() > 1) {
                                    gey aj6 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1));
                                    s2 = Double.isNaN(aj6.zzh().doubleValue()) ? s() - 1 : byh.ar(aj6.zzh().doubleValue());
                                    d3 = 0.0d;
                                    if (s2 < 0.0d) {
                                        s2 += s();
                                    }
                                } else {
                                    d3 = 0.0d;
                                }
                                if (s2 < d3) {
                                    return new hbz(valueOf);
                                }
                                for (int min = (int) Math.min(s(), s2); min >= 0; min--) {
                                    if (f(min) && byh.ae(g(min), geyVar)) {
                                        return new hbz(Double.valueOf(min));
                                    }
                                }
                                return new hbz(valueOf);
                            case 7:
                                byh.ah(1, "map", arrayList);
                                gey aj7 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0));
                                if (aj7 instanceof dxk) {
                                    return s() == 0 ? new gwa() : dzm.an(this, dpaVar, (dxk) aj7, null, null);
                                }
                                throw new IllegalArgumentException("Callback should be a method");
                            case '\b':
                                byh.ah(0, "pop", arrayList);
                                int s3 = s();
                                if (s3 != 0) {
                                    int i = s3 - 1;
                                    gey g2 = g(i);
                                    q(i);
                                    return g2;
                                }
                                return geyVar;
                            case '\t':
                                if (!arrayList.isEmpty()) {
                                    Iterator it2 = arrayList.iterator();
                                    while (it2.hasNext()) {
                                        r(s(), ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) it2.next()));
                                    }
                                }
                                return new hbz(Double.valueOf(s()));
                            case '\n':
                                return dzm.ak(this, dpaVar, arrayList, true);
                            case 11:
                                return dzm.ak(this, dpaVar, arrayList, false);
                            case '\f':
                                byh.ah(0, "reverse", arrayList);
                                int s4 = s();
                                if (s4 != 0) {
                                    for (int i2 = 0; i2 < s4 / 2; i2++) {
                                        if (f(i2)) {
                                            gey g3 = g(i2);
                                            r(i2, null);
                                            int i3 = (s4 - 1) - i2;
                                            if (f(i3)) {
                                                r(i2, g(i3));
                                            }
                                            r(i3, g3);
                                        }
                                    }
                                }
                                return this;
                            case '\r':
                                byh.ah(0, "shift", arrayList);
                                if (s() != 0) {
                                    gey g4 = g(0);
                                    q(0);
                                    return g4;
                                }
                                return geyVar;
                            case 14:
                                byh.ba("slice", 2, arrayList);
                                if (arrayList.isEmpty()) {
                                    return zzd();
                                }
                                double s5 = s();
                                double ar = byh.ar(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0)).zzh().doubleValue());
                                double max = ar < 0.0d ? Math.max(ar + s5, 0.0d) : Math.min(ar, s5);
                                if (arrayList.size() == 2) {
                                    double ar2 = byh.ar(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1)).zzh().doubleValue());
                                    s5 = ar2 < 0.0d ? Math.max(s5 + ar2, 0.0d) : Math.min(s5, ar2);
                                }
                                gwa gwaVar4 = new gwa();
                                for (int i4 = (int) max; i4 < s5; i4++) {
                                    gwaVar4.r(gwaVar4.s(), g(i4));
                                }
                                return gwaVar4;
                            case 15:
                                byh.ah(1, "some", arrayList);
                                gey aj8 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0));
                                if (!(aj8 instanceof fdk)) {
                                    throw new IllegalArgumentException("Callback should be a method");
                                }
                                if (s() != 0) {
                                    fdk fdkVar2 = (fdk) aj8;
                                    Iterator t4 = t();
                                    while (t4.hasNext()) {
                                        int intValue2 = ((Integer) t4.next()).intValue();
                                        if (f(intValue2) && fdkVar2.e(dpaVar, Arrays.asList(g(intValue2), new hbz(Double.valueOf(intValue2)), this)).zzg().booleanValue()) {
                                            return gey.j;
                                        }
                                    }
                                }
                                return gey.m;
                            case 16:
                                byh.ba(str3, 1, arrayList);
                                if (s() >= 2) {
                                    ArrayList e2 = e();
                                    if (!arrayList.isEmpty()) {
                                        gey aj9 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0));
                                        if (!(aj9 instanceof fdk)) {
                                            throw new IllegalArgumentException("Comparator should be a method");
                                        }
                                        fdkVar = (fdk) aj9;
                                    }
                                    Collections.sort(e2, new pm(fdkVar, dpaVar));
                                    treeMap.clear();
                                    Iterator it3 = e2.iterator();
                                    int i5 = 0;
                                    while (it3.hasNext()) {
                                        r(i5, (gey) it3.next());
                                        i5++;
                                    }
                                }
                                return this;
                            case 17:
                                if (arrayList.isEmpty()) {
                                    return new gwa();
                                }
                                gey geyVar2 = (gey) arrayList.get(0);
                                ffr ffrVar = (ffr) dpaVar.f14566d;
                                ffr ffrVar2 = (ffr) dpaVar.f14566d;
                                int ar3 = (int) byh.ar(ffrVar.aj(dpaVar, geyVar2).zzh().doubleValue());
                                if (ar3 < 0) {
                                    ar3 = Math.max(0, s() + ar3);
                                } else if (ar3 > s()) {
                                    ar3 = s();
                                }
                                int s6 = s();
                                gwa gwaVar5 = new gwa();
                                if (arrayList.size() > 1) {
                                    int max2 = Math.max(0, (int) byh.ar(ffrVar2.aj(dpaVar, (gey) arrayList.get(1)).zzh().doubleValue()));
                                    if (max2 > 0) {
                                        for (int i6 = ar3; i6 < Math.min(s6, ar3 + max2); i6++) {
                                            gwaVar5.r(gwaVar5.s(), g(ar3));
                                            q(ar3);
                                        }
                                    }
                                    if (arrayList.size() > 2) {
                                        for (int i7 = 2; i7 < arrayList.size(); i7++) {
                                            gey aj10 = ffrVar2.aj(dpaVar, (gey) arrayList.get(i7));
                                            if (aj10 instanceof enl) {
                                                throw new IllegalArgumentException("Failed to parse elements to add");
                                            }
                                            int i8 = (ar3 + i7) - 2;
                                            if (i8 < 0) {
                                                throw new IllegalArgumentException(awf.ac(i8, "Invalid value index: "));
                                            }
                                            if (i8 >= s()) {
                                                r(i8, aj10);
                                            } else {
                                                for (int intValue3 = ((Integer) treeMap.lastKey()).intValue(); intValue3 >= i8; intValue3--) {
                                                    Integer valueOf2 = Integer.valueOf(intValue3);
                                                    gey geyVar3 = (gey) treeMap.get(valueOf2);
                                                    if (geyVar3 != null) {
                                                        r(intValue3 + 1, geyVar3);
                                                        treeMap.remove(valueOf2);
                                                    }
                                                }
                                                r(i8, aj10);
                                            }
                                        }
                                    }
                                } else {
                                    while (ar3 < s6) {
                                        gwaVar5.r(gwaVar5.s(), g(ar3));
                                        r(ar3, null);
                                        ar3++;
                                    }
                                }
                                return gwaVar5;
                            case 18:
                                byh.ah(0, str7, arrayList);
                                return new bsa(h(","));
                            case 19:
                                if (!arrayList.isEmpty()) {
                                    gwa gwaVar6 = new gwa();
                                    Iterator it4 = arrayList.iterator();
                                    while (it4.hasNext()) {
                                        gey aj11 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) it4.next());
                                        if (aj11 instanceof enl) {
                                            throw new IllegalStateException("Argument evaluation failed");
                                        }
                                        gwaVar6.r(gwaVar6.s(), aj11);
                                    }
                                    int s7 = gwaVar6.s();
                                    Iterator t5 = t();
                                    while (t5.hasNext()) {
                                        Integer num2 = (Integer) t5.next();
                                        gwaVar6.r(num2.intValue() + s7, g(num2.intValue()));
                                    }
                                    treeMap.clear();
                                    Iterator t6 = gwaVar6.t();
                                    while (t6.hasNext()) {
                                        Integer num3 = (Integer) t6.next();
                                        r(num3.intValue(), gwaVar6.g(num3.intValue()));
                                    }
                                }
                                return new hbz(Double.valueOf(s()));
                            default:
                                throw new IllegalArgumentException("Command not supported");
                        }
                    }
                    str8 = str8;
                }
                str4 = "unshift";
                Double valueOf3 = Double.valueOf(-1.0d);
                switch (str.hashCode()) {
                    case -1776922004:
                        break;
                    case -1354795244:
                        break;
                    case -1274492040:
                        break;
                    case -934873754:
                        break;
                    case -895859076:
                        break;
                    case -678635926:
                        break;
                    case -467511597:
                        break;
                    case -277637751:
                        break;
                    case 107868:
                        break;
                    case 111185:
                        break;
                    case 3267882:
                        break;
                    case 3452698:
                        break;
                    case 3536116:
                        break;
                    case 3536286:
                        break;
                    case 96891675:
                        break;
                    case 109407362:
                        break;
                    case 109526418:
                        break;
                    case 965561430:
                        break;
                    case 1099846370:
                        break;
                    case 1943291465:
                        break;
                }
                String str102 = ",";
                c3 = c2;
                TreeMap treeMap2 = this.f18854c;
                String str112 = str5;
                String str122 = str6;
                fdk fdkVar3 = null;
                gey geyVar4 = gey.o;
                switch (c3) {
                }
            }
        }
        obj = "reduce";
        str4 = "unshift";
        Double valueOf32 = Double.valueOf(-1.0d);
        switch (str.hashCode()) {
            case -1776922004:
                break;
            case -1354795244:
                break;
            case -1274492040:
                break;
            case -934873754:
                break;
            case -895859076:
                break;
            case -678635926:
                break;
            case -467511597:
                break;
            case -277637751:
                break;
            case 107868:
                break;
            case 111185:
                break;
            case 3267882:
                break;
            case 3452698:
                break;
            case 3536116:
                break;
            case 3536286:
                break;
            case 96891675:
                break;
            case 109407362:
                break;
            case 109526418:
                break;
            case 965561430:
                break;
            case 1099846370:
                break;
            case 1943291465:
                break;
        }
        String str1022 = ",";
        c3 = c2;
        TreeMap treeMap22 = this.f18854c;
        String str1122 = str5;
        String str1222 = str6;
        fdk fdkVar32 = null;
        gey geyVar42 = gey.o;
        switch (c3) {
        }
    }

    @Override // g.fb
    public final void a(String str, gey geyVar) {
        TreeMap treeMap = this.f18855d;
        if (geyVar == null) {
            treeMap.remove(str);
        } else {
            treeMap.put(str, geyVar);
        }
    }

    public final ArrayList e() {
        ArrayList arrayList = new ArrayList(s());
        for (int i = 0; i < s(); i++) {
            arrayList.add(g(i));
        }
        return arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof gwa)) {
            return false;
        }
        gwa gwaVar = (gwa) obj;
        if (s() != gwaVar.s()) {
            return false;
        }
        TreeMap treeMap = this.f18854c;
        if (treeMap.isEmpty()) {
            return gwaVar.f18854c.isEmpty();
        }
        for (int intValue = ((Integer) treeMap.firstKey()).intValue(); intValue <= ((Integer) treeMap.lastKey()).intValue(); intValue++) {
            if (!g(intValue).equals(gwaVar.g(intValue))) {
                return false;
            }
        }
        return true;
    }

    public final boolean f(int i) {
        if (i >= 0) {
            TreeMap treeMap = this.f18854c;
            if (i <= ((Integer) treeMap.lastKey()).intValue()) {
                return treeMap.containsKey(Integer.valueOf(i));
            }
        }
        throw new IndexOutOfBoundsException(awf.ac(i, "Out of bounds index: "));
    }

    public final gey g(int i) {
        gey geyVar;
        if (i < s()) {
            return (!f(i) || (geyVar = (gey) this.f18854c.get(Integer.valueOf(i))) == null) ? gey.o : geyVar;
        }
        throw new IndexOutOfBoundsException("Attempting to get element outside of current array");
    }

    public final String h(String str) {
        if (str == null) {
            str = "";
        }
        StringBuilder sb = new StringBuilder();
        if (!this.f18854c.isEmpty()) {
            for (int i = 0; i < s(); i++) {
                gey g2 = g(i);
                sb.append(str);
                if (!(g2 instanceof gdz) && !(g2 instanceof hee)) {
                    sb.append(g2.zzi());
                }
            }
            sb.delete(0, str.length());
        }
        return sb.toString();
    }

    public final int hashCode() {
        return this.f18854c.hashCode() * 31;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new bve(4, (Iterable) this);
    }

    public final void q(int i) {
        TreeMap treeMap = this.f18854c;
        int intValue = ((Integer) treeMap.lastKey()).intValue();
        if (i > intValue || i < 0) {
            return;
        }
        treeMap.remove(Integer.valueOf(i));
        if (i == intValue) {
            int i2 = i - 1;
            Integer valueOf = Integer.valueOf(i2);
            if (treeMap.containsKey(valueOf) || i2 < 0) {
                return;
            }
            treeMap.put(valueOf, gey.o);
            return;
        }
        while (true) {
            i++;
            if (i > ((Integer) treeMap.lastKey()).intValue()) {
                return;
            }
            Integer valueOf2 = Integer.valueOf(i);
            gey geyVar = (gey) treeMap.get(valueOf2);
            if (geyVar != null) {
                treeMap.put(Integer.valueOf(i - 1), geyVar);
                treeMap.remove(valueOf2);
            }
        }
    }

    public final void r(int i, gey geyVar) {
        if (i > 32468) {
            throw new IllegalStateException("Array too large");
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException(awf.ac(i, "Out of bounds index: "));
        }
        TreeMap treeMap = this.f18854c;
        if (geyVar == null) {
            treeMap.remove(Integer.valueOf(i));
        } else {
            treeMap.put(Integer.valueOf(i), geyVar);
        }
    }

    public final int s() {
        TreeMap treeMap = this.f18854c;
        if (treeMap.isEmpty()) {
            return 0;
        }
        return ((Integer) treeMap.lastKey()).intValue() + 1;
    }

    public final Iterator t() {
        return this.f18854c.keySet().iterator();
    }

    public final String toString() {
        return h(",");
    }

    @Override // g.gey
    public final gey zzd() {
        gwa gwaVar = new gwa();
        for (Map.Entry entry : this.f18854c.entrySet()) {
            boolean z = entry.getValue() instanceof fb;
            TreeMap treeMap = gwaVar.f18854c;
            if (z) {
                treeMap.put((Integer) entry.getKey(), (gey) entry.getValue());
            } else {
                treeMap.put((Integer) entry.getKey(), ((gey) entry.getValue()).zzd());
            }
        }
        return gwaVar;
    }

    @Override // g.fb
    public final gey zzf(String str) {
        gey geyVar;
        return "length".equals(str) ? new hbz(Double.valueOf(s())) : (!zzt(str) || (geyVar = (gey) this.f18855d.get(str)) == null) ? gey.o : geyVar;
    }

    @Override // g.gey
    public final Boolean zzg() {
        return Boolean.TRUE;
    }

    @Override // g.gey
    public final Double zzh() {
        TreeMap treeMap = this.f18854c;
        return treeMap.size() == 1 ? g(0).zzh() : treeMap.size() <= 0 ? Double.valueOf(0.0d) : Double.valueOf(Double.NaN);
    }

    @Override // g.gey
    public final String zzi() {
        return h(",");
    }

    @Override // g.gey
    public final Iterator zzl() {
        return new ky(this.f18854c.keySet().iterator(), this.f18855d.keySet().iterator());
    }

    @Override // g.fb
    public final boolean zzt(String str) {
        return "length".equals(str) || this.f18855d.containsKey(str);
    }
}
