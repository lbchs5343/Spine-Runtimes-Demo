package com.bytedance.sdk.component.iw.p;

import com.bytedance.pangle.ZeusPluginEventCallback;
import com.bytedance.sdk.component.iw.f;
import com.bytedance.sdk.component.iw.gh;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class mp<T> extends dq {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.component.iw.iw f1978d;
    private T dq;
    private boolean ox;
    private byte[] p;

    public mp(T t, byte[] bArr, com.bytedance.sdk.component.iw.iw iwVar, boolean z) {
        this.dq = t;
        this.f1978d = iwVar;
        this.ox = z;
        this.p = bArr;
    }

    private Map<String, String> d() {
        com.bytedance.sdk.component.iw.iw iwVar = this.f1978d;
        if (iwVar != null) {
            return iwVar.s();
        }
        return null;
    }

    private void d(com.bytedance.sdk.component.iw.ox.ox oxVar) {
        f no = oxVar.no();
        int mp = oxVar.mp();
        if (no != null) {
            T t = this.dq;
            if (mp == 3) {
                if (this.p == null) {
                    this.p = oxVar.r().d(oxVar.i()).dq((gh) oxVar.iw());
                }
                T t2 = (T) this.p;
                if (t2 == null) {
                    t2 = this.dq;
                }
                t = (T) t2;
                if (!(t instanceof byte[])) {
                    no.dq(ZeusPluginEventCallback.EVENT_START_LOAD, "final data is not raw", new RuntimeException("final data is not raw"));
                }
            } else if (mp == 2 && (t instanceof byte[])) {
                try {
                    t = (T) oxVar.r().dq(oxVar).dq((byte[]) t);
                } catch (Throwable th) {
                    no.dq(ZeusPluginEventCallback.EVENT_START_LOAD, "decode failed", th);
                    return;
                }
            }
            no.dq(new com.bytedance.sdk.component.iw.ox.p().dq(oxVar, t, d(), this.ox));
        }
    }

    @Override // com.bytedance.sdk.component.iw.p.kk
    public String dq() {
        return "success";
    }

    @Override // com.bytedance.sdk.component.iw.p.kk
    public void dq(com.bytedance.sdk.component.iw.ox.ox oxVar) {
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
