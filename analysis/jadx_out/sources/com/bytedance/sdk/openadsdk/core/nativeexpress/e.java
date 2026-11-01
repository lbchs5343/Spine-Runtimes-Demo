package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import com.bykv.vk.openvk.component.video.api.p.ox;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class e extends i {
    public e(Context context, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        super(context, jVar, dVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.i
    public void dq(Context context, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        NativeExpressVideoView nativeExpressVideoView = new NativeExpressVideoView(context, jVar, dVar, "embeded_ad");
        ((i) this).dq = nativeExpressVideoView;
        dq(nativeExpressVideoView, this.ox);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d, com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(final com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar) {
        NativeExpressView nativeExpressView = ((i) this).dq;
        if (nativeExpressView != null) {
            nativeExpressView.setVideoAdListener(new ox.p() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.e.1
                @Override // com.bykv.vk.openvk.component.video.api.p.ox.p
                public void J_() {
                    com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar2 = oxVar;
                    if (oxVar2 != null) {
                        oxVar2.dq();
                    }
                }

                @Override // com.bykv.vk.openvk.component.video.api.p.ox.p
                public void dq(int i, int i2) {
                    com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar2 = oxVar;
                    if (oxVar2 != null) {
                        oxVar2.dq(i, i2);
                    }
                }
            });
            ((i) this).dq.setVideoAdInteractionListener(new ox.InterfaceC0004ox() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.e.2
                @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
                public void K_() {
                    com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar2 = oxVar;
                    if (oxVar2 != null) {
                        oxVar2.d();
                    }
                }

                @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
                public void L_() {
                    com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar2 = oxVar;
                    if (oxVar2 != null) {
                        oxVar2.ox();
                    }
                }

                @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
                public void M_() {
                    com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar2 = oxVar;
                    if (oxVar2 != null) {
                        oxVar2.p();
                    }
                }

                @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
                public void N_() {
                    com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar2 = oxVar;
                    if (oxVar2 != null) {
                        oxVar2.s();
                    }
                }

                @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
                public void dq(long j, long j2) {
                    com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar2 = oxVar;
                    if (oxVar2 != null) {
                        oxVar2.dq(j, j2);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d
    public com.bytedance.sdk.openadsdk.core.multipro.d.dq no() {
        WeakReference<no> weakReference = this.s;
        if (weakReference != null && weakReference.get() != null) {
            return this.s.get().getVideoModel();
        }
        NativeExpressView nativeExpressView = ((i) this).dq;
        if (!(nativeExpressView instanceof NativeExpressVideoView)) {
            return null;
        }
        ((NativeExpressVideoView) nativeExpressView).jy();
        return ((NativeExpressVideoView) ((i) this).dq).getVideoModel();
    }
}
