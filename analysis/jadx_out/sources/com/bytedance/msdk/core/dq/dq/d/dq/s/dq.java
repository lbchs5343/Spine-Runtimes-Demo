package com.bytedance.msdk.core.dq.dq.d.dq.s;

import android.content.Context;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.api.p.kk;
import com.bytedance.msdk.dq.s.iw;
import g.hat;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class dq extends com.bytedance.msdk.core.dq.dq.d.dq {

    /* renamed from: com.bytedance.msdk.core.dq.dq.d.dq.s.dq$dq, reason: collision with other inner class name */
    public static class C0053dq implements Bridge {

        /* renamed from: d, reason: collision with root package name */
        private d f909d;
        private com.bytedance.msdk.core.dq.dq.d.dq dq;

        public C0053dq(com.bytedance.msdk.core.dq.dq.d.dq dqVar) {
            this.dq = dqVar;
        }

        private void dq(Bridge bridge) {
            if (this.f909d != null || bridge == null) {
                return;
            }
            this.f909d = new d(this.dq, bridge);
        }

        @Override // com.bykv.vk.openvk.api.proto.Caller
        public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
            if (i != 60008) {
                if (i != 60001 || this.dq == null) {
                    return null;
                }
                com.bytedance.msdk.core.dq.dq.d.dq.iw.d dVar = new com.bytedance.msdk.core.dq.dq.d.dq.iw.d((Bridge) valueSet.objectValue(50006, Bridge.class));
                this.dq.dq(dVar.dq(), dVar.d());
                return null;
            }
            Bridge bridge = (Bridge) valueSet.objectValue(50005, Bridge.class);
            com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.dq;
            if (dqVar == null) {
                return null;
            }
            if (bridge == null) {
                dqVar.dq(-999, "adn return data is null");
                return null;
            }
            dq(bridge);
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(this.f909d);
            this.dq.dq(arrayList);
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
        mn();
        s();
        iw();
        ia();
    }

    private void ia() {
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.m(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1, new C0053dq(this));
            this.ox.call(40002, f2.k(), null);
        }
    }

    private void iw() {
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.m(50010, this.dq.wn());
            this.ox.call(40020, f2.k(), null);
        }
    }

    private void mn() {
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.m(50010, this.dq.wn());
            this.ox.call(40018, f2.k(), null);
        }
    }

    private void ox(Context context) {
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.n(50000, this.f854d.cd());
            f2.m(10000, context);
            this.ox.call(40017, f2.k(), null);
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
            f2.m(50010, this.dq.wn());
            this.ox.call(40019, f2.k(), null);
        }
    }

    @Override // com.bytedance.msdk.core.dq.dq.d.dq
    public void dq(final Context context) {
        if (ox()) {
            iw.p(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.s.dq.1
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
