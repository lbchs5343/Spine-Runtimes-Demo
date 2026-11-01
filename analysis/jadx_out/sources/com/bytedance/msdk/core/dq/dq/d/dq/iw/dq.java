package com.bytedance.msdk.core.dq.dq.d.dq.iw;

import android.content.Context;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.api.p.kk;
import com.bytedance.msdk.dq.s.iw;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.hat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class dq extends com.bytedance.msdk.core.dq.dq.d.dq {

    /* renamed from: com.bytedance.msdk.core.dq.dq.d.dq.iw.dq$dq, reason: collision with other inner class name */
    public static class C0049dq implements Bridge {

        /* renamed from: d, reason: collision with root package name */
        private ox f875d;
        private com.bytedance.msdk.core.dq.dq.d.dq dq;

        public C0049dq(com.bytedance.msdk.core.dq.dq.d.dq dqVar) {
            this.dq = dqVar;
        }

        private void dq(Bridge bridge) {
            if (this.f875d != null || bridge == null) {
                return;
            }
            this.f875d = new ox(this.dq, bridge);
        }

        @Override // com.bykv.vk.openvk.api.proto.Caller
        public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
            if (i == 60000) {
                Bridge bridge = (Bridge) valueSet.objectValue(50005, Bridge.class);
                com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.dq;
                if (dqVar != null) {
                    if (bridge != null) {
                        dq(bridge);
                        ArrayList arrayList = new ArrayList(1);
                        arrayList.add(this.f875d);
                        this.dq.dq(arrayList);
                    } else {
                        dqVar.dq(-999, "adn return data is null");
                    }
                }
            } else if (i == 60001) {
                if (this.dq != null) {
                    d dVar = new d((Bridge) valueSet.objectValue(50006, Bridge.class));
                    this.dq.dq(dVar.dq(), dVar.d());
                }
            } else if (i == 60003) {
                Bridge bridge2 = (Bridge) valueSet.objectValue(50005, Bridge.class);
                com.bytedance.msdk.core.dq.dq.d.dq dqVar2 = this.dq;
                if (dqVar2 != null) {
                    if (bridge2 != null) {
                        dq(bridge2);
                        this.dq.dq(this.f875d, (com.bytedance.msdk.api.dq) null);
                    } else {
                        dqVar2.dq(-999, "adn return data is null");
                    }
                }
            }
            return null;
        }

        @Override // com.bykv.vk.openvk.api.proto.Bridge
        public ValueSet values() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Context context) {
        p();
        ox(context);
        s();
        iw();
    }

    private void iw() {
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.m(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1, new C0049dq(this));
            this.ox.call(40002, f2.k(), null);
        }
    }

    private void ox(Context context) {
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.i(50001, this.dq.c());
            f2.n(50002, d());
            f2.n(50000, this.f854d.cd());
            f2.m(10000, context);
            this.ox.call(40000, f2.k(), null);
        }
    }

    private void p() {
        HashMap hashMap = new HashMap();
        kk d2 = com.bytedance.msdk.core.d.no().bl().d();
        if (d2 != null) {
            hashMap.put("lng", String.valueOf(d2.d()));
            hashMap.put("lat", String.valueOf(d2.dq()));
            hashMap.put("loc_time", String.valueOf(System.currentTimeMillis() / 1000));
        }
        if (hashMap.size() > 0) {
            hat f2 = hat.f();
            f2.m(50010, hashMap);
            Bridge bridge = this.ox;
            if (bridge != null) {
                bridge.call(40025, f2.k(), null);
            }
        }
    }

    private void s() {
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.n(50003, this.dq.ir());
            Map<String, Object> wn = this.dq.wn();
            if (wn != null && wn.get(MediationConstant.ADN_GDT) != null) {
                f2.n(50004, String.valueOf(wn.get(MediationConstant.ADN_GDT)));
            }
            this.ox.call(40001, f2.k(), null);
        }
    }

    @Override // com.bytedance.msdk.core.dq.dq.d.dq
    public void dq(final Context context) {
        if (ox()) {
            iw.p(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.iw.dq.1
                @Override // java.lang.Runnable
                public void run() {
                    dq.this.d(context);
                }
            });
        } else {
            d(context);
        }
    }
}
