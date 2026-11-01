package com.bytedance.msdk.ox.ox.dq;

import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.msdk.ia.n;
import com.bytedance.msdk.ox.ox.dq.dq;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class mn implements dq.InterfaceC0088dq {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.ox.s.dq.d f1186d;
    private List<dq> dq;
    private int ox;
    private int p;

    public mn(List<dq> list) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.dq = copyOnWriteArrayList;
        this.ox = 0;
        this.p = 0;
        if (list != null) {
            copyOnWriteArrayList.addAll(list);
        }
    }

    public static /* synthetic */ int iw(mn mnVar) {
        int i = mnVar.p;
        mnVar.p = i + 1;
        return i;
    }

    public static /* synthetic */ int p(mn mnVar) {
        int i = mnVar.ox;
        mnVar.ox = i + 1;
        return i;
    }

    @Override // com.bytedance.msdk.ox.ox.dq.dq.InterfaceC0088dq
    public com.bytedance.msdk.ox.s.dq.d dq() {
        return this.f1186d;
    }

    @Override // com.bytedance.msdk.ox.ox.dq.dq.InterfaceC0088dq
    public void dq(com.bytedance.msdk.ox.s.dq.d dVar) {
        if (this.f1186d != dVar && dVar != null) {
            this.f1186d = dVar;
        }
        if (n.dq(this.dq)) {
            return;
        }
        com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.ox.ox.dq.mn.1
            @Override // java.lang.Runnable
            public void run() {
                if (mn.this.ox == 0 && mn.this.f1186d != null) {
                    mn.this.f1186d.d(SystemClock.elapsedRealtime());
                }
                if (mn.this.dq.size() > mn.this.ox) {
                    ((dq) mn.this.dq.get(mn.p(mn.this))).dq(mn.this);
                }
            }
        });
    }

    @Override // com.bytedance.msdk.ox.ox.dq.dq.InterfaceC0088dq
    public void dq(String str) {
        com.bytedance.msdk.ox.s.dq.d dVar;
        if (!TextUtils.isEmpty(str) && (dVar = this.f1186d) != null) {
            dVar.d(str);
        }
        com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.ox.ox.dq.mn.2
            @Override // java.lang.Runnable
            public void run() {
                if (mn.this.dq.size() > mn.this.p) {
                    ((dq) mn.this.dq.get(mn.iw(mn.this))).d(mn.this);
                }
            }
        });
    }
}
