package com.bykv.vk.openvk.preload.geckox.q;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class d {
    private static final Map<Long, d> dq = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    private final Map<String, com.bykv.vk.openvk.preload.geckox.q.dq.d> f672d = new HashMap();

    public static d dq(long j) {
        d dVar;
        Map<Long, d> map = dq;
        synchronized (map) {
            try {
                dVar = map.get(Long.valueOf(j));
                if (dVar == null) {
                    dVar = new d();
                    map.put(Long.valueOf(j), dVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return dVar;
    }

    public final com.bykv.vk.openvk.preload.geckox.q.dq.d dq(String str) {
        com.bykv.vk.openvk.preload.geckox.q.dq.d dVar;
        synchronized (this.f672d) {
            try {
                dVar = this.f672d.get(str);
                if (dVar == null) {
                    dVar = new com.bykv.vk.openvk.preload.geckox.q.dq.d();
                    this.f672d.put(str, dVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return dVar;
    }

    public final List<com.bykv.vk.openvk.preload.geckox.q.dq.d> dq() {
        ArrayList arrayList;
        synchronized (this.f672d) {
            arrayList = new ArrayList(this.f672d.values());
        }
        return arrayList;
    }
}
