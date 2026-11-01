package com.bytedance.msdk.core.dq.dq.d.dq.dq;

import android.content.Context;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.api.p.kk;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.dq.s.iw;
import g.hat;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class dq extends com.bytedance.msdk.core.dq.dq.d.dq {

    /* renamed from: com.bytedance.msdk.core.dq.dq.d.dq.dq.dq$dq, reason: collision with other inner class name */
    public static class C0048dq implements Bridge {

        /* renamed from: d, reason: collision with root package name */
        private volatile boolean f866d = false;
        private com.bytedance.msdk.core.dq.dq.d.dq dq;
        private p ox;

        public C0048dq(com.bytedance.msdk.core.dq.dq.d.dq dqVar) {
            this.dq = dqVar;
        }

        @Override // com.bykv.vk.openvk.api.proto.Caller
        public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
            com.bytedance.msdk.core.dq.dq.d.dq dqVar;
            if (i == 60008) {
                if (this.f866d) {
                    return null;
                }
                this.f866d = true;
                Bridge bridge = (Bridge) valueSet.objectValue(50005, Bridge.class);
                com.bytedance.msdk.core.dq.dq.d.dq dqVar2 = this.dq;
                if (dqVar2 == null) {
                    return null;
                }
                if (bridge == null) {
                    dqVar2.dq(-999, "adn return data is null");
                    return null;
                }
                d dVar = new d(dqVar2, bridge);
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(dVar);
                this.dq.dq(arrayList);
                return null;
            }
            if (i == 60001) {
                if (this.f866d) {
                    return null;
                }
                this.f866d = true;
                if (this.dq == null) {
                    return null;
                }
                com.bytedance.msdk.core.dq.dq.d.dq.iw.d dVar2 = new com.bytedance.msdk.core.dq.dq.d.dq.iw.d((Bridge) valueSet.objectValue(50006, Bridge.class));
                this.dq.dq(dVar2.dq(), dVar2.d());
                return null;
            }
            if (i != 60000) {
                if (i != 60017 || (dqVar = this.dq) == null) {
                    return null;
                }
                if (this.ox == null) {
                    dqVar.dq(-999, "adn return data is null");
                    return null;
                }
                ArrayList arrayList2 = new ArrayList(1);
                arrayList2.add(this.ox);
                this.dq.dq(arrayList2);
                return null;
            }
            Bridge bridge2 = (Bridge) valueSet.objectValue(50005, Bridge.class);
            if (bridge2 == null) {
                com.bytedance.msdk.core.dq.dq.d.dq dqVar3 = this.dq;
                if (dqVar3 == null) {
                    return null;
                }
                dqVar3.dq(-999, "adn return data is null");
                return null;
            }
            if (this.dq.dq()) {
                p pVar = new p(this.dq, bridge2);
                this.ox = pVar;
                pVar.no();
                return null;
            }
            com.bytedance.msdk.core.dq.dq.d.dq dqVar4 = this.dq;
            if (dqVar4 == null) {
                return null;
            }
            ox oxVar = new ox(dqVar4, bridge2);
            ArrayList arrayList3 = new ArrayList(1);
            arrayList3.add(oxVar);
            this.dq.dq(arrayList3);
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
        no noVar = this.f854d;
        if (noVar != null) {
            if (noVar.iw() != 4) {
                mn(context);
                return;
            }
            int o = this.f854d.o();
            if (o == 1) {
                s(context);
            } else if (o == 2) {
                ox(context);
            } else {
                mn(context);
            }
        }
    }

    private void ia() {
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.m(50010, this.dq.wn());
            this.ox.call(40018, f2.k(), null);
        }
    }

    private void ia(Context context) {
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.n(50000, this.f854d.cd());
            f2.m(10000, context);
            this.ox.call(40066, f2.k(), null);
        }
    }

    private void ig() {
        if (this.ox == null || this.f854d == null) {
            return;
        }
        hat f2 = hat.f();
        f2.m(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1, new C0048dq(this));
        this.ox.call(40002, f2.k(), null);
    }

    private void iw() {
        if (this.ox == null || this.dq == null) {
            return;
        }
        hat f2 = hat.f();
        f2.m(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1, new C0048dq(this));
        f2.o(10013, 1);
        this.ox.call(40068, f2.k(), null);
    }

    private void iw(Context context) {
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.n(50000, this.f854d.cd());
            f2.m(10000, context);
            f2.n(50002, d());
            this.ox.call(40030, f2.k(), null);
        }
    }

    private void kk() {
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.m(50010, this.dq.wn());
            this.ox.call(40019, f2.k(), null);
        }
    }

    private void mn() {
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.o(50014, (int) this.dq.q());
            this.ox.call(40031, f2.k(), null);
        }
    }

    private void mn(Context context) {
        ia(context);
        no();
        ig();
    }

    private void no() {
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.o(50022, 0);
            this.ox.call(40067, f2.k(), null);
        }
    }

    private void o() {
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.m(50010, this.dq.wn());
            this.ox.call(40020, f2.k(), null);
        }
    }

    private void ox(Context context) {
        if (this.f854d != null) {
            p(context);
            kk();
            o();
            s();
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
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.n(50000, this.f854d.cd());
            f2.m(10000, context);
            f2.n(50002, d());
            this.ox.call(40036, f2.k(), null);
        }
    }

    private void s() {
        if (this.ox == null || this.dq == null) {
            return;
        }
        hat f2 = hat.f();
        f2.m(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1, new C0048dq(this));
        f2.o(10013, 1);
        this.ox.call(40037, f2.k(), null);
    }

    private void s(Context context) {
        if (this.f854d != null) {
            mn();
            iw(context);
            kk();
            o();
            ia();
            iw();
        }
    }

    @Override // com.bytedance.msdk.core.dq.dq.d.dq
    public void dq(final Context context) {
        if (ox()) {
            iw.p(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.dq.dq.1
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
