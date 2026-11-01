package com.bytedance.msdk.core.p;

import android.text.TextUtils;
import com.bytedance.msdk.core.no.no;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class dq {
    public static Map<String, C0060dq> dq = new ConcurrentHashMap();

    /* renamed from: com.bytedance.msdk.core.p.dq$dq, reason: collision with other inner class name */
    public static class C0060dq {

        /* renamed from: d, reason: collision with root package name */
        String f1005d;
        String dq;
        double ox;
        Map<String, String> p;

        public C0060dq(String str, String str2, double d2, Map<String, String> map) {
            this.dq = str2;
            this.ox = d2;
            this.p = map;
            this.f1005d = str;
        }
    }

    public static void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.core.no.d dVar2, List<com.bytedance.msdk.d.s> list, List<com.bytedance.msdk.d.s> list2) {
        HashMap hashMap;
        com.bytedance.msdk.d.s sVar;
        if (dVar == null || dVar2 == null || list == null || list.size() == 0 || !dVar.er() || !dq(dVar2)) {
            return;
        }
        Iterator<com.bytedance.msdk.d.s> it = list.iterator();
        while (true) {
            hashMap = null;
            if (!it.hasNext()) {
                sVar = null;
                break;
            }
            sVar = it.next();
            if (sVar != null && MediationConstant.ADN_BAIDU.equals(sVar.m())) {
                break;
            }
        }
        if (sVar == null) {
            sVar = list.get(0);
        }
        if (sVar != null) {
            if (com.bytedance.msdk.core.dq.d().ha() && (list2 != null || list2.size() != 0)) {
                hashMap = new HashMap();
                for (com.bytedance.msdk.d.s sVar2 : list2) {
                    hashMap.put(sVar2.b(), sVar2.iw());
                }
            }
            dq.put(dVar2.c(), new C0060dq(sVar.b(), sVar.m(), sVar.dk(), hashMap));
        }
    }

    public static void dq(com.bytedance.msdk.api.dq.d dVar, no noVar, Map<String, Object> map) {
        C0060dq c0060dq;
        if (dVar == null || noVar == null || map == null || !noVar.op() || !MediationConstant.ADN_BAIDU.equals(noVar.jy()) || (c0060dq = dq.get(dVar.k())) == null) {
            return;
        }
        map.put(MediationConstant.BIDDING_WIN_ADN, c0060dq.dq);
        map.put(MediationConstant.BIDDING_WIN_PRICE, Double.valueOf(c0060dq.ox));
        boolean ha = com.bytedance.msdk.core.dq.d().ha();
        map.put(MediationConstant.BIDDING_IS_OPEN_ECPM, Boolean.valueOf(ha));
        if (ha) {
            map.put(MediationConstant.BIDDING_REQUEST_ID_MAP, c0060dq.p);
            map.put(MediationConstant.BIDDING_WIN_ADN_ID, c0060dq.f1005d);
        }
    }

    private static boolean dq(com.bytedance.msdk.core.no.d dVar) {
        if (dVar == null) {
            return false;
        }
        for (no noVar : dVar.t()) {
            if (TextUtils.equals(noVar.jy(), MediationConstant.ADN_BAIDU) && noVar.op()) {
                return true;
            }
        }
        return false;
    }
}
