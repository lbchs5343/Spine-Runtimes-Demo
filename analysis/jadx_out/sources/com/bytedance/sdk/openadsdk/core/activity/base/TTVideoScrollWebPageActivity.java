package com.bytedance.sdk.openadsdk.core.activity.base;

import android.os.Bundle;
import android.view.View;
import com.bykv.vk.openvk.component.video.api.p.ox;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.res.s;
import com.bytedance.sdk.openadsdk.widget.TTScrollView;

/* loaded from: classes3.dex */
public class TTVideoScrollWebPageActivity extends TTVideoWebPageActivity {
    private TTScrollView p;

    @Override // com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TTScrollView tTScrollView = (TTScrollView) findViewById(2114387878);
        this.p = tTScrollView;
        tTScrollView.setListener(new TTScrollView.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoScrollWebPageActivity.1
            @Override // com.bytedance.sdk.openadsdk.widget.TTScrollView.dq
            public void dq(boolean z) {
                try {
                    ox oxVar = TTVideoScrollWebPageActivity.this.ox;
                    if (oxVar != null && (oxVar instanceof com.bytedance.sdk.openadsdk.core.video.nativevideo.ox)) {
                        if (!z || oxVar.r()) {
                            TTVideoScrollWebPageActivity.this.ox.iw();
                        } else {
                            ((com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) TTVideoScrollWebPageActivity.this.ox).iw(false);
                        }
                    }
                } catch (Throwable th) {
                    ig.d("TTVideoScrollWebPageActivity", "onCreate isShow error", th);
                }
            }
        });
        ox oxVar = this.ox;
        if (oxVar != null) {
            oxVar.p(false);
        }
        NativeVideoTsView nativeVideoTsView = this.f2457d;
        if (nativeVideoTsView != null) {
            nativeVideoTsView.setVideoAdInteractionListener(new ox.InterfaceC0004ox() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoScrollWebPageActivity.2
                @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
                public void K_() {
                    ox oxVar2;
                    if (TTVideoScrollWebPageActivity.this.p == null || TTVideoScrollWebPageActivity.this.p.dq() || (oxVar2 = TTVideoScrollWebPageActivity.this.ox) == null) {
                        return;
                    }
                    oxVar2.mn();
                }

                @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
                public void L_() {
                }

                @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
                public void M_() {
                }

                @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
                public void N_() {
                }

                @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
                public void dq(long j, long j2) {
                }
            });
        }
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        super.setContentView(s.j(this));
    }
}
