package com.bytedance.sdk.openadsdk.core.q.ox;

import android.text.TextUtils;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    public long f3416d;
    public Map<String, dq> dq = new ConcurrentHashMap();
    public String ox;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        public String f3417d;
        public String dq;
        public byte[] ia;
        public long iw;
        private Map<String, String> kk = new HashMap();
        public String mn;
        private long o;
        public long ox;
        public String p;
        public String s;

        public void d() {
            this.ia = null;
            this.o = 0L;
        }

        public long dq() {
            long j = this.o;
            if (j > 0) {
                return j;
            }
            if (this.ia != null) {
                this.o = r0.length;
            }
            return this.o;
        }

        public void dq(String str, String str2) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                return;
            }
            this.kk.put(str, str2);
        }

        public Map<String, String> ox() {
            return this.kk;
        }
    }

    public d(String str) {
        this.ox = str;
    }

    public void dq() {
        for (Map.Entry<String, dq> entry : this.dq.entrySet()) {
            if (entry != null && entry.getValue() != null) {
                entry.getValue().d();
            }
        }
        this.f3416d = 0L;
    }

    public void dq(dq dqVar) {
        if (dqVar == null) {
            return;
        }
        this.f3416d = dqVar.dq() + this.f3416d;
    }
}
