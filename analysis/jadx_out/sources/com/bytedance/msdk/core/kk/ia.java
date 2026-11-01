package com.bytedance.msdk.core.kk;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ia {
    private static final String dq = "TTMediationSDK_ia";

    /* renamed from: d, reason: collision with root package name */
    private Map<String, mn> f942d;
    private com.bytedance.msdk.s.dq.dq<mn> ox;

    public static class dq {
        private static ia dq = new ia();
    }

    private ia() {
        this.ox = new com.bytedance.msdk.s.dq.d(com.bytedance.msdk.core.dq.getContext());
        this.f942d = new ConcurrentHashMap();
    }

    public static ia dq() {
        return dq.dq;
    }

    public mn d(String str) {
        if (this.ox != null) {
            Map<String, mn> map = this.f942d;
            mn mnVar = map != null ? map.get(str) : null;
            if (mnVar != null) {
                return mnVar;
            }
            mn query = this.ox.query(str);
            if (query != null) {
                Map<String, mn> map2 = this.f942d;
                if (map2 != null) {
                    map2.put(query.p(), query);
                }
                return query;
            }
        }
        return null;
    }

    public mn d(String str, String str2) {
        mn mnVar;
        if (this.ox != null) {
            Map<String, mn> map = this.f942d;
            if (map != null) {
                mnVar = map.get(str + "_" + str2);
            } else {
                mnVar = null;
            }
            if (mnVar != null) {
                return mnVar;
            }
            mn query = this.ox.query(str, str2);
            if (query != null) {
                Map<String, mn> map2 = this.f942d;
                if (map2 != null) {
                    map2.put(query.p(), query);
                }
                return query;
            }
        }
        return null;
    }

    public void d(mn mnVar) {
        if (this.ox != null) {
            Map<String, mn> map = this.f942d;
            if (map != null) {
                map.put(mnVar.p(), mnVar);
            }
            this.ox.dq(mnVar);
        }
    }

    public void dq(mn mnVar) {
        s sVar;
        mn d2 = mnVar.dq() ? d(mnVar.d(), mnVar.ox()) : d(mnVar.d());
        if (d2 == null) {
            if (this.ox != null) {
                Map<String, mn> map = this.f942d;
                if (map != null) {
                    map.put(mnVar.p(), mnVar);
                }
                this.ox.d(mnVar);
                return;
            }
            return;
        }
        HashMap hashMap = new HashMap();
        for (s sVar2 : d2.no()) {
            hashMap.put(sVar2.ox(), sVar2);
        }
        for (s sVar3 : mnVar.no()) {
            if (hashMap.containsKey(sVar3.ox()) && (sVar = (s) hashMap.get(sVar3.ox())) != null) {
                sVar3.dq(sVar);
            }
        }
        Map<String, mn> map2 = this.f942d;
        if (map2 != null) {
            map2.put(mnVar.p(), mnVar);
        }
        d(mnVar);
    }

    public void dq(mn mnVar, String str, int i) {
        if (this.ox != null) {
            mnVar.dq(str, i);
            Map<String, mn> map = this.f942d;
            if (map != null) {
                map.put(mnVar.p(), mnVar);
            }
            this.ox.dq(mnVar);
        }
    }

    public void dq(mn mnVar, String str, long j) {
        if (this.ox != null) {
            mnVar.dq(str, j);
            Map<String, mn> map = this.f942d;
            if (map != null) {
                map.put(mnVar.p(), mnVar);
            }
            this.ox.dq(mnVar);
        }
    }

    public void dq(String str) {
        if (this.ox != null) {
            Map<String, mn> map = this.f942d;
            if (map != null) {
                map.remove(str);
            }
            this.ox.delete(str);
        }
    }

    public void dq(String str, String str2) {
        if (this.ox != null) {
            Map<String, mn> map = this.f942d;
            if (map != null) {
                map.remove(str + "_" + str2);
            }
            this.ox.delete(str, str2);
        }
    }
}
