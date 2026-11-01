package com.bytedance.sdk.openadsdk.core.le.dq;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bytedance.sdk.component.iw.f;
import com.bytedance.sdk.component.iw.no;
import com.bytedance.sdk.component.iw.q;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import java.util.Map;

/* loaded from: classes3.dex */
public class dq {

    public interface d {
        void dq(int i, String str, Throwable th);

        void dq(no noVar, com.bytedance.sdk.openadsdk.core.le.dq.d dVar);
    }

    /* renamed from: com.bytedance.sdk.openadsdk.core.le.dq.dq$dq, reason: collision with other inner class name */
    public static class C0171dq implements d {
        @Override // com.bytedance.sdk.openadsdk.core.le.dq.dq.d
        public void dq(int i, String str, Throwable th) {
        }

        @Override // com.bytedance.sdk.openadsdk.core.le.dq.dq.d
        public void dq(no noVar, com.bytedance.sdk.openadsdk.core.le.dq.d dVar) {
        }
    }

    public static C0171dq d() {
        return new C0171dq();
    }

    private int dq(no noVar) {
        Map<String, String> mn = noVar.mn();
        if (mn == null) {
            return 0;
        }
        try {
            String str = mn.get("image_size");
            if (str == null || !(str instanceof String)) {
                return 0;
            }
            return Integer.parseInt(str);
        } catch (Throwable unused) {
            return 0;
        }
    }

    public void dq() {
    }

    public void dq(int i, String str, Throwable th, d dVar) {
        if (dVar != null) {
            dVar.dq(i, str, th);
        }
    }

    public void dq(no noVar, d dVar) {
        if (dVar != null) {
            Object ox = noVar.ox();
            int dq = dq(noVar);
            if (ox instanceof byte[]) {
                dVar.dq(noVar, new com.bytedance.sdk.openadsdk.core.le.dq.d((byte[]) ox, dq));
            } else if (ox instanceof Bitmap) {
                dVar.dq(noVar, new com.bytedance.sdk.openadsdk.core.le.dq.d((Bitmap) ox, dq));
            } else {
                dVar.dq(0, "not bitmap or gif result!", null);
            }
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.mp.d dVar, final d dVar2, int i, int i2, ImageView.ScaleType scaleType, String str) {
        com.bytedance.sdk.openadsdk.ia.d.dq(dVar.dq).d(dVar.f3843d).dq(i).d(i2).ox(str).dq(Bitmap.Config.RGB_565).dq(scaleType).d(!TextUtils.isEmpty(str)).dq(new f() { // from class: com.bytedance.sdk.openadsdk.core.le.dq.dq.1
            @Override // com.bytedance.sdk.component.iw.f
            @ATSMethod(2)
            public void dq(int i3, String str2, Throwable th) {
                dq.this.dq(i3, str2, th, dVar2);
            }

            @Override // com.bytedance.sdk.component.iw.f
            @ATSMethod(1)
            public void dq(no noVar) {
                dq.this.dq(noVar, dVar2);
            }
        });
        dq();
    }

    public void dq(com.bytedance.sdk.openadsdk.mp.d dVar, final d dVar2, int i, int i2, ImageView.ScaleType scaleType, String str, int i3, q qVar, boolean z) {
        com.bytedance.sdk.openadsdk.ia.d.dq(dVar.dq).d(dVar.f3843d).dq(i).d(i2).ox(str).dq(Bitmap.Config.RGB_565).dq(scaleType).dq(qVar).dq(z).d(!TextUtils.isEmpty(str)).dq(new f() { // from class: com.bytedance.sdk.openadsdk.core.le.dq.dq.2
            @Override // com.bytedance.sdk.component.iw.f
            @ATSMethod(2)
            public void dq(int i4, String str2, Throwable th) {
                dq.this.dq(i4, str2, th, dVar2);
            }

            @Override // com.bytedance.sdk.component.iw.f
            @ATSMethod(1)
            public void dq(no noVar) {
                dq.this.dq(noVar, dVar2);
            }
        }, i3);
        dq();
    }

    public void dq(com.bytedance.sdk.openadsdk.mp.d dVar, d dVar2, int i, int i2, String str) {
        dq(dVar, dVar2, i, i2, ImageView.ScaleType.CENTER_INSIDE, str);
    }

    public void dq(com.bytedance.sdk.openadsdk.mp.d dVar, d dVar2, int i, int i2, String str, int i3, q qVar, boolean z) {
        dq(dVar, dVar2, i, i2, ImageView.ScaleType.CENTER_INSIDE, str, i3, qVar, z);
    }
}
