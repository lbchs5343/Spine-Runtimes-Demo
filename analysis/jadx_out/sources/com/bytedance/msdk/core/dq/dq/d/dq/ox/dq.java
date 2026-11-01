package com.bytedance.msdk.core.dq.dq.d.dq.ox;

import android.content.Context;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.api.p.kk;
import com.bytedance.msdk.dq.s.iw;
import g.hat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class dq extends com.bytedance.msdk.core.dq.dq.d.dq {

    /* renamed from: com.bytedance.msdk.core.dq.dq.d.dq.ox.dq$dq, reason: collision with other inner class name */
    public static class C0051dq implements Bridge {

        /* renamed from: d, reason: collision with root package name */
        private Context f893d;
        private com.bytedance.msdk.core.dq.dq.d.dq dq;

        public C0051dq(com.bytedance.msdk.core.dq.dq.d.dq dqVar) {
            this.dq = dqVar;
        }

        @Override // com.bykv.vk.openvk.api.proto.Caller
        public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
            if (i != 60000) {
                if (i != 60001 || this.dq == null) {
                    return null;
                }
                com.bytedance.msdk.core.dq.dq.d.dq.iw.d dVar = new com.bytedance.msdk.core.dq.dq.d.dq.iw.d((Bridge) valueSet.objectValue(50006, Bridge.class));
                this.dq.dq(dVar.dq(), dVar.d());
                return null;
            }
            List<Bridge> list = (List) valueSet.objectValue(50015, List.class);
            if (this.dq == null) {
                return null;
            }
            if (list == null || list.size() <= 0) {
                this.dq.dq(-999, "adn return data is null");
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            for (Bridge bridge : list) {
                if (this.dq.dq()) {
                    arrayList.add(new ox(this.dq, bridge));
                } else {
                    arrayList.add(new d(this.f893d, this.dq, bridge));
                }
            }
            this.dq.dq(arrayList);
            return null;
        }

        public void dq(Context context) {
            this.f893d = context;
        }

        @Override // com.bykv.vk.openvk.api.proto.Bridge
        public ValueSet values() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Context context) {
        p();
        if (dq()) {
            iw(context);
        } else {
            ox(context);
        }
    }

    private void ia() {
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.m(50010, this.dq.wn());
            this.ox.call(40019, f2.k(), null);
        }
    }

    private void iw() {
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.o(50014, (int) this.dq.q());
            this.ox.call(40031, f2.k(), null);
        }
    }

    private void iw(Context context) {
        if (this.f854d != null) {
            iw();
            mn(context);
            ia();
            kk();
            mn();
            s();
        }
    }

    private void kk() {
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

    private void mn(Context context) {
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.n(50000, this.f854d.cd());
            f2.m(10000, context);
            f2.n(50002, d());
            this.ox.call(40030, f2.k(), null);
        }
    }

    private void ox(Context context) {
        if (this.f854d != null) {
            s(context);
            ia();
            kk();
            p(context);
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

    private void p(Context context) {
        if (this.ox == null || this.dq == null) {
            return;
        }
        hat f2 = hat.f();
        C0051dq c0051dq = new C0051dq(this);
        c0051dq.dq(context);
        f2.m(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1, c0051dq);
        f2.o(10013, this.dq.h());
        this.ox.call(40037, f2.k(), null);
    }

    private void s() {
        if (this.ox == null || this.dq == null) {
            return;
        }
        hat f2 = hat.f();
        f2.m(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1, new C0051dq(this));
        f2.o(10013, this.dq.h());
        this.ox.call(40002, f2.k(), null);
    }

    private void s(Context context) {
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.n(50000, this.f854d.cd());
            f2.m(10000, context);
            f2.n(50002, d());
            this.ox.call(40036, f2.k(), null);
        }
    }

    @Override // com.bytedance.msdk.core.dq.dq.d.dq
    public void dq(final Context context) {
        if (ox()) {
            iw.p(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.ox.dq.1
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
