package com.bytedance.sdk.gromore.init;

import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Initializer;
import com.bykv.vk.openvk.api.proto.Manager;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.core.AdSdkInitializerHolder;
import com.bytedance.sdk.openadsdk.core.ir.n;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.cpq;
import g.hat;

/* loaded from: classes.dex */
public class q implements Initializer {

    /* renamed from: d, reason: collision with root package name */
    private EventListener f2375d;
    private com.bytedance.sdk.gromore.dq.d.dq dq;
    private Initializer ox;
    private ox p;
    private Bundle s;

    public q(Bundle bundle, Initializer initializer) {
        this.ox = initializer;
        this.s = bundle;
        iw.dq();
        Bundle bundle2 = this.s;
        if (bundle2 != null) {
            iw.dq = bundle2.getLong("call_init_time");
        }
    }

    private void d(final Context context, final ValueSet valueSet) {
        EventListener ox = this.dq.ox();
        this.f2375d = ox;
        if (ox != null) {
            s sVar = new s(ox);
            this.f2375d = sVar;
            sVar.dq(new EventListener() { // from class: com.bytedance.sdk.gromore.init.q.1
                /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
                @Override // com.bykv.vk.openvk.api.proto.EventListener
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public ValueSet onEvent(int i, Result result) {
                    long j;
                    long j2 = 0;
                    try {
                        long longValue = valueSet.longValue(1, SystemClock.elapsedRealtime());
                        if (longValue != 0) {
                            try {
                                iw.iw = SystemClock.elapsedRealtime() - longValue;
                            } catch (Exception unused) {
                                j2 = longValue;
                                j = j2;
                                if (result.isSuccess()) {
                                }
                            }
                        }
                        j = longValue;
                    } catch (Exception unused2) {
                    }
                    if (result.isSuccess()) {
                        return null;
                    }
                    iw.ox = SystemClock.elapsedRealtime();
                    q qVar = q.this;
                    qVar.dq(context, qVar.dq, q.this.f2375d, j);
                    return null;
                }
            });
        }
        if (this.ox != null) {
            hat e2 = hat.e(valueSet);
            e2.m(15, this.f2375d);
            dq(context, e2.k());
        } else {
            EventListener eventListener = this.f2375d;
            cpq f2 = cpq.f();
            f2.f13287e = false;
            f2.f13286d = MediationConstant.ErrorCode.ADN_INIT_FAIL;
            f2.f13283a = "init error Initializer is null";
            eventListener.onEvent(0, f2.h());
        }
    }

    private void dq(Context context, ValueSet valueSet) {
        iw.f2363d = SystemClock.elapsedRealtime();
        Initializer initializer = this.ox;
        if (initializer != null) {
            initializer.init(context, valueSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(Context context, com.bytedance.sdk.gromore.dq.d.dq dqVar, EventListener eventListener, long j) {
        iw.p = SystemClock.elapsedRealtime();
        ox oxVar = new ox();
        this.p = oxVar;
        oxVar.dq(context, dqVar, eventListener, j);
    }

    @Override // com.bykv.vk.openvk.api.proto.Initializer
    public Manager getManager() {
        if (this.ox == null) {
            return null;
        }
        com.bytedance.msdk.dq.s.ox.d("TMe", "getManager mediation");
        Manager manager = this.ox.getManager();
        if (manager != null) {
            return new mp(manager);
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Initializer
    public void init(Context context, ValueSet valueSet) {
        com.bytedance.sdk.gromore.dq.d.dq dq = com.bytedance.sdk.gromore.dq.d.dq.dq(valueSet);
        this.dq = dq;
        if (dq.p()) {
            com.bytedance.msdk.dq.s.ox.dq();
            com.bytedance.sdk.component.kk.dq.dq();
        }
        if (this.dq.ig() && !AdSdkInitializerHolder.isSdkInitSuccess()) {
            n.dq();
        }
        boolean dk = wp.d().dk();
        if (!this.dq.dq() && !dk) {
            dq(context, valueSet);
            return;
        }
        com.bytedance.msdk.core.mp.dq.dq().d();
        com.bytedance.msdk.core.mp.dq.dq().dq(dk);
        d(context, valueSet);
    }

    @Override // com.bykv.vk.openvk.api.proto.Initializer
    public boolean isInitSuccess() {
        com.bytedance.sdk.gromore.dq.d.dq dqVar = this.dq;
        if (dqVar != null && dqVar.dq()) {
            Initializer initializer = this.ox;
            return initializer != null && this.p != null && initializer.isInitSuccess() && this.p.dq();
        }
        Initializer initializer2 = this.ox;
        if (initializer2 != null) {
            return initializer2.isInitSuccess();
        }
        return false;
    }
}
