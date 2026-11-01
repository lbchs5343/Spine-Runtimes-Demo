package com.bytedance.msdk.core.kk;

import android.text.TextUtils;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class o {
    private static final String dq = "TTMediationSDK_o";

    /* renamed from: d, reason: collision with root package name */
    private Map<String, kk> f951d;
    private com.bytedance.msdk.s.dq.ox<kk> ox;

    public static class dq {
        private static o dq = new o();
    }

    private o() {
        this.ox = new com.bytedance.msdk.s.dq.p(com.bytedance.msdk.core.dq.getContext());
        this.f951d = new ConcurrentHashMap();
    }

    public static o dq() {
        return dq.dq;
    }

    public kk d(String str) {
        if (this.ox == null) {
            return null;
        }
        Map<String, kk> map = this.f951d;
        kk kkVar = map != null ? map.get(str) : null;
        if (kkVar != null) {
            return kkVar;
        }
        kk query = this.ox.query(str);
        if (query != null) {
            this.f951d.put(query.d(), query);
        }
        return query;
    }

    public kk d(String str, String str2) {
        kk kkVar = null;
        if (this.ox == null) {
            return null;
        }
        Map<String, kk> map = this.f951d;
        if (map != null) {
            kkVar = map.get(str + "_" + str2);
        }
        if (kkVar != null) {
            return kkVar;
        }
        kk query = this.ox.query(str, str2);
        if (query != null) {
            this.f951d.put(query.p(), query);
        }
        return query;
    }

    public void dq(kk kkVar) {
        if (this.ox == null || TextUtils.isEmpty(kkVar.o())) {
            return;
        }
        Map<String, kk> map = this.f951d;
        if (map != null) {
            map.put(kkVar.p(), kkVar);
        }
        this.ox.d(kkVar);
    }

    public void dq(String str) {
        if (this.ox != null) {
            Map<String, kk> map = this.f951d;
            if (map != null) {
                map.remove(str);
            }
            this.ox.delete(str);
        }
    }

    public void dq(String str, long j) {
        if (this.ox != null) {
            Map<String, kk> map = this.f951d;
            kk kkVar = map != null ? map.get(str) : null;
            if (kkVar != null) {
                kkVar.dq(j);
            }
            this.ox.dq(str, j);
        }
    }

    public void dq(String str, String str2) {
        if (this.ox != null) {
            Map<String, kk> map = this.f951d;
            if (map != null) {
                map.remove(str + "_" + str2);
            }
            this.ox.delete(str, str2);
        }
    }

    public void dq(String str, String str2, long j) {
        kk kkVar;
        if (this.ox != null) {
            Map<String, kk> map = this.f951d;
            if (map != null) {
                kkVar = map.get(str + "_" + str2);
            } else {
                kkVar = null;
            }
            if (kkVar != null) {
                kkVar.dq(j);
            }
            this.ox.dq(str, str2, j);
        }
    }
}
