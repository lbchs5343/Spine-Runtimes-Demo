package com.bytedance.sdk.gromore.init;

import android.content.Context;
import android.os.SystemClock;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Result;
import com.bytedance.msdk.api.p.dq;
import com.bytedance.msdk.api.p.ia;
import com.bytedance.msdk.api.p.ig;
import g.cpq;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private static volatile AtomicBoolean f2374d = new AtomicBoolean(false);
    private static volatile boolean dq;
    private static volatile Result ox;
    private static volatile boolean p;
    private long iw;
    private EventListener s;

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (f2374d.get()) {
            com.bytedance.msdk.dq.s.ox.d("TMe", "通知成功或失败了不在通知");
            return;
        }
        f2374d.set(true);
        com.bytedance.msdk.dq.s.ox.d("TMe", "通知成功=----notifySdkSuccess");
        com.bytedance.msdk.dq.s.iw.p(new Runnable() { // from class: com.bytedance.sdk.gromore.init.ox.2
            @Override // java.lang.Runnable
            public void run() {
                ox.this.ox();
            }
        });
    }

    private void d(int i, String str) {
        if (i == 40004) {
            com.bytedance.msdk.dq.s.ox.d("TMe", "sdk init call code is 40004 callback success");
            ox();
            return;
        }
        if (this.s != null) {
            iw.s = SystemClock.elapsedRealtime();
            com.bytedance.msdk.dq.s.ox.d("TMe", "sdk init call callback fail");
            cpq f2 = cpq.f();
            f2.f13287e = false;
            f2.f13286d = i;
            f2.f13283a = str;
            ox = f2.h();
            this.s.onEvent(0, ox);
            com.bytedance.msdk.s.iw.dq();
        }
    }

    private com.bytedance.msdk.api.p.dq dq(com.bytedance.sdk.gromore.dq.d.dq dqVar) {
        return new dq.C0038dq().dq(dqVar.s()).d(dqVar.iw()).dq(dqVar.p()).ox(dqVar.jy()).d(dqVar.f()).dq(d.dq(dqVar.fw())).dq(dqVar.cd()).dq(dqVar.q()).ox(dqVar.gh()).dq(dqVar.r()).p(dqVar.ig()).dq(new ig.dq().dq(dqVar.mn()).d(dqVar.ia()).dq(dqVar.kk()).dq(dqVar.o()).d(dqVar.no()).dq(dqVar.mp()).dq(d.dq(dqVar.cd())).dq()).dq(new ia.dq().dq(dqVar.le()).dq(dqVar.i()).d(dqVar.k()).ox(dqVar.wp()).dq()).dq(dqVar.d()).dq();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i, String str) {
        if (f2374d.get()) {
            com.bytedance.msdk.dq.s.ox.d("TMe", "通知成功或失败了不在通知");
        } else {
            f2374d.set(true);
            d(i, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox() {
        if (this.s != null) {
            p = true;
            iw.s = SystemClock.elapsedRealtime();
            if (this.iw != 0) {
                iw.mn = SystemClock.elapsedRealtime() - this.iw;
            }
            com.bytedance.msdk.dq.s.ox.d("TMe", "sdk init call callback success");
            cpq f2 = cpq.f();
            f2.f13287e = true;
            ox = f2.h();
            this.s.onEvent(0, ox);
            com.bytedance.msdk.s.iw.dq();
        }
    }

    public void dq(Context context, com.bytedance.sdk.gromore.dq.d.dq dqVar, EventListener eventListener, long j) {
        this.s = eventListener;
        this.iw = j;
        if (dqVar == null) {
            com.bytedance.msdk.dq.s.ox.d("TMe", "init csjm configValueSet is null");
            return;
        }
        com.bytedance.msdk.core.d.no().ox(dqVar.s());
        if (com.bytedance.msdk.core.d.no().e()) {
            com.bytedance.msdk.ia.p.s.dq(dqVar);
        }
        com.bytedance.msdk.dq.s.ox.d("TMe", "init csjm " + dq);
        if (dq) {
            com.bytedance.msdk.dq.s.ox.d("TMe", "init csjm already");
            if (eventListener == null || ox == null) {
                com.bytedance.msdk.dq.s.ox.d("TMe", "sdk正在初始化....");
                return;
            } else {
                eventListener.onEvent(0, ox);
                return;
            }
        }
        com.bytedance.msdk.dq.s.ox.d("TMe", "init csjm ");
        dq = true;
        f2374d.set(false);
        com.bytedance.msdk.core.mp.dq.dq().d();
        com.bytedance.msdk.core.mp.dq.dq().dq(new com.bytedance.msdk.core.mp.d() { // from class: com.bytedance.sdk.gromore.init.ox.1
            @Override // com.bytedance.msdk.core.mp.d
            public void dq() {
                com.bytedance.msdk.core.mp.dq.dq().dq((com.bytedance.msdk.core.mp.d) null);
                ox.this.d();
            }

            @Override // com.bytedance.msdk.core.mp.d
            public void dq(int i, String str) {
                com.bytedance.msdk.core.mp.dq.dq().dq((com.bytedance.msdk.core.mp.d) null);
                ox.this.dq(i, str);
            }
        });
        com.bytedance.msdk.api.p.o.dq(context, dq(dqVar));
        com.bytedance.msdk.api.p.o.p();
    }

    public boolean dq() {
        return p;
    }
}
