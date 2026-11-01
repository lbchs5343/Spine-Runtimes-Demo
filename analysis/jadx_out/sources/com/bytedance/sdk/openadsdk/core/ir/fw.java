package com.bytedance.sdk.openadsdk.core.ir;

import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import com.bytedance.sdk.openadsdk.core.le.dq.dq;

/* loaded from: classes3.dex */
public class fw {

    public interface dq {
        void dq();

        void dq(com.bytedance.sdk.openadsdk.core.le.dq.d dVar, com.bytedance.sdk.component.iw.no noVar);
    }

    public static Drawable dq(byte[] bArr, int i) {
        if (bArr == null || bArr.length <= 0) {
            return new ColorDrawable(0);
        }
        try {
            return new BitmapDrawable(BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
        } catch (Throwable unused) {
            return new ColorDrawable(0);
        }
    }

    public static void dq(com.bytedance.sdk.openadsdk.mp.d dVar, int i, int i2, final dq dqVar, String str) {
        com.bytedance.sdk.component.utils.ig.p("splashLoadAd", " getImageBytes url ".concat(String.valueOf(dVar)));
        com.bytedance.sdk.openadsdk.core.le.s.dq().ox().dq(dVar, new dq.d() { // from class: com.bytedance.sdk.openadsdk.core.ir.fw.1
            @Override // com.bytedance.sdk.openadsdk.core.le.dq.dq.d
            public void dq(int i3, String str2, Throwable th) {
                dq dqVar2 = dq.this;
                if (dqVar2 != null) {
                    dqVar2.dq();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.le.dq.dq.d
            public void dq(com.bytedance.sdk.component.iw.no noVar, com.bytedance.sdk.openadsdk.core.le.dq.d dVar2) {
                dq dqVar2;
                if (dVar2.p() && (dqVar2 = dq.this) != null) {
                    dqVar2.dq(dVar2, noVar);
                    return;
                }
                dq dqVar3 = dq.this;
                if (dqVar3 != null) {
                    dqVar3.dq();
                }
            }
        }, i, i2, str);
    }

    public static void dq(com.bytedance.sdk.openadsdk.mp.d dVar, int i, int i2, final dq dqVar, String str, int i3, com.bytedance.sdk.component.iw.q qVar, boolean z) {
        com.bytedance.sdk.component.utils.ig.p("splashLoadAd", " getImageBytes url ".concat(String.valueOf(dVar)));
        com.bytedance.sdk.openadsdk.core.le.s.dq().ox().dq(dVar, new dq.d() { // from class: com.bytedance.sdk.openadsdk.core.ir.fw.2
            @Override // com.bytedance.sdk.openadsdk.core.le.dq.dq.d
            public void dq(int i4, String str2, Throwable th) {
                dq dqVar2 = dq.this;
                if (dqVar2 != null) {
                    dqVar2.dq();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.le.dq.dq.d
            public void dq(com.bytedance.sdk.component.iw.no noVar, com.bytedance.sdk.openadsdk.core.le.dq.d dVar2) {
                dq dqVar2;
                if (dVar2.p() && (dqVar2 = dq.this) != null) {
                    dqVar2.dq(dVar2, noVar);
                    return;
                }
                dq dqVar3 = dq.this;
                if (dqVar3 != null) {
                    dqVar3.dq();
                }
            }
        }, i, i2, str, i3, qVar, z);
    }
}
