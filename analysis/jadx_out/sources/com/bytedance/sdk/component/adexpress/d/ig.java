package com.bytedance.sdk.component.adexpress.d;

import com.bytedance.sdk.component.adexpress.d.o;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class ig implements o.dq {

    /* renamed from: d, reason: collision with root package name */
    private List<o> f1658d;
    jy dq;
    private kk ox;
    private AtomicBoolean p = new AtomicBoolean(false);

    public ig(List<o> list, kk kkVar) {
        this.f1658d = list;
        this.ox = kkVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.d.o.dq
    public jy d() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.component.adexpress.d.o.dq
    public boolean d(o oVar) {
        int indexOf = this.f1658d.indexOf(oVar);
        return indexOf < this.f1658d.size() - 1 && indexOf >= 0;
    }

    @Override // com.bytedance.sdk.component.adexpress.d.o.dq
    public void dq() {
        this.ox.iw();
        Iterator<o> it = this.f1658d.iterator();
        while (it.hasNext() && !it.next().dq(this)) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.d.o.dq
    public void dq(jy jyVar) {
        this.dq = jyVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.d.o.dq
    public void dq(o oVar) {
        int indexOf = this.f1658d.indexOf(oVar);
        if (indexOf < 0) {
            return;
        }
        do {
            indexOf++;
            if (indexOf >= this.f1658d.size()) {
                return;
            }
        } while (!this.f1658d.get(indexOf).dq(this));
    }

    @Override // com.bytedance.sdk.component.adexpress.d.o.dq
    public void dq(boolean z) {
        this.p.getAndSet(z);
    }

    @Override // com.bytedance.sdk.component.adexpress.d.o.dq
    public boolean ox() {
        return this.p.get();
    }
}
