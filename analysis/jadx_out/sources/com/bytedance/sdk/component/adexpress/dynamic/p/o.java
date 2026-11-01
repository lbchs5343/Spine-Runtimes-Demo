package com.bytedance.sdk.component.adexpress.dynamic.p;

import com.bytedance.sdk.component.adexpress.dynamic.p.d;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class o {
    public static float dq(float f2) {
        return (float) Math.ceil((f2 * 16.0f) / 16.0f);
    }

    public static List<d.dq> dq(float f2, List<d.dq> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<d.dq> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add((d.dq) it.next().clone());
        }
        Iterator it2 = arrayList.iterator();
        boolean z = true;
        int i = 0;
        int i2 = 0;
        while (it2.hasNext()) {
            d.dq dqVar = (d.dq) it2.next();
            if (dqVar.f1770d) {
                i = (int) (i + dqVar.dq);
            } else {
                i2 = (int) (i2 + dqVar.dq);
                z = false;
            }
        }
        if (!z || f2 <= i) {
            float f3 = i;
            float f4 = f2 < f3 ? f2 / f3 : 1.0f;
            float f5 = f2 > f3 ? (f2 - f3) / i2 : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            if (f5 > 1.0f) {
                ArrayList arrayList2 = new ArrayList();
                Iterator it3 = arrayList.iterator();
                boolean z2 = false;
                while (it3.hasNext()) {
                    d.dq dqVar2 = (d.dq) it3.next();
                    if (!dqVar2.f1770d) {
                        float f6 = dqVar2.ox;
                        if (f6 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && dqVar2.dq * f5 > f6) {
                            dqVar2.dq = f6;
                            dqVar2.f1770d = true;
                            z2 = true;
                        }
                    }
                    arrayList2.add(dqVar2);
                }
                if (z2) {
                    return dq(f2, arrayList2);
                }
            }
            Iterator it4 = arrayList.iterator();
            int i3 = 0;
            while (it4.hasNext()) {
                d.dq dqVar3 = (d.dq) it4.next();
                if (dqVar3.f1770d) {
                    dqVar3.dq = dq(dqVar3.dq * f4);
                } else {
                    dqVar3.dq = dq(dqVar3.dq * f5);
                }
                i3 = (int) (i3 + dqVar3.dq);
            }
            float f7 = i3;
            if (f7 < f2) {
                float f8 = f2 - f7;
                for (int i4 = 0; i4 < arrayList.size() && f8 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT; i4 = (i4 + 1) % arrayList.size()) {
                    d.dq dqVar4 = (d.dq) arrayList.get(i4);
                    if ((f2 < f3 && dqVar4.f1770d) || (f2 > f3 && !dqVar4.f1770d)) {
                        dqVar4.dq += 0.0625f;
                        f8 -= 0.0625f;
                    }
                }
            }
        }
        return arrayList;
    }
}
