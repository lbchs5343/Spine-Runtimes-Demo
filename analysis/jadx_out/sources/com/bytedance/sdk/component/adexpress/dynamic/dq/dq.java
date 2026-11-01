package com.bytedance.sdk.component.adexpress.dynamic.dq;

import android.content.Context;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.d.mn;
import com.bytedance.sdk.component.adexpress.d.mp;
import com.bytedance.sdk.component.adexpress.d.no;
import com.bytedance.sdk.component.adexpress.d.p;
import com.bytedance.sdk.component.adexpress.d.q;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicRootView;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.s;
import com.bytedance.sdk.component.adexpress.dynamic.ox.iw;
import com.bytedance.sdk.component.adexpress.dynamic.p.ia;
import com.bytedance.sdk.component.adexpress.ox;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq implements no, p<DynamicRootView> {

    /* renamed from: d, reason: collision with root package name */
    private ia f1692d;
    private DynamicRootView dq;
    private mp iw;
    private ScheduledFuture<?> mn;
    private Context ox;
    private mn p;
    private com.bytedance.sdk.component.adexpress.d.ia s;
    private AtomicBoolean ia = new AtomicBoolean(false);
    private volatile boolean kk = false;

    /* renamed from: com.bytedance.sdk.component.adexpress.dynamic.dq.dq$dq, reason: collision with other inner class name */
    public class RunnableC0105dq implements Runnable {

        /* renamed from: d, reason: collision with root package name */
        private int f1694d;

        public RunnableC0105dq(int i) {
            this.f1694d = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f1694d == 2) {
                dq.this.dq.dq(dq.this.f1692d instanceof com.bytedance.sdk.component.adexpress.dynamic.p.mn ? TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE : 117, (String) null);
            }
        }
    }

    public dq(Context context, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z, ia iaVar, mp mpVar, com.bytedance.sdk.component.adexpress.dynamic.s.dq dqVar) {
        this.ox = context;
        DynamicRootView dynamicRootView = new DynamicRootView(context, themeStatusBroadcastReceiver, z, mpVar, dqVar);
        this.dq = dynamicRootView;
        this.f1692d = iaVar;
        this.iw = mpVar;
        dynamicRootView.setRenderListener(this);
        this.iw = mpVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar) {
        float f2;
        float f3;
        List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> no;
        if (iaVar == null) {
            return;
        }
        List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> no2 = iaVar.no();
        if (no2 == null || no2.size() <= 0) {
            f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        } else {
            f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            for (com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar2 : no2) {
                if (iaVar2.mn() > iaVar.mn() - iaVar2.kk() || (no = iaVar2.no()) == null || no.size() <= 0) {
                    f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                } else {
                    f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    for (com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar3 : no) {
                        if (iaVar3.o().getType().equals("logo-union")) {
                            f3 = iaVar3.o().iw();
                            f2 = ((iaVar.mn() + (-f3)) - iaVar2.mn()) + iaVar2.o().s().sy();
                        }
                    }
                }
                d(iaVar2);
                if (f3 <= -15.0f) {
                    iaVar2.iw(iaVar2.kk() - f3);
                    iaVar2.p(iaVar2.mn() + f3);
                    for (com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar4 : iaVar2.no()) {
                        iaVar4.p(iaVar4.mn() - f3);
                    }
                }
            }
        }
        com.bytedance.sdk.component.adexpress.dynamic.ox.ia ig = iaVar.ig();
        if (ig == null) {
            return;
        }
        float iw = iaVar.iw() - ig.iw();
        float mn = iaVar.mn() - ig.mn();
        iaVar.ox(iw);
        iaVar.p(mn);
        if (f2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            iaVar.p(iaVar.mn() - f2);
            iaVar.iw(iaVar.kk() + f2);
            for (com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar5 : iaVar.no()) {
                iaVar5.p(iaVar5.mn() + f2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void dq(View view) {
        if (view == 0) {
            return;
        }
        if (view instanceof ViewGroup) {
            int i = 0;
            while (true) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (i >= viewGroup.getChildCount()) {
                    break;
                }
                dq(viewGroup.getChildAt(i));
                i++;
            }
        }
        if (view instanceof s) {
            ((s) view).d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar) {
        List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia> no;
        if (iaVar == null || (no = iaVar.no()) == null || no.size() <= 0) {
            return;
        }
        Collections.sort(no, new Comparator<com.bytedance.sdk.component.adexpress.dynamic.ox.ia>() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dq.dq.4
            @Override // java.util.Comparator
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public int compare(com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar2, com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar3) {
                iw s = iaVar2.o().s();
                iw s2 = iaVar3.o().s();
                if (s == null || s2 == null) {
                    return 0;
                }
                return s.yo() >= s2.yo() ? 1 : -1;
            }
        });
        for (com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar2 : no) {
            if (iaVar2 != null) {
                dq(iaVar2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ia() {
        this.iw.s().d(ox());
        JSONObject ox = this.iw.ox();
        if (com.bytedance.sdk.component.adexpress.dq.d.d.dq(ox)) {
            this.f1692d.dq(new com.bytedance.sdk.component.adexpress.dynamic.s.d() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dq.dq.3
                @Override // com.bytedance.sdk.component.adexpress.dynamic.s.d
                public void dq(final com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar) {
                    dq.this.o();
                    dq.this.iw.s().ox(dq.this.ox());
                    dq.this.dq(iaVar);
                    dq.this.d(iaVar);
                    if (dq.this.kk) {
                        dq.this.ox(iaVar);
                    } else {
                        com.bytedance.sdk.component.utils.ia.d().post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dq.dq.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                dq.this.ox(iaVar);
                            }
                        });
                    }
                    if (dq.this.dq == null || iaVar == null) {
                        return;
                    }
                    dq.this.dq.setBgColor(iaVar.dq());
                    dq.this.dq.setBgMaterialCenterCalcColor(iaVar.d());
                }
            });
            this.f1692d.dq(this.iw);
            return;
        }
        int i = this.f1692d instanceof com.bytedance.sdk.component.adexpress.dynamic.p.mn ? 123 : 113;
        DynamicRootView dynamicRootView = this.dq;
        StringBuilder sb = new StringBuilder("data null is ");
        sb.append(ox == null);
        dynamicRootView.dq(i, sb.toString());
    }

    private boolean kk() {
        DynamicRootView dynamicRootView = this.dq;
        return (dynamicRootView == null || dynamicRootView.getChildCount() == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        try {
            ScheduledFuture<?> scheduledFuture = this.mn;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            this.mn.cancel(false);
            this.mn = null;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar) {
        if (iaVar == null) {
            this.dq.dq(this.f1692d instanceof com.bytedance.sdk.component.adexpress.dynamic.p.mn ? 123 : 113, "layoutUnit is null");
            return;
        }
        this.iw.s().p(ox());
        try {
            this.dq.dq(iaVar, ox());
        } catch (Exception e2) {
            int i = this.f1692d instanceof com.bytedance.sdk.component.adexpress.dynamic.p.mn ? TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME : 118;
            this.dq.dq(i, "exception is " + e2.getMessage());
        }
    }

    public void d() {
        dq(mn());
    }

    public void d(boolean z) {
        this.kk = z;
    }

    @Override // com.bytedance.sdk.component.adexpress.d.p
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public DynamicRootView mn() {
        return iw();
    }

    @Override // com.bytedance.sdk.component.adexpress.d.no
    public void dq(View view, int i, ox oxVar) {
        com.bytedance.sdk.component.adexpress.d.ia iaVar = this.s;
        if (iaVar != null) {
            iaVar.dq(view, i, oxVar);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.d.no
    public void dq(View view, int i, ox oxVar, int i2) {
        com.bytedance.sdk.component.adexpress.d.ia iaVar = this.s;
        if (iaVar != null) {
            iaVar.dq(view, i, oxVar, i2);
        }
    }

    public void dq(com.bytedance.sdk.component.adexpress.d.ia iaVar) {
        this.s = iaVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.d.p
    public void dq(mn mnVar) {
        this.p = mnVar;
        int iw = this.iw.iw();
        if (iw < 0) {
            int i = this.f1692d instanceof com.bytedance.sdk.component.adexpress.dynamic.p.mn ? TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE : 117;
            this.dq.dq(i, "time is " + iw);
            return;
        }
        this.mn = com.bytedance.sdk.component.adexpress.p.p.dq(new RunnableC0105dq(2), iw, TimeUnit.MILLISECONDS);
        if (this.kk) {
            com.bytedance.sdk.component.utils.ia.ox().postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dq.dq.1
                @Override // java.lang.Runnable
                public void run() {
                    dq.this.ia();
                }
            }, this.iw.o());
        } else if (Looper.getMainLooper() != Looper.myLooper() || this.iw.o() > 0) {
            com.bytedance.sdk.component.utils.ia.d().postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dq.dq.2
                @Override // java.lang.Runnable
                public void run() {
                    dq.this.ia();
                }
            }, this.iw.o());
        } else {
            ia();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.d.no
    public void dq(q qVar) {
        if (this.ia.get()) {
            return;
        }
        this.ia.set(true);
        if (!qVar.ox() || !kk()) {
            this.p.dq(qVar.no(), qVar.o());
            return;
        }
        this.dq.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.p.dq(mn(), qVar);
    }

    public void dq(boolean z) {
        this.dq.setSoundMute(z);
    }

    public DynamicRootView iw() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.component.adexpress.d.p
    public int ox() {
        return this.f1692d instanceof com.bytedance.sdk.component.adexpress.dynamic.p.mn ? 3 : 2;
    }

    public void p() {
        this.dq.dq();
    }

    public void s() {
        this.dq.d();
    }
}
