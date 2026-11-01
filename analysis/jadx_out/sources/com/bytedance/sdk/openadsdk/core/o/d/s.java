package com.bytedance.sdk.openadsdk.core.o.d;

import com.bytedance.sdk.openadsdk.core.o.d.d;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public class s implements dq {
    private final ConcurrentHashMap<Integer, dq> dq = new ConcurrentHashMap<>();

    public void d() {
        if (this.dq.isEmpty()) {
            return;
        }
        this.dq.clear();
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
    public void d(long j, long j2, String str, String str2) {
        Iterator<Map.Entry<Integer, dq>> it = this.dq.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Integer, dq> next = it.next();
            if (next == null) {
                it.remove();
            } else {
                new d.dq().dq(next.getValue()).dq("onDownloadPaused").dq(j).d(j2).d(str).ox(str2).dq();
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
    public void dq() {
        Iterator<Map.Entry<Integer, dq>> it = this.dq.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Integer, dq> next = it.next();
            if (next == null) {
                it.remove();
            } else {
                new d.dq().dq(next.getValue()).dq("onIdle").dq();
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
    public void dq(long j, long j2, String str, String str2) {
        Iterator<Map.Entry<Integer, dq>> it = this.dq.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Integer, dq> next = it.next();
            if (next == null) {
                it.remove();
            } else {
                new d.dq().dq(next.getValue()).dq("onDownloadActive").dq(j).d(j2).d(str).ox(str2).dq();
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
    public void dq(long j, String str, String str2) {
        Iterator<Map.Entry<Integer, dq>> it = this.dq.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Integer, dq> next = it.next();
            if (next == null) {
                it.remove();
            } else {
                new d.dq().dq(next.getValue()).dq("onDownloadFinished").dq(j).d(str).ox(str2).dq();
            }
        }
    }

    public void dq(dq dqVar) {
        if (dqVar != null) {
            this.dq.put(Integer.valueOf(dqVar.hashCode()), dqVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
    public void dq(String str, String str2) {
        Iterator<Map.Entry<Integer, dq>> it = this.dq.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Integer, dq> next = it.next();
            if (next == null) {
                it.remove();
            } else {
                next.getValue().dq(str, str2);
                new d.dq().dq(next.getValue()).dq("onInstalled").d(str).ox(str2).dq();
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
    public void ox(long j, long j2, String str, String str2) {
        Iterator<Map.Entry<Integer, dq>> it = this.dq.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Integer, dq> next = it.next();
            if (next == null) {
                it.remove();
            } else {
                new d.dq().dq(next.getValue()).dq("onDownloadFailed").dq(j).d(j2).d(str).ox(str2).dq();
            }
        }
    }

    public boolean ox() {
        return this.dq.size() > 0;
    }
}
