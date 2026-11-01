package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.component.utils.e;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class EmptyView extends View implements e.dq {

    /* renamed from: d, reason: collision with root package name */
    private volatile boolean f2426d;
    private volatile boolean dq;
    private int ia;
    private com.bytedance.sdk.openadsdk.core.q.ox.ox ig;
    private List<View> iw;
    private final Handler kk;
    private List<View> mn;
    private com.bytedance.sdk.openadsdk.core.r.j mp;
    private int no;
    private final AtomicBoolean o;
    private dq ox;
    private View p;
    private List<View> s;

    public static final class d implements dq {
        private final dq dq;

        public d(dq dqVar) {
            this.dq = dqVar;
        }

        @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
        public void d() {
            if (this.dq != null) {
                com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.EmptyView.d.3
                    @Override // java.lang.Runnable
                    public void run() {
                        d.this.dq.d();
                    }
                });
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
        public void dq() {
            if (this.dq != null) {
                com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.EmptyView.d.2
                    @Override // java.lang.Runnable
                    public void run() {
                        d.this.dq.dq();
                    }
                });
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
        public void dq(final View view) {
            if (this.dq != null) {
                com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.EmptyView.d.4
                    @Override // java.lang.Runnable
                    public void run() {
                        d.this.dq.dq(view);
                    }
                });
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.EmptyView.dq
        public void dq(final boolean z) {
            if (this.dq != null) {
                com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.EmptyView.d.1
                    @Override // java.lang.Runnable
                    public void run() {
                        d.this.dq.dq(z);
                    }
                });
            }
        }
    }

    public interface dq {
        void d();

        void dq();

        void dq(View view);

        void dq(boolean z);
    }

    public EmptyView(Context context, View view) {
        super(wp.getContext());
        this.o = new AtomicBoolean(true);
        this.no = 1000;
        this.p = view;
        setLayoutParams(new ViewGroup.LayoutParams(0, 0));
        this.kk = new com.bytedance.sdk.component.utils.e(wp.d().zc() ? com.bytedance.sdk.component.utils.ia.ox().getLooper() : com.bytedance.sdk.component.utils.ia.d().getLooper(), this);
    }

    public EmptyView(Context context, View view, int i) {
        this(context, view);
        this.no = i;
    }

    private void d() {
        dq dqVar;
        if (!this.o.getAndSet(false) || (dqVar = this.ox) == null) {
            return;
        }
        dqVar.dq();
    }

    private void iw() {
        String dq2 = com.bytedance.sdk.openadsdk.core.r.u.dq(this.mp);
        if (com.bytedance.sdk.openadsdk.core.r.u.d(this.mp)) {
            this.ig = com.bytedance.sdk.openadsdk.core.q.ox.dq.dq().dq(dq2, com.bytedance.sdk.openadsdk.core.r.u.p(this.mp));
        }
        com.bytedance.sdk.openadsdk.core.q.ox.ox oxVar = this.ig;
        if (oxVar != null) {
            oxVar.dq(true, this.mp);
        }
    }

    private void mn() {
        com.bytedance.sdk.openadsdk.core.q.ox.ox oxVar = this.ig;
        if (oxVar != null) {
            oxVar.ox();
        }
    }

    private void ox() {
        dq dqVar;
        if (this.o.getAndSet(true) || (dqVar = this.ox) == null) {
            return;
        }
        dqVar.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        this.kk.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.EmptyView.1
            @Override // java.lang.Runnable
            public void run() {
                if (!EmptyView.this.f2426d || EmptyView.this.dq) {
                    return;
                }
                EmptyView.this.dq = true;
                EmptyView.this.kk.sendEmptyMessage(1);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        this.kk.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.EmptyView.2
            @Override // java.lang.Runnable
            public void run() {
                if (EmptyView.this.dq) {
                    EmptyView.this.kk.removeMessages(1);
                    EmptyView.this.dq = false;
                }
            }
        });
    }

    public void dq() {
        dq(this.s, (com.bytedance.sdk.openadsdk.core.d.p) null);
        dq(this.iw, (com.bytedance.sdk.openadsdk.core.d.p) null);
        dq(this.mn, (com.bytedance.sdk.openadsdk.core.d.p) null);
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        if (message.what == 1 && this.dq) {
            if (!er.dq(this.p, 20, this.ia)) {
                this.kk.sendEmptyMessageDelayed(1, this.no);
                return;
            }
            s();
            dq dqVar = this.ox;
            if (dqVar != null) {
                dqVar.dq(this.p);
            }
        }
    }

    public void dq(List<View> list, com.bytedance.sdk.openadsdk.core.d.p pVar) {
        if (com.bytedance.sdk.component.utils.o.d(list)) {
            for (View view : list) {
                if (view != null) {
                    view.setOnClickListener(pVar);
                    view.setOnTouchListener(pVar);
                }
            }
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        p();
        d();
        iw();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        s();
        ox();
        mn();
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        d();
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        ox();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.dq(z);
        }
    }

    public void setAdType(int i) {
        this.ia = i;
    }

    public void setCallback(dq dqVar) {
        this.ox = new d(dqVar);
    }

    public void setMaterialMeta(com.bytedance.sdk.openadsdk.core.r.j jVar) {
        this.mp = jVar;
    }

    public void setNeedCheckingShow(final boolean z) {
        this.kk.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.EmptyView.3
            @Override // java.lang.Runnable
            public void run() {
                EmptyView.this.f2426d = z;
                if (!z && EmptyView.this.dq) {
                    EmptyView.this.s();
                } else {
                    if (!z || EmptyView.this.dq) {
                        return;
                    }
                    EmptyView.this.p();
                }
            }
        });
    }

    public void setRefClickViews(List<View> list) {
        this.s = list;
    }

    public void setRefCreativeViews(List<View> list) {
        this.iw = list;
    }

    public void setRefDirectDownloadViews(List<View> list) {
        this.mn = list;
    }
}
