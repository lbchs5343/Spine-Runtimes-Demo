package com.bytedance.sdk.openadsdk.core.q.ox;

import android.text.TextUtils;
import android.util.LruCache;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.u;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes3.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private static volatile dq f3418d;
    private CopyOnWriteArrayList<String> ox = new CopyOnWriteArrayList<>();
    private volatile LruCache<String, ox> dq = new LruCache<String, ox>(20) { // from class: com.bytedance.sdk.openadsdk.core.q.ox.dq.1
        @Override // android.util.LruCache
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public int sizeOf(String str, ox oxVar) {
            return 1;
        }

        @Override // android.util.LruCache
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public void entryRemoved(boolean z, String str, ox oxVar, ox oxVar2) {
            super.entryRemoved(z, str, oxVar, oxVar2);
            try {
                if (dq.this.ox != null) {
                    dq.this.ox.remove(str);
                }
            } catch (Exception unused) {
            }
        }
    };

    private dq() {
    }

    public static dq dq() {
        if (f3418d == null) {
            synchronized (dq.class) {
                try {
                    if (f3418d == null) {
                        f3418d = new dq();
                    }
                } finally {
                }
            }
        }
        return f3418d;
    }

    public void d() {
        try {
            this.dq.evictAll();
            this.ox.clear();
        } catch (Throwable unused) {
        }
    }

    public d dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            ox oxVar = this.dq == null ? null : this.dq.get(str);
            if (oxVar == null) {
                return null;
            }
            return oxVar.dq;
        } catch (Exception unused) {
            return null;
        }
    }

    public ox dq(String str, long j) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            ox oxVar = this.dq.get(str);
            if (oxVar != null) {
                return oxVar;
            }
            ox oxVar2 = new ox(str);
            oxVar2.dq(j);
            this.dq.put(str, oxVar2);
            this.ox.add(str);
            return oxVar2;
        } catch (Throwable unused) {
            return null;
        }
    }

    public void dq(j jVar) {
        ox dq;
        try {
            if (!u.ox(jVar) || (dq = dq().dq(u.dq(jVar), u.p(jVar))) == null) {
                return;
            }
            dq.dq(jVar);
        } catch (Throwable unused) {
        }
    }

    public void ox() {
        ox oxVar;
        try {
            Iterator<String> it = this.ox.iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next != null && (oxVar = this.dq.get(next)) != null) {
                    oxVar.d();
                }
            }
        } catch (Throwable unused) {
        }
    }
}
