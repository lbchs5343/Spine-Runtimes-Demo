package com.bytedance.sdk.openadsdk.core.dislike.ui;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.f.d.d.ia;
import com.bytedance.sdk.openadsdk.f.d.d.iw;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class dq extends ia {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.dislike.ox.d f2812d;
    private final Context dq;
    private SoftReference<View> ia;
    private AtomicBoolean iw;
    private d kk;
    private boolean mn;
    private com.bytedance.sdk.openadsdk.core.dislike.d.dq no;
    private InterfaceC0156dq o;
    private ox ox;
    private com.bytedance.sdk.openadsdk.core.dislike.ui.d p;
    private TTDislikeToast s;

    public static class d extends Handler {
        public WeakReference<Context> dq;

        public d(Context context) {
            this.dq = new WeakReference<>(context);
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.core.dislike.ui.dq$dq, reason: collision with other inner class name */
    public interface InterfaceC0156dq {
        void d();

        void dq();

        void dq(int i, String str, boolean z);
    }

    public dq(Context context, com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar, String str, boolean z) {
        this.iw = new AtomicBoolean(false);
        dVar.d(str);
        dVar.dq("other");
        this.dq = context;
        if (context == null) {
            return;
        }
        if (!(context instanceof Activity)) {
            ig.d("Dislike 初始化必须使用activity,请在TTAdManager.createAdNative(activity)中传入");
            return;
        }
        this.f2812d = dVar;
        this.mn = z;
        if (Looper.getMainLooper() == Looper.myLooper()) {
            p();
        } else {
            com.bytedance.sdk.component.utils.ia.d().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dislike.ui.dq.1
                @Override // java.lang.Runnable
                public void run() {
                    dq.this.p();
                }
            });
        }
    }

    public dq(Context context, com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar, boolean z) {
        this(context, dVar, null, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void iw() {
        com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar = this.f2812d;
        if (dVar == null) {
            return;
        }
        final String mn = dVar.mn();
        if ("slide_banner_ad".equals(mn) || "banner_ad".equals(mn) || "embeded_ad".equals(mn)) {
            if (this.ia.get() != null && this.f2812d.ia()) {
                this.ia.get().setVisibility(8);
            }
            if (this.kk == null) {
                this.kk = new d(this.dq);
            }
            this.kk.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dislike.ui.dq.5
                @Override // java.lang.Runnable
                public void run() {
                    dq.this.f2812d.d("dislike");
                    if (dq.this.ia == null || dq.this.ia.get() == null || !((View) dq.this.ia.get()).isShown()) {
                        com.bytedance.sdk.openadsdk.core.dislike.dq.dq.dq().dq(dq.this.dq, dq.this.f2812d, "close_success");
                    } else {
                        com.bytedance.sdk.openadsdk.core.dislike.dq.dq.dq().dq(dq.this.dq, dq.this.f2812d, "close_fail");
                    }
                    dq.this.f2812d.d(mn);
                }
            }, 500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        ViewGroup viewGroup;
        ox oxVar = new ox(this.dq, this.f2812d);
        this.ox = oxVar;
        oxVar.dq(new com.bytedance.sdk.openadsdk.core.dislike.d.ox() { // from class: com.bytedance.sdk.openadsdk.core.dislike.ui.dq.2
            @Override // com.bytedance.sdk.openadsdk.core.dislike.d.ox
            public void d() {
                if (dq.this.o != null) {
                    dq.this.o.dq();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.dislike.d.ox
            public void dq() {
                dq.this.s();
            }

            @Override // com.bytedance.sdk.openadsdk.core.dislike.d.ox
            public void dq(int i, iw iwVar) {
                try {
                    if (dq.this.no != null) {
                        if (dq.this.no.dq(iwVar, dq.this.p != null ? dq.this.p.p() : "", dq.this.p)) {
                            ig.d("TTAdDislikeImpl", "click feedback :" + iwVar.d() + ":" + iwVar.dq());
                        }
                    }
                    if (!iwVar.iw()) {
                        if (dq.this.o != null) {
                            dq.this.o.dq(i, iwVar.d(), dq.this.f2812d != null ? dq.this.f2812d.ia() : false);
                        }
                        dq.this.iw.set(true);
                        if (dq.this.s != null) {
                            dq.this.s.dq();
                        }
                        dq.this.iw();
                    }
                    ig.p("TTAdDislikeImpl", "onDislikeSelected: " + i + ", " + iwVar.d());
                } catch (Throwable th) {
                    ig.d("TTAdDislikeImpl", "dislike callback selected error: ", th);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.dislike.d.ox
            public void ox() {
                ig.p("TTAdDislikeImpl", "onDislikeHide: ");
                try {
                    if (dq.this.o == null || dq.this.ox()) {
                        return;
                    }
                    dq.this.o.d();
                } catch (Throwable th) {
                    ig.d("TTAdDislikeImpl", "dislike callback cancel error: ", th);
                }
            }
        });
        com.bytedance.sdk.openadsdk.core.dislike.ui.d dVar = new com.bytedance.sdk.openadsdk.core.dislike.ui.d(this.dq, this.f2812d);
        this.p = dVar;
        dVar.dq(new com.bytedance.sdk.openadsdk.core.dislike.d.d() { // from class: com.bytedance.sdk.openadsdk.core.dislike.ui.dq.3
            @Override // com.bytedance.sdk.openadsdk.core.dislike.d.d
            public void dq() {
                try {
                    if (dq.this.iw.get()) {
                        return;
                    }
                    dq.this.ox.show();
                    if (dq.this.p != null) {
                        String p = dq.this.p.p();
                        if (TextUtils.isEmpty(p)) {
                            return;
                        }
                        dq.this.ox.dq(p);
                    }
                } catch (Throwable th) {
                    ig.d("TTAdDislikeImpl", "dislike callback selected error: ", th);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.dislike.d.d
            public void dq(int i, iw iwVar) {
                try {
                    if (iwVar.iw()) {
                        return;
                    }
                    if (dq.this.o != null) {
                        dq.this.o.dq(i, iwVar.d(), dq.this.f2812d != null ? dq.this.f2812d.ia() : false);
                    }
                    dq.this.iw.set(true);
                    if (dq.this.s != null) {
                        dq.this.s.dq();
                    }
                    dq.this.iw();
                } catch (Throwable th) {
                    ig.d("TTAdDislikeImpl", "comment callback selected error: ", th);
                }
            }
        });
        if ((this.dq instanceof Activity) && this.mn) {
            this.s = new TTDislikeToast(this.dq);
            Window window = ((Activity) this.dq).getWindow();
            if (window == null || (viewGroup = (ViewGroup) window.getDecorView()) == null) {
                return;
            }
            viewGroup.addView(this.s);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        Context context = this.dq;
        if (!(context instanceof Activity) || ((Activity) context).isFinishing() || this.p.isShowing()) {
            return;
        }
        this.p.show();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ia
    public void d() {
        if (this.dq instanceof Activity) {
            ox oxVar = this.ox;
            if (oxVar != null) {
                oxVar.hide();
            }
            com.bytedance.sdk.openadsdk.core.dislike.ui.d dVar = this.p;
            if (dVar != null) {
                dVar.dq();
            }
            TTDislikeToast tTDislikeToast = this.s;
            if (tTDislikeToast != null) {
                tTDislikeToast.ox();
            }
            this.iw.set(false);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ia
    public void dq() {
        TTDislikeToast tTDislikeToast;
        Context context = this.dq;
        boolean z = (context instanceof Activity) && !((Activity) context).isFinishing();
        if (this.iw.get() && this.mn && (tTDislikeToast = this.s) != null) {
            tTDislikeToast.d();
        } else {
            if (!z || ox()) {
                return;
            }
            this.ox.show();
        }
    }

    public void dq(View view) {
        this.ia = new SoftReference<>(view);
    }

    public void dq(com.bytedance.sdk.openadsdk.core.dislike.d.dq dqVar) {
        this.no = dqVar;
        com.bytedance.sdk.openadsdk.core.dislike.ui.d dVar = this.p;
        if (dVar != null) {
            dVar.dq(dqVar);
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar) {
        if ((this.dq instanceof Activity) && dVar != null) {
            this.ox.dq(dVar);
            this.p.dq(dVar);
        }
    }

    public void dq(InterfaceC0156dq interfaceC0156dq) {
        this.o = interfaceC0156dq;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ia
    public void dq(final com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
        this.o = new InterfaceC0156dq() { // from class: com.bytedance.sdk.openadsdk.core.dislike.ui.dq.4
            @Override // com.bytedance.sdk.openadsdk.core.dislike.ui.dq.InterfaceC0156dq
            public void d() {
                com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar2 = dqVar;
                if (dqVar2 != null) {
                    dqVar2.d();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.dislike.ui.dq.InterfaceC0156dq
            public void dq() {
                com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar2 = dqVar;
                if (dqVar2 != null) {
                    dqVar2.dq();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.dislike.ui.dq.InterfaceC0156dq
            public void dq(int i, String str, boolean z) {
                com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar2 = dqVar;
                if (dqVar2 != null) {
                    dqVar2.dq(i, str, z);
                }
            }
        };
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ia
    public void dq(String str) {
        com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar = this.f2812d;
        if (dVar != null) {
            dVar.dq(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ia
    public boolean ox() {
        if (!(this.dq instanceof Activity)) {
            return false;
        }
        ox oxVar = this.ox;
        boolean isShowing = oxVar != null ? oxVar.isShowing() : false;
        com.bytedance.sdk.openadsdk.core.dislike.ui.d dVar = this.p;
        return dVar != null ? dVar.isShowing() | isShowing : isShowing;
    }
}
