package com.bykv.vk.openvk.preload.dq;

/* loaded from: classes.dex */
public final class q extends no {
    public final com.bykv.vk.openvk.preload.dq.d.ia<String, no> dq = new com.bykv.vk.openvk.preload.dq.d.ia<>();

    public final void dq(String str, no noVar) {
        com.bykv.vk.openvk.preload.dq.d.ia<String, no> iaVar = this.dq;
        if (noVar == null) {
            noVar = mp.dq;
        }
        iaVar.put(str, noVar);
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof q) && ((q) obj).dq.equals(this.dq);
        }
        return true;
    }

    public final int hashCode() {
        return this.dq.hashCode();
    }
}
