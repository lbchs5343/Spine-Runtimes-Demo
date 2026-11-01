package com.bytedance.sdk.component.adexpress.d;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.component.adexpress.d.o;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;

/* loaded from: classes.dex */
public class d implements o {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.component.adexpress.dynamic.dq.dq f1653d;
    private Context dq;
    private int iw;
    private ThemeStatusBroadcastReceiver ox;
    private ia p;
    private mp s;

    public d(Context context, mp mpVar, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z, com.bytedance.sdk.component.adexpress.dynamic.p.ia iaVar, ia iaVar2, com.bytedance.sdk.component.adexpress.dynamic.s.dq dqVar) {
        this(context, mpVar, themeStatusBroadcastReceiver, z, iaVar, iaVar2, dqVar, null);
    }

    public d(Context context, mp mpVar, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z, com.bytedance.sdk.component.adexpress.dynamic.p.ia iaVar, ia iaVar2, com.bytedance.sdk.component.adexpress.dynamic.s.dq dqVar, com.bytedance.sdk.component.adexpress.dynamic.dq.dq dqVar2) {
        this.dq = context;
        this.s = mpVar;
        this.ox = themeStatusBroadcastReceiver;
        this.p = iaVar2;
        if (dqVar2 != null) {
            this.f1653d = dqVar2;
        } else {
            this.f1653d = new com.bytedance.sdk.component.adexpress.dynamic.dq.dq(context, themeStatusBroadcastReceiver, z, iaVar, mpVar, dqVar);
        }
        this.f1653d.dq(this.p);
        if (iaVar instanceof com.bytedance.sdk.component.adexpress.dynamic.p.mn) {
            this.iw = 3;
        } else {
            this.iw = 2;
        }
    }

    public com.bytedance.sdk.component.adexpress.dynamic.p d() {
        com.bytedance.sdk.component.adexpress.dynamic.dq.dq dqVar = this.f1653d;
        if (dqVar != null) {
            return dqVar.iw();
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.adexpress.d.o
    public void dq() {
        com.bytedance.sdk.component.adexpress.dynamic.dq.dq dqVar = this.f1653d;
        if (dqVar != null) {
            dqVar.d();
        }
    }

    public void dq(boolean z) {
        this.f1653d.d(z);
    }

    @Override // com.bytedance.sdk.component.adexpress.d.o
    public boolean dq(final o.dq dqVar) {
        this.s.s().dq(this.iw);
        this.f1653d.dq(new mn() { // from class: com.bytedance.sdk.component.adexpress.d.d.1
            @Override // com.bytedance.sdk.component.adexpress.d.mn
            public void dq(int i, String str) {
                d.this.s.s().dq(d.this.iw, i, str, dqVar.d(d.this));
                if (dqVar.d(d.this)) {
                    dqVar.dq(d.this);
                    return;
                }
                jy d2 = dqVar.d();
                if (d2 == null) {
                    return;
                }
                d2.a_(i);
            }

            @Override // com.bytedance.sdk.component.adexpress.d.mn
            public void dq(View view, q qVar) {
                if (dqVar.ox()) {
                    return;
                }
                d.this.s.s().s(d.this.iw);
                d.this.s.s().iw(d.this.iw);
                d.this.s.s().mp();
                jy d2 = dqVar.d();
                if (d2 == null) {
                    return;
                }
                d2.dq(d.this.f1653d, qVar);
                dqVar.dq(true);
            }
        });
        return true;
    }
}
