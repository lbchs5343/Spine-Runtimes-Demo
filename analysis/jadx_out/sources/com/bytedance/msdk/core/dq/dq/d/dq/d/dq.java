package com.bytedance.msdk.core.dq.dq.d.dq.d;

import android.content.Context;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.api.p.kk;
import com.bytedance.msdk.dq.s.iw;
import g.hat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class dq extends com.bytedance.msdk.core.dq.dq.d.dq {

    /* renamed from: com.bytedance.msdk.core.dq.dq.d.dq.d.dq$dq, reason: collision with other inner class name */
    public static class C0047dq implements Bridge {

        /* renamed from: d, reason: collision with root package name */
        private Context f861d;
        private com.bytedance.msdk.core.dq.dq.d.dq dq;

        public C0047dq(com.bytedance.msdk.core.dq.dq.d.dq dqVar) {
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
            List list = (List) valueSet.objectValue(50015, List.class);
            if (this.dq == null) {
                return null;
            }
            if (list == null || list.size() <= 0) {
                this.dq.dq(-999, "adn return data is null");
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new d(this.f861d, this.dq, (Bridge) it.next()));
            }
            this.dq.dq(arrayList);
            return null;
        }

        public void dq(Context context) {
            this.f861d = context;
        }

        @Override // com.bykv.vk.openvk.api.proto.Bridge
        public ValueSet values() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Context context) {
        p();
        p(context);
        s();
        iw();
        ox(context);
    }

    private void iw() {
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.m(50010, this.dq.wn());
            this.ox.call(40020, f2.k(), null);
        }
    }

    private void ox(Context context) {
        if (this.ox == null || this.dq == null) {
            return;
        }
        hat f2 = hat.f();
        C0047dq c0047dq = new C0047dq(this);
        c0047dq.dq(context);
        f2.m(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1, c0047dq);
        f2.o(10013, this.dq.h());
        this.ox.call(40037, f2.k(), null);
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
            this.ox.call(40036, f2.k(), null);
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
            iw.p(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.d.dq.1
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
