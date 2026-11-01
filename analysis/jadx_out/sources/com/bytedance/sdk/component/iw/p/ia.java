package com.bytedance.sdk.component.iw.p;

import com.bytedance.sdk.component.iw.f;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ia extends dq {

    /* renamed from: d, reason: collision with root package name */
    private int f1977d;
    private Throwable dq;
    private String ox;

    public ia(int i, String str, Throwable th) {
        this.f1977d = i;
        this.ox = str;
        this.dq = th;
    }

    private void d(com.bytedance.sdk.component.iw.ox.ox oxVar) {
        f no = oxVar.no();
        if (no != null) {
            no.dq(this.f1977d, this.ox, this.dq);
        }
    }

    @Override // com.bytedance.sdk.component.iw.p.kk
    public String dq() {
        return "failed";
    }

    @Override // com.bytedance.sdk.component.iw.p.kk
    public void dq(com.bytedance.sdk.component.iw.ox.ox oxVar) {
        oxVar.dq(new com.bytedance.sdk.component.iw.ox.dq(this.f1977d, this.ox, this.dq));
        String wp = oxVar.wp();
        Map<String, List<com.bytedance.sdk.component.iw.ox.ox>> mn = oxVar.r().mn();
        List<com.bytedance.sdk.component.iw.ox.ox> list = mn.get(wp);
        if (list == null) {
            d(oxVar);
            return;
        }
        synchronized (list) {
            try {
                Iterator<com.bytedance.sdk.component.iw.ox.ox> it = list.iterator();
                while (it.hasNext()) {
                    d(it.next());
                }
                list.clear();
                mn.remove(wp);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
