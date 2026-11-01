package com.bytedance.msdk.core.dq.dq.d.dq.mn;

import android.content.Context;
import android.os.SystemClock;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
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

    /* renamed from: com.bytedance.msdk.core.dq.dq.d.dq.mn.dq$dq, reason: collision with other inner class name */
    public static class C0050dq implements Bridge {

        /* renamed from: d, reason: collision with root package name */
        private d f886d;
        private com.bytedance.msdk.core.dq.dq.d.dq dq;

        public C0050dq(com.bytedance.msdk.core.dq.dq.d.dq dqVar) {
            this.dq = dqVar;
        }

        private void dq(Bridge bridge) {
            if (this.f886d != null || bridge == null) {
                return;
            }
            this.f886d = new d(this.dq, bridge);
        }

        @Override // com.bykv.vk.openvk.api.proto.Caller
        public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
            if (i != 60000) {
                if (i != 60001 || this.dq == null) {
                    return null;
                }
                com.bytedance.msdk.core.dq.dq.d.dq.iw.d dVar = new com.bytedance.msdk.core.dq.dq.d.dq.iw.d((Bridge) valueSet.objectValue(50006, Bridge.class));
                if (dVar.dq() != 4004 && dVar.dq() != 4005) {
                    this.dq.dq(dVar.dq(), dVar.d());
                    return null;
                }
                d dVar2 = this.f886d;
                if (dVar2 == null) {
                    return null;
                }
                dVar2.dq(dVar);
                return null;
            }
            Bridge bridge = (Bridge) valueSet.objectValue(50005, Bridge.class);
            long longValue = valueSet.longValue(50012) - SystemClock.elapsedRealtime();
            com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.dq;
            if (dqVar == null || longValue <= 1000) {
                return null;
            }
            if (bridge == null) {
                dqVar.dq(-999, "adn return data is null");
                return null;
            }
            dq(bridge);
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(this.f886d);
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
        s();
        ox(context);
        p();
        iw();
    }

    private void iw() {
        no noVar;
        if (this.ox == null || (noVar = this.f854d) == null) {
            return;
        }
        int o = noVar.o();
        hat f2 = hat.f();
        f2.m(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1, new C0050dq(this));
        if (o == 2) {
            this.ox.call(40027, f2.k(), null);
        } else if (o == 0 || o == 1) {
            this.ox.call(40028, f2.k(), null);
        }
    }

    private void ox(Context context) {
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.n(50000, this.f854d.cd());
            f2.m(10000, context);
            int fw = this.dq.fw();
            if (fw < 0) {
                fw = 3000;
            } else if (fw > 5000) {
                fw = MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE;
            }
            f2.o(50011, fw);
            this.ox.call(40024, f2.k(), null);
        }
    }

    private void p() {
        Bridge bridge;
        if (this.dq.r() || (bridge = this.ox) == null) {
            return;
        }
        bridge.call(40026, null, null);
    }

    private void s() {
        HashMap hashMap = new HashMap();
        kk d2 = com.bytedance.msdk.core.d.no().bl().d();
        if (d2 != null) {
            hashMap.put("lng", String.valueOf(d2.d()));
            hashMap.put("lat", String.valueOf(d2.dq()));
            hashMap.put("loc_time", String.valueOf(System.currentTimeMillis() / 1000));
        }
        if (!this.dq.gh()) {
            hashMap.put("shakable", "0");
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

    @Override // com.bytedance.msdk.core.dq.dq.d.dq
    public void dq(final Context context) {
        if (ox()) {
            iw.p(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.mn.dq.1
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
