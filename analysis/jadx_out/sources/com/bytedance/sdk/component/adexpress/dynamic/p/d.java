package com.bytedance.sdk.component.adexpress.dynamic.p;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bytedance.sdk.component.adexpress.d.mp;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.awf;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d {
    private String ia;
    private int iw;
    private mp kk;
    private double mn;
    private double s;
    public Map<String, ox> dq = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public Map<String, ox> f1768d = new HashMap();
    public Map<String, ox> ox = new HashMap();
    private double p = Math.random();

    /* renamed from: com.bytedance.sdk.component.adexpress.dynamic.p.d$d, reason: collision with other inner class name */
    public static class C0106d {

        /* renamed from: d, reason: collision with root package name */
        int f1769d;
        float dq;
        int ox;
        double p;
        float s;

        public static JSONObject dq(C0106d c0106d) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("fontSize", c0106d.dq);
                jSONObject.put("letterSpacing", c0106d.f1769d);
                jSONObject.put("lineHeight", c0106d.p);
                jSONObject.put("maxWidth", c0106d.s);
                jSONObject.put("fontWeight", c0106d.ox);
                return jSONObject;
            } catch (JSONException e2) {
                e2.printStackTrace();
                return jSONObject;
            }
        }
    }

    public static class dq implements Cloneable {

        /* renamed from: d, reason: collision with root package name */
        boolean f1770d;
        float dq;
        float ox;

        public Object clone() {
            try {
                return (dq) super.clone();
            } catch (CloneNotSupportedException e2) {
                e2.printStackTrace();
                return null;
            }
        }
    }

    public static class ox {

        /* renamed from: d, reason: collision with root package name */
        float f1771d;
        float dq;

        public ox() {
        }

        public ox(float f2, float f3) {
            this.dq = f2;
            this.f1771d = f3;
        }

        public String toString() {
            return "UnitSize{width=" + this.dq + ", height=" + this.f1771d + '}';
        }
    }

    public d(double d2, int i, double d3, String str, mp mpVar) {
        this.s = d2;
        this.iw = i;
        this.mn = d3;
        this.ia = str;
        this.kk = mpVar;
    }

    private ox d(List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> list, float f2, float f3) {
        ox dq2 = dq(list);
        if (dq2 != null && (dq2.dq != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || dq2.f1771d != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT)) {
            return dq2;
        }
        ox ox2 = ox(list, f2, f3);
        dq(list, ox2);
        return ox2;
    }

    private boolean d(com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar) {
        if (iaVar == null) {
            return false;
        }
        if (TextUtils.equals(iaVar.o().s().h(), "flex")) {
            return true;
        }
        return ox(iaVar);
    }

    private boolean d(List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> list) {
        List<List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia>> fw;
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> it = list.iterator();
        while (it.hasNext()) {
            if (TextUtils.equals(it.next().o().s().ji(), "flex")) {
                return true;
            }
        }
        while (true) {
            boolean z = false;
            for (com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar : list) {
                if (TextUtils.equals(iaVar.o().s().ji(), LiveConfigKey.AUTO) && (fw = iaVar.fw()) != null) {
                    int i = 0;
                    for (List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> list2 : fw) {
                        i++;
                        if (!d(list2)) {
                            break;
                        }
                        if (i == list2.size()) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }
    }

    private ox dq(String str, C0106d c0106d, boolean z, boolean z2, int i, com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar) {
        return no.dq(str, iaVar.o().getType(), C0106d.dq(c0106d).toString(), z, z2, i, iaVar, this.s, this.iw, this.mn, this.ia, this.kk);
    }

    private void dq(com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar, ox oxVar) {
        this.dq.put(s(iaVar), oxVar);
    }

    private void dq(List<List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia>> list, float f2, float f3) {
        if (list == null || list.size() <= 0) {
            return;
        }
        Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia>> it = list.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (dq(it.next(), false)) {
                z = true;
            }
        }
        ArrayList arrayList = new ArrayList();
        for (List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> list2 : list) {
            dq dqVar = new dq();
            boolean dq2 = dq(list2, !z);
            dqVar.dq = dq2 ? 1.0f : d(list2, f2, f3).f1771d;
            dqVar.f1770d = !dq2;
            arrayList.add(dqVar);
        }
        List<dq> dq3 = o.dq(f3, arrayList);
        for (int i = 0; i < list.size(); i++) {
            if (((dq) arrayList.get(i)).dq != dq3.get(i).dq) {
                List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> list3 = list.get(i);
                ox(list3);
                d(list3, f2, dq3.get(i).dq);
            }
        }
    }

    private void dq(List<dq> list, float f2, List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> list2) {
        float f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        for (dq dqVar : list) {
            if (dqVar.f1770d) {
                f3 += dqVar.dq;
            }
        }
        if (f3 > f2) {
            int i = 0;
            for (int i2 = 0; i2 < list2.size(); i2++) {
                if (list.get(i2).f1770d && list2.get(i2).le()) {
                    i++;
                }
            }
            if (i > 0) {
                float ceil = (float) (Math.ceil(((f3 - f2) / i) * 1000.0f) / 1000.0d);
                for (int i3 = 0; i3 < list2.size(); i3++) {
                    dq dqVar2 = list.get(i3);
                    if (dqVar2.f1770d && list2.get(i3).le()) {
                        dqVar2.dq -= ceil;
                    }
                }
            }
        }
    }

    private void dq(List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> list, ox oxVar) {
        this.f1768d.put(p(list), oxVar);
    }

    private boolean dq(List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> list, boolean z) {
        for (com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar : list) {
            com.bytedance.sdk.component.adexpress.dynamic.ox.iw s = iaVar.o().s();
            String h = s.h();
            if (TextUtils.equals(h, "flex") || (z && ((TextUtils.equals(s.ji(), "flex") && TextUtils.equals(s.h(), "scale") && com.bytedance.sdk.component.adexpress.dynamic.ox.s.dq.get(iaVar.o().getType()).intValue() == 7) || TextUtils.equals(h, "flex")))) {
                return true;
            }
        }
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> it = list.iterator();
        while (it.hasNext()) {
            if (ox(it.next())) {
                return true;
            }
        }
        return false;
    }

    private ox iw(com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar, float f2, float f3) {
        com.bytedance.sdk.component.adexpress.dynamic.ox.iw s = iaVar.o().s();
        float cd = s.cd();
        int yy = s.yy();
        double xz = s.xz();
        int ds = s.ds();
        boolean ob = s.ob();
        boolean vw = s.vw();
        int l = s.l();
        C0106d c0106d = new C0106d();
        c0106d.dq = cd;
        c0106d.f1769d = yy;
        c0106d.ox = ds;
        c0106d.p = xz;
        c0106d.s = f2;
        return dq(iaVar.o().d(), c0106d, ob, vw, l, iaVar);
    }

    private ox ox(List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> list, float f2, float f3) {
        float f4;
        p(list);
        ox oxVar = new ox();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar : list) {
            com.bytedance.sdk.component.adexpress.dynamic.ox.iw s = iaVar.o().s();
            if (s.ha() == 1 || s.ha() == 2) {
                arrayList.add(iaVar);
            }
            if (s.ha() != 1 && s.ha() != 2) {
                arrayList2.add(iaVar);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ox((com.bytedance.sdk.component.adexpress.dynamic.ox.ia) it.next(), f2, f3);
        }
        if (arrayList2.size() <= 0) {
            return oxVar;
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(Float.valueOf(ox((com.bytedance.sdk.component.adexpress.dynamic.ox.ia) it2.next(), f2, f3).dq));
        }
        ArrayList arrayList4 = new ArrayList();
        int i = 0;
        while (true) {
            int size = arrayList2.size();
            f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            if (i >= size) {
                break;
            }
            com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar2 = (com.bytedance.sdk.component.adexpress.dynamic.ox.ia) arrayList2.get(i);
            String ji = iaVar2.o().s().ji();
            float ia = iaVar2.ia();
            boolean equals = TextUtils.equals(ji, "flex");
            if (TextUtils.equals(ji, LiveConfigKey.AUTO)) {
                List<List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia>> fw = iaVar2.fw();
                if (fw != null && fw.size() > 0) {
                    Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia>> it3 = fw.iterator();
                    while (it3.hasNext()) {
                        if (d(it3.next())) {
                            equals = true;
                            break;
                        }
                    }
                }
                equals = false;
            }
            dq dqVar = new dq();
            if (!equals) {
                ia = ((Float) arrayList3.get(i)).floatValue();
            }
            dqVar.dq = ia;
            dqVar.f1770d = !equals;
            if (equals) {
                f4 = ((Float) arrayList3.get(i)).floatValue();
            }
            dqVar.ox = f4;
            arrayList4.add(dqVar);
            i++;
        }
        dq(arrayList4, f2, arrayList2);
        List<dq> dq2 = o.dq(f2, arrayList4);
        float f5 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            f5 += dq2.get(i2).dq;
            if (((Float) arrayList3.get(i2)).floatValue() != dq2.get(i2).dq) {
                p((com.bytedance.sdk.component.adexpress.dynamic.ox.ia) arrayList2.get(i2));
            }
        }
        Iterator it4 = arrayList2.iterator();
        int i3 = 0;
        boolean z = false;
        while (true) {
            if (!it4.hasNext()) {
                break;
            }
            i3++;
            if (!d((com.bytedance.sdk.component.adexpress.dynamic.ox.ia) it4.next())) {
                z = false;
                break;
            }
            if (i3 == arrayList2.size()) {
                z = true;
            }
        }
        if (z) {
            f4 = f3;
        }
        ArrayList arrayList5 = new ArrayList();
        for (int i4 = 0; i4 < arrayList2.size(); i4++) {
            com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar3 = (com.bytedance.sdk.component.adexpress.dynamic.ox.ia) arrayList2.get(i4);
            ox ox2 = ox(iaVar3, dq2.get(i4).dq, f3);
            if (!d(iaVar3)) {
                f4 = Math.max(f4, ox2.f1771d);
            }
            arrayList5.add(ox2);
        }
        ArrayList arrayList6 = new ArrayList();
        Iterator it5 = arrayList5.iterator();
        while (it5.hasNext()) {
            arrayList6.add(Float.valueOf(((ox) it5.next()).f1771d));
        }
        if (!z) {
            for (int i5 = 0; i5 < arrayList2.size(); i5++) {
                com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar4 = (com.bytedance.sdk.component.adexpress.dynamic.ox.ia) arrayList2.get(i5);
                if (d(iaVar4) && ((Float) arrayList6.get(i5)).floatValue() != f4) {
                    p(iaVar4);
                    ox(iaVar4, dq2.get(i5).dq, f4);
                }
            }
        }
        oxVar.dq = f5;
        oxVar.f1771d = f4;
        return oxVar;
    }

    private void ox(List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f1768d.remove(p(list));
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> it = list.iterator();
        while (it.hasNext()) {
            p(it.next());
        }
    }

    private boolean ox(com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar) {
        List<List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia>> fw;
        if (!iaVar.cd() && TextUtils.equals(iaVar.o().s().h(), LiveConfigKey.AUTO) && (fw = iaVar.fw()) != null && fw.size() > 0) {
            if (fw.size() == 1) {
                Iterator<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> it = fw.get(0).iterator();
                while (it.hasNext()) {
                    if (!d(it.next())) {
                        return false;
                    }
                }
                return true;
            }
            Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia>> it2 = fw.iterator();
            while (it2.hasNext()) {
                if (dq(it2.next(), true)) {
                    return true;
                }
            }
        }
        return false;
    }

    private String p(List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> list) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            String ox2 = list.get(i).ox();
            if (i < list.size() - 1) {
                sb.append(ox2);
                sb.append("-");
            } else {
                sb.append(ox2);
            }
        }
        return sb.toString();
    }

    private void p(com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar) {
        this.dq.remove(s(iaVar));
        List<List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia>> fw = iaVar.fw();
        if (fw == null || fw.size() <= 0) {
            return;
        }
        Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia>> it = fw.iterator();
        while (it.hasNext()) {
            ox(it.next());
        }
    }

    private ox s(com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar, float f2, float f3) {
        String str = iaVar.ox() + "_" + f2 + "_" + f3;
        if (this.ox.containsKey(str)) {
            return this.ox.get(str);
        }
        ox iw = iw(iaVar, f2, f3);
        this.ox.put(str, iw);
        return iw;
    }

    private String s(com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar) {
        return iaVar.ox();
    }

    public ox d(com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar, float f2, float f3) {
        ox oxVar = new ox();
        if (iaVar.o().s() == null) {
            return oxVar;
        }
        ox s = s(iaVar, f2, f3);
        float f4 = s.dq;
        float f5 = s.f1771d;
        oxVar.dq = Math.min(f4, f2);
        oxVar.f1771d = Math.min(f5, f3);
        return oxVar;
    }

    public ox dq(com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar) {
        return this.dq.get(s(iaVar));
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ox dq(com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar, float f2, float f3) {
        float f4;
        if ((!TextUtils.isEmpty(iaVar.o().d()) || iaVar.o().s().ws() != null) && !awf.h(iaVar, "creative-playable-bait")) {
            float ia = iaVar.ia();
            float kk = iaVar.kk();
            com.bytedance.sdk.component.adexpress.dynamic.ox.iw s = iaVar.o().s();
            String ji = s.ji();
            String h = s.h();
            float mp = iaVar.mp();
            float q = iaVar.q();
            float jy = iaVar.jy();
            float f5 = iaVar.f();
            if (TextUtils.equals(ji, "fixed")) {
                f2 = Math.min(ia, f2);
                if (TextUtils.equals(h, LiveConfigKey.AUTO)) {
                    f4 = d(iaVar, f2 - jy, f3 - f5).f1771d;
                    kk = f4 + f5;
                }
                if (TextUtils.equals(h, "scale")) {
                    float round = Math.round((f2 - mp) / kk) + q;
                    if (round > f3) {
                        f2 = Math.round((f3 - q) * kk) + mp;
                    } else {
                        f3 = round;
                    }
                } else if (TextUtils.equals(h, "fixed")) {
                    f3 = Math.min(kk + q, f3);
                } else if (!TextUtils.equals(h, "flex")) {
                    f3 = kk;
                }
                ox oxVar = new ox();
                oxVar.dq = f2;
                oxVar.f1771d = f3;
                return oxVar;
            }
            if (TextUtils.equals(ji, LiveConfigKey.AUTO)) {
                ox d2 = d(iaVar, f2 - jy, f3 - f5);
                f2 = d2.dq + jy;
                if (TextUtils.equals(h, LiveConfigKey.AUTO)) {
                    f4 = d2.f1771d;
                    kk = f4 + f5;
                }
                if (TextUtils.equals(h, "scale")) {
                }
                ox oxVar2 = new ox();
                oxVar2.dq = f2;
                oxVar2.f1771d = f3;
                return oxVar2;
            }
            if (!TextUtils.equals(ji, "flex")) {
                f2 = ia;
            } else if (TextUtils.equals(h, LiveConfigKey.AUTO)) {
                f4 = d(iaVar, f2 - jy, f3 - f5).f1771d;
                kk = f4 + f5;
            }
            if (TextUtils.equals(h, "scale")) {
            }
            ox oxVar22 = new ox();
            oxVar22.dq = f2;
            oxVar22.f1771d = f3;
            return oxVar22;
        }
        return new ox(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
    }

    public ox dq(List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> list) {
        return this.f1768d.get(p(list));
    }

    public void dq() {
        this.ox.clear();
        this.dq.clear();
        this.f1768d.clear();
    }

    public ox ox(com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar, float f2, float f3) {
        if (iaVar == null) {
            return null;
        }
        ox dq2 = dq(iaVar);
        if (dq2 != null && (dq2.dq != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || dq2.f1771d != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT)) {
            return dq2;
        }
        ox p = p(iaVar, f2, f3);
        dq(iaVar, p);
        return p;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x011a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ox p(com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar, float f2, float f3) {
        float min;
        float f4;
        float f5;
        ox oxVar = new ox();
        float f6 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        if (f3 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            oxVar.dq = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            oxVar.f1771d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            return oxVar;
        }
        if (iaVar.cd()) {
            return dq(iaVar, f2, f3);
        }
        float ia = iaVar.ia();
        float kk = iaVar.kk();
        float jy = iaVar.jy();
        float f7 = iaVar.f();
        com.bytedance.sdk.component.adexpress.dynamic.ox.iw s = iaVar.o().s();
        String ji = s.ji();
        String h = s.h();
        float min2 = ((TextUtils.equals(ji, "flex") || TextUtils.equals(ji, LiveConfigKey.AUTO)) ? f2 : Math.min(ia, f2)) - jy;
        if (!TextUtils.equals(h, "scale")) {
            if (!TextUtils.equals(h, LiveConfigKey.AUTO) && !TextUtils.equals(h, "flex")) {
                min = Math.min(kk, f3);
                float f8 = min - f7;
                List<List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia>> fw = iaVar.fw();
                float f9 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                float f10 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                while (r14.hasNext()) {
                }
                float f11 = f6;
                float f12 = min2;
                float f13 = jy;
                if (!TextUtils.equals(ji, LiveConfigKey.AUTO)) {
                }
                if (TextUtils.equals(h, LiveConfigKey.AUTO)) {
                }
                oxVar.dq = Math.min(f4 + f13, f2);
                oxVar.f1771d = Math.min(f8 + f7, f3);
                return oxVar;
            }
            min = f3;
            float f82 = min - f7;
            List<List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia>> fw2 = iaVar.fw();
            float f92 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            float f102 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            while (r14.hasNext()) {
            }
            float f112 = f6;
            float f122 = min2;
            float f132 = jy;
            if (!TextUtils.equals(ji, LiveConfigKey.AUTO)) {
            }
            if (TextUtils.equals(h, LiveConfigKey.AUTO)) {
            }
            oxVar.dq = Math.min(f4 + f132, f2);
            oxVar.f1771d = Math.min(f82 + f7, f3);
            return oxVar;
        }
        min = Math.round(min2 / kk) + f7;
        if (min > f3) {
            min2 = Math.round((f3 - f7) * kk);
            min = f3;
        }
        float f822 = min - f7;
        List<List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia>> fw22 = iaVar.fw();
        float f922 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float f1022 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        for (List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> list : fw22) {
            float f14 = f6;
            float f15 = jy;
            ox d2 = d(list, min2, f822);
            if (d(list)) {
                f5 = f14 + 1.0f;
            } else {
                f922 = Math.max(f922, d2.dq);
                f5 = f14;
            }
            float f16 = f5;
            float f17 = min2;
            f1022 = iaVar.o().getType().equals("carousel") ? Math.max(iaVar.kk(), d2.f1771d) : f1022 + d2.f1771d;
            jy = f15;
            f6 = f16;
            min2 = f17;
        }
        float f1122 = f6;
        float f1222 = min2;
        float f1322 = jy;
        if (!TextUtils.equals(ji, LiveConfigKey.AUTO)) {
            f4 = f1222;
        } else if (f1122 == fw22.size()) {
            f4 = f2;
        } else {
            for (List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> list2 : fw22) {
                ox(list2);
                d(list2, f922, f822);
            }
            f4 = f922;
        }
        if (TextUtils.equals(h, LiveConfigKey.AUTO)) {
            if (f1022 <= f3) {
                f822 = f1022;
            } else {
                dq(fw22, f4, f822);
            }
        } else if ((TextUtils.equals(h, "fixed") || TextUtils.equals(h, "flex")) && f822 < f1022) {
            dq(fw22, f4, f822);
        }
        oxVar.dq = Math.min(f4 + f1322, f2);
        oxVar.f1771d = Math.min(f822 + f7, f3);
        return oxVar;
    }
}
