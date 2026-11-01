package com.bytedance.msdk.core.fw;

import android.text.TextUtils;
import com.bytedance.msdk.core.no.d;
import com.bytedance.msdk.core.no.no;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class dq {
    public static d dq(d dVar, String str) {
        if (dVar == null || TextUtils.isEmpty(str) || dVar.t() == null || dVar.t().size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<no> it = dVar.t().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            no next = it.next();
            if (str.equals(next.cd())) {
                arrayList.add(next.s());
                break;
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        no noVar = (no) arrayList.get(0);
        if (noVar != null && noVar.n() && !MediationConstant.ADN_PANGLE.equals(noVar.jy())) {
            Iterator<no> it2 = dVar.t().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                no next2 = it2.next();
                if (next2.n() && MediationConstant.ADN_PANGLE.equals(next2.jy())) {
                    arrayList.add(next2.s());
                    break;
                }
            }
        }
        d jy = dVar.jy();
        if (jy.no()) {
            jy.d(arrayList);
        } else {
            jy.dq(arrayList);
        }
        no noVar2 = (no) arrayList.get(0);
        noVar2.s(0);
        if (noVar2.gh() == 0) {
            jy.p(noVar2.k());
        }
        if (noVar2.gh() == 2) {
            jy.dq(true);
        }
        if (noVar2.gh() == 1 || noVar2.gh() == 3) {
            jy.d(true);
        }
        jy.ig(0);
        return jy;
    }

    public static String dq(String str) {
        try {
            if (!TextUtils.isEmpty(str) && str.startsWith("gm_test_slot_")) {
                return str.substring(13);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }
}
