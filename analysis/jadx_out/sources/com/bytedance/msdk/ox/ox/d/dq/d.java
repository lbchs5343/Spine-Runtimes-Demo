package com.bytedance.msdk.ox.ox.d.dq;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.msdk.d.s;
import com.bytedance.msdk.dq.s.iw;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class d implements com.bytedance.msdk.ox.dq.d, com.bytedance.msdk.ox.dq.dq {
    protected com.bytedance.msdk.ox.dq.d dq;

    /* renamed from: d, reason: collision with root package name */
    private boolean f1135d = false;
    private boolean ox = false;

    public d(com.bytedance.msdk.ox.dq.d dVar) {
        this.dq = dVar;
    }

    private void dq(com.bytedance.msdk.ox.s.d.d dVar) {
        if (dVar != null) {
            com.bytedance.msdk.core.ox.ox.d(dVar.mp(), dVar.d(), dVar.ig());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(Context context, com.bytedance.msdk.ox.s.d.d dVar, com.bytedance.msdk.api.dq.d dVar2, Map<String, Object> map) {
        this.f1135d = false;
        this.ox = false;
        if (com.bytedance.msdk.core.d.no().e()) {
            d(context, dVar, dVar2, map);
            dq(dVar);
            return;
        }
        try {
            d(context, dVar, dVar2, map);
            dq(dVar);
        } catch (Throwable th) {
            dq(new com.bytedance.msdk.api.dq(com.bytedance.msdk.core.f.d.dq(th)));
            th.printStackTrace();
        }
    }

    public abstract void d(Context context, com.bytedance.msdk.ox.s.d.d dVar, com.bytedance.msdk.api.dq.d dVar2, Map<String, Object> map);

    public boolean d() {
        return this.f1135d;
    }

    @Override // com.bytedance.msdk.ox.dq.dq
    public final void dq(final Context context, final com.bytedance.msdk.ox.s.d.d dVar, final com.bytedance.msdk.api.dq.d dVar2, final Map<String, Object> map) {
        if (dVar == null || !(TextUtils.equals(MediationConstant.ADN_MINTEGRAL, dVar.mp()) || TextUtils.equals(MediationConstant.ADN_BAIDU, dVar.mp()) || TextUtils.equals(MediationConstant.ADN_ADMOB, dVar.mp()))) {
            ox(context, dVar, dVar2, map);
        } else {
            iw.ox(new Runnable() { // from class: com.bytedance.msdk.ox.ox.d.dq.d.1
                @Override // java.lang.Runnable
                public void run() {
                    d.this.ox(context, dVar, dVar2, map);
                }
            });
        }
    }

    @Override // com.bytedance.msdk.ox.dq.d
    public void dq(com.bytedance.msdk.api.dq dqVar) {
        this.ox = true;
        if (this.f1135d) {
            return;
        }
        this.f1135d = true;
        com.bytedance.msdk.ox.dq.d dVar = this.dq;
        if (dVar != null) {
            dVar.dq(dqVar);
        }
    }

    public void dq(s sVar) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(sVar);
        dq(arrayList);
    }

    public void dq(s sVar, com.bytedance.msdk.api.dq dqVar) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(sVar);
        dq(arrayList, dqVar);
    }

    @Override // com.bytedance.msdk.ox.dq.d
    public void dq(s sVar, String str) {
        com.bytedance.msdk.ox.dq.d dVar = this.dq;
        if (dVar != null) {
            dVar.dq(sVar, str);
        }
    }

    @Override // com.bytedance.msdk.ox.dq.d
    public void dq(List<s> list) {
        if (this.f1135d) {
            return;
        }
        this.f1135d = true;
        com.bytedance.msdk.ox.dq.d dVar = this.dq;
        if (dVar != null) {
            dVar.dq(list);
        }
    }

    @Override // com.bytedance.msdk.ox.dq.d
    public void dq(List<s> list, com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.ox.dq.d dVar;
        if (this.ox || (dVar = this.dq) == null) {
            return;
        }
        dVar.dq(list, dqVar);
    }

    public boolean dq() {
        return this.ox;
    }
}
