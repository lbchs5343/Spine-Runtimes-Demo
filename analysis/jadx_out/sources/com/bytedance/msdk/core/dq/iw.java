package com.bytedance.msdk.core.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;

/* loaded from: classes.dex */
public class iw {
    public static com.bytedance.msdk.api.p.dq.ox.p dq(final Bridge bridge) {
        if (bridge != null) {
            return new com.bytedance.msdk.api.p.dq.ox.p() { // from class: com.bytedance.msdk.core.dq.iw.1
                @Override // com.bytedance.msdk.api.p.dq.mn.iw
                public void d() {
                    Bridge.this.call(8170, null, null);
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.iw
                public void d(long j) {
                    hat f2 = hat.f();
                    f2.h(8074, j);
                    Bridge.this.call(8167, f2.k(), null);
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.iw
                public void dq() {
                    Bridge.this.call(8168, null, null);
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.iw
                public void dq(int i, int i2) {
                    hat f2 = hat.f();
                    f2.o(8014, i);
                    f2.o(8075, i2);
                    Bridge.this.call(8171, f2.k(), null);
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.iw
                public void dq(long j) {
                    hat f2 = hat.f();
                    f2.h(8074, j);
                    Bridge.this.call(8166, f2.k(), null);
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.iw
                public void dq(long j, int i, int i2) {
                    hat f2 = hat.f();
                    f2.h(8074, j);
                    f2.o(8014, i);
                    f2.o(8075, i2);
                    Bridge.this.call(8172, f2.k(), null);
                }

                @Override // com.bytedance.msdk.api.p.dq.mn.iw
                public void ox(long j) {
                    hat f2 = hat.f();
                    f2.h(8074, j);
                    Bridge.this.call(8169, f2.k(), null);
                }
            };
        }
        return null;
    }
}
