package com.bykv.vk.openvk.preload.dq.d.dq;

import com.bykv.vk.openvk.preload.dq.fw;
import com.bykv.vk.openvk.preload.dq.i;
import com.bykv.vk.openvk.preload.dq.r;
import java.io.IOException;

/* loaded from: classes.dex */
public final class ig<T> extends r<T> {

    /* renamed from: d, reason: collision with root package name */
    private final fw<T> f589d;
    final com.bykv.vk.openvk.preload.dq.iw dq;
    private r<T> mn;
    private final com.bykv.vk.openvk.preload.dq.o<T> ox;
    private final com.bykv.vk.openvk.preload.dq.ox.dq<T> p;
    private final ig<T>.dq iw = new dq(this, 0);
    private final i s = null;

    public final class dq {
        private dq() {
        }

        public /* synthetic */ dq(ig igVar, byte b2) {
            this();
        }
    }

    public ig(fw<T> fwVar, com.bykv.vk.openvk.preload.dq.o<T> oVar, com.bykv.vk.openvk.preload.dq.iw iwVar, com.bykv.vk.openvk.preload.dq.ox.dq<T> dqVar) {
        this.f589d = fwVar;
        this.ox = oVar;
        this.dq = iwVar;
        this.p = dqVar;
    }

    private r<T> d() {
        r<T> rVar = this.mn;
        if (rVar != null) {
            return rVar;
        }
        r<T> dq2 = this.dq.dq(this.s, this.p);
        this.mn = dq2;
        return dq2;
    }

    @Override // com.bykv.vk.openvk.preload.dq.r
    public final T dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
        if (this.ox == null) {
            return d().dq(dqVar);
        }
        if (com.bykv.vk.openvk.preload.dq.d.no.dq(dqVar) instanceof com.bykv.vk.openvk.preload.dq.mp) {
            return null;
        }
        return this.ox.dq();
    }

    @Override // com.bykv.vk.openvk.preload.dq.r
    public final void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, T t) throws IOException {
        fw<T> fwVar = this.f589d;
        if (fwVar == null) {
            d().dq(oxVar, t);
        } else if (t == null) {
            oxVar.s();
        } else {
            com.bykv.vk.openvk.preload.dq.d.no.dq(fwVar.dq(), oxVar);
        }
    }
}
