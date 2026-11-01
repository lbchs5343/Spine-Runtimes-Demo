package com.bykv.vk.openvk.preload.dq;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class kk extends no implements Iterable<no> {
    private final List<no> dq = new ArrayList();

    @Override // com.bykv.vk.openvk.preload.dq.no
    public final String d() {
        if (this.dq.size() == 1) {
            return this.dq.get(0).d();
        }
        throw new IllegalStateException();
    }

    @Override // com.bykv.vk.openvk.preload.dq.no
    public final Number dq() {
        if (this.dq.size() == 1) {
            return this.dq.get(0).dq();
        }
        throw new IllegalStateException();
    }

    public final void dq(no noVar) {
        if (noVar == null) {
            noVar = mp.dq;
        }
        this.dq.add(noVar);
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof kk) && ((kk) obj).dq.equals(this.dq);
        }
        return true;
    }

    public final int hashCode() {
        return this.dq.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator<no> iterator() {
        return this.dq.iterator();
    }

    @Override // com.bykv.vk.openvk.preload.dq.no
    public final boolean iw() {
        if (this.dq.size() == 1) {
            return this.dq.get(0).iw();
        }
        throw new IllegalStateException();
    }

    @Override // com.bykv.vk.openvk.preload.dq.no
    public final double ox() {
        if (this.dq.size() == 1) {
            return this.dq.get(0).ox();
        }
        throw new IllegalStateException();
    }

    @Override // com.bykv.vk.openvk.preload.dq.no
    public final long p() {
        if (this.dq.size() == 1) {
            return this.dq.get(0).p();
        }
        throw new IllegalStateException();
    }

    @Override // com.bykv.vk.openvk.preload.dq.no
    public final int s() {
        if (this.dq.size() == 1) {
            return this.dq.get(0).s();
        }
        throw new IllegalStateException();
    }
}
