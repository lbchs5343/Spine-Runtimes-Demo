package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.jy.dq;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class d extends com.bytedance.sdk.openadsdk.f.d.p {
    private int[] dq;
    protected dq ia;
    protected Dialog kk;

    public static class dq implements com.bytedance.sdk.openadsdk.core.o.d.dq {

        /* renamed from: d, reason: collision with root package name */
        private String f3216d;
        private WeakReference<com.bytedance.sdk.openadsdk.core.o.d.dq> dq;

        public dq(com.bytedance.sdk.openadsdk.core.o.d.dq dqVar, String str) {
            this.f3216d = "";
            this.dq = new WeakReference<>(dqVar);
            this.f3216d = str;
        }

        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void d(long j, long j2, String str, String str2) {
            long j3;
            long j4;
            WeakReference<com.bytedance.sdk.openadsdk.core.o.d.dq> weakReference = this.dq;
            if (weakReference == null || weakReference.get() == null) {
                j3 = j;
                j4 = j2;
            } else {
                j3 = j;
                j4 = j2;
                this.dq.get().d(j3, j4, str, str2);
            }
            if (j3 > 0) {
                dq.C0166dq.dq(this.f3216d, 2, (int) ((j4 * 100) / j3));
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void dq() {
            WeakReference<com.bytedance.sdk.openadsdk.core.o.d.dq> weakReference = this.dq;
            if (weakReference != null && weakReference.get() != null) {
                this.dq.get().dq();
            }
            dq.C0166dq.dq(this.f3216d, 1, 0);
        }

        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void dq(long j, long j2, String str, String str2) {
            long j3;
            long j4;
            WeakReference<com.bytedance.sdk.openadsdk.core.o.d.dq> weakReference = this.dq;
            if (weakReference == null || weakReference.get() == null) {
                j3 = j;
                j4 = j2;
            } else {
                j3 = j;
                j4 = j2;
                this.dq.get().dq(j3, j4, str, str2);
            }
            if (j3 > 0) {
                dq.C0166dq.dq(this.f3216d, 3, (int) ((j4 * 100) / j3));
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void dq(long j, String str, String str2) {
            WeakReference<com.bytedance.sdk.openadsdk.core.o.d.dq> weakReference = this.dq;
            if (weakReference != null && weakReference.get() != null) {
                this.dq.get().dq(j, str, str2);
            }
            dq.C0166dq.dq(this.f3216d, 5, 100);
        }

        public void dq(com.bytedance.sdk.openadsdk.core.o.d.dq dqVar) {
            this.dq = new WeakReference<>(dqVar);
        }

        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void dq(String str, String str2) {
            WeakReference<com.bytedance.sdk.openadsdk.core.o.d.dq> weakReference = this.dq;
            if (weakReference != null && weakReference.get() != null) {
                this.dq.get().dq(str, str2);
            }
            dq.C0166dq.dq(this.f3216d, 6, 100);
        }

        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void ox(long j, long j2, String str, String str2) {
            long j3;
            long j4;
            WeakReference<com.bytedance.sdk.openadsdk.core.o.d.dq> weakReference = this.dq;
            if (weakReference == null || weakReference.get() == null) {
                j3 = j;
                j4 = j2;
            } else {
                j3 = j;
                j4 = j2;
                this.dq.get().ox(j3, j4, str, str2);
            }
            if (j3 > 0) {
                dq.C0166dq.dq(this.f3216d, 4, (int) ((j4 * 100) / j3));
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public int d() {
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void d(Double d2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public View dq() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public com.bytedance.sdk.openadsdk.f.d.d.ia dq(Activity activity) {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
    }

    public void dq(Dialog dialog) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.p
    public void dq(Dialog dialog, int[] iArr) {
        this.kk = dialog;
        this.dq = iArr;
        try {
            dialog.getWindow().getDecorView().addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.d.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                    if (d.this.o() != null) {
                        d dVar = d.this;
                        dVar.dq(dVar.o().ez());
                    }
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                }
            });
        } catch (Throwable unused) {
        }
        dq(this.kk);
    }

    public void dq(com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar) {
        Dialog dialog;
        if (dVar == null || (dialog = this.kk) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.dislike.dq.d.dq(dVar, dialog, this.dq);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.d dVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.dq dqVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.dq dqVar) {
        if (o() != null) {
            com.bytedance.sdk.openadsdk.core.e.dq(o().ff(), dqVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2, String str, String str2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public Map<String, Object> ia() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public com.bytedance.sdk.openadsdk.f.d.d.p iw() {
        return null;
    }

    public com.bytedance.sdk.openadsdk.core.multipro.d.dq no() {
        return null;
    }

    public abstract j o();

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public int ox() {
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void p() {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void s() {
        if (o() != null) {
            com.bytedance.sdk.openadsdk.core.e.dq(o().ff());
        }
    }
}
