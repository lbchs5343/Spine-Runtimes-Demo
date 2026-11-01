package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.d.mp;
import com.bytedance.sdk.component.adexpress.dynamic.interact.InteractViewContainer;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;
import com.bytedance.sdk.component.adexpress.dynamic.p.kk;
import com.bytedance.sdk.component.adexpress.p.mn;
import com.bytedance.sdk.component.adexpress.widget.GifView;
import com.bytedance.sdk.component.iw.f;
import com.bytedance.sdk.component.iw.no;
import com.bytedance.sdk.component.iw.o;
import com.bytedance.sdk.component.utils.le;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import g.abn;
import g.awf;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class DynamicBaseWidgetImp extends DynamicBaseWidget {
    private static String r = "";

    /* renamed from: d, reason: collision with root package name */
    private Runnable f1703d;
    private Runnable dq;
    protected InteractViewContainer gh;
    private volatile boolean i;
    private ImageView le;

    public static class d implements f<Bitmap> {

        /* renamed from: d, reason: collision with root package name */
        private final WeakReference<DynamicBaseWidget> f1707d;
        private final WeakReference<View> dq;

        public d(View view, DynamicBaseWidget dynamicBaseWidget) {
            this.dq = new WeakReference<>(view);
            this.f1707d = new WeakReference<>(dynamicBaseWidget);
        }

        @Override // com.bytedance.sdk.component.iw.f
        @ATSMethod(2)
        public void dq(int i, String str, Throwable th) {
        }

        @Override // com.bytedance.sdk.component.iw.f
        @ATSMethod(1)
        public void dq(no<Bitmap> noVar) {
            Bitmap ox;
            DynamicBaseWidget dynamicBaseWidget;
            View view = this.dq.get();
            if (view == null || (ox = noVar.ox()) == null || noVar.p() == null || (dynamicBaseWidget = this.f1707d.get()) == null) {
                return;
            }
            view.setBackground(dynamicBaseWidget.dq(ox));
        }
    }

    public static class dq implements f<Bitmap> {

        /* renamed from: d, reason: collision with root package name */
        private final WeakReference<DynamicRootView> f1708d;
        private final WeakReference<View> dq;
        private final ia ox;

        public dq(View view, DynamicRootView dynamicRootView, ia iaVar) {
            this.dq = new WeakReference<>(view);
            this.f1708d = new WeakReference<>(dynamicRootView);
            this.ox = iaVar;
        }

        @Override // com.bytedance.sdk.component.iw.f
        @ATSMethod(2)
        public void dq(int i, String str, Throwable th) {
        }

        @Override // com.bytedance.sdk.component.iw.f
        @ATSMethod(1)
        public void dq(no<Bitmap> noVar) {
            View view = this.dq.get();
            if (!com.bytedance.sdk.component.adexpress.p.dq()) {
                DynamicRootView dynamicRootView = this.f1708d.get();
                if (dynamicRootView == null) {
                    return;
                }
                if ("open_ad".equals(dynamicRootView.getRenderRequest().p()) || "splash_ad".equals(dynamicRootView.getRenderRequest().p())) {
                    view.setBackground(new BitmapDrawable(noVar.ox()));
                    return;
                } else {
                    view.setBackground(new BitmapDrawable(noVar.ox()));
                    return;
                }
            }
            if (view == null) {
                return;
            }
            view.setBackground(new BitmapDrawable(noVar.ox()));
            ia iaVar = this.ox;
            if (iaVar == null || iaVar.o() == null || 6 != this.ox.o().dq() || view.getBackground() == null) {
                return;
            }
            view.getBackground().setAutoMirrored(true);
        }
    }

    public static class ox implements com.bytedance.sdk.component.iw.ia {

        /* renamed from: d, reason: collision with root package name */
        private final int f1709d;
        private final WeakReference<Context> dq;

        public ox(Context context, int i) {
            this.dq = new WeakReference<>(context);
            this.f1709d = i;
        }

        @Override // com.bytedance.sdk.component.iw.ia
        @ATSMethod(1)
        public Bitmap dq(Bitmap bitmap) {
            Context context = this.dq.get();
            if (context != null) {
                return com.bytedance.sdk.component.adexpress.p.dq.dq(context, bitmap, this.f1709d);
            }
            return null;
        }
    }

    public DynamicBaseWidgetImp(Context context, DynamicRootView dynamicRootView, ia iaVar) {
        super(context, dynamicRootView, iaVar);
        this.i = true;
        setTag(Integer.valueOf(getClickArea()));
        String type = iaVar.o().getType();
        if ("logo-union".equals(type)) {
            dynamicRootView.setLogoUnionHeight(this.ia - ((int) mn.dq(context, this.ig.dq() + this.ig.d())));
        } else if ("scoreCountWithIcon".equals(type)) {
            dynamicRootView.setScoreCountWithIcon(this.ia - ((int) mn.dq(context, this.ig.dq() + this.ig.d())));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable d(String str) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            ArrayList arrayList = new ArrayList();
            String str2 = "";
            for (int i = 0; i < jSONArray.length(); i++) {
                if (jSONArray.getString(i).startsWith("#")) {
                    arrayList.add(jSONArray.getString(i));
                } else if (jSONArray.getString(i).endsWith("deg")) {
                    str2 = jSONArray.getString(i);
                }
            }
            if (arrayList.size() <= 0) {
                return null;
            }
            int[] iArr = new int[arrayList.size()];
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                iArr[i2] = com.bytedance.sdk.component.adexpress.dynamic.ox.mn.dq(((String) arrayList.get(i2)).substring(0, 7));
            }
            GradientDrawable dq2 = dq(dq(str2), iArr);
            dq2.setShape(0);
            dq2.setCornerRadius(mn.dq(this.no, this.ig.jy()));
            return dq2;
        } catch (Throwable unused) {
            return null;
        }
    }

    private String dq(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof JSONArray) {
            return dq(((JSONArray) obj).opt(0));
        }
        if (obj instanceof JSONObject) {
            return dq((Object) ((JSONObject) obj).optString(abn.EXTRA_URL));
        }
        return null;
    }

    private void dq(double d2, final View view) {
        if (d2 > 0.0d) {
            com.bytedance.sdk.component.utils.ia.d().postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.5
                @Override // java.lang.Runnable
                public void run() {
                    if (DynamicBaseWidgetImp.this.mp.o().s().dk() != null) {
                        return;
                    }
                    view.setVisibility(0);
                    DynamicBaseWidgetImp.this.setVisibility(0);
                }
            }, (long) (d2 * 1000.0d));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(ViewGroup viewGroup) {
        if (viewGroup == null || viewGroup.getChildCount() <= 0) {
            return;
        }
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            if (viewGroup.getChildAt(i) instanceof InteractViewContainer) {
                viewGroup.removeViewAt(i);
            }
        }
    }

    private static void dq(o oVar) {
        if ("SMARTISAN".equals(Build.BRAND) && "SM901".equals(getBuildModel())) {
            oVar.dq(Bitmap.Config.ARGB_8888);
        }
    }

    private void dq(o oVar, final View view) {
        oVar.dq(new f<Bitmap>() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.3
            @Override // com.bytedance.sdk.component.iw.f
            @ATSMethod(2)
            public void dq(int i, String str, Throwable th) {
            }

            @Override // com.bytedance.sdk.component.iw.f
            @ATSMethod(1)
            public void dq(no<Bitmap> noVar) {
                DynamicRootView dynamicRootView = DynamicBaseWidgetImp.this.q;
                if (dynamicRootView == null) {
                    return;
                }
                if (!"open_ad".equals(dynamicRootView.getRenderRequest().p()) && !"splash_ad".equals(DynamicBaseWidgetImp.this.q.getRenderRequest().p())) {
                    view.setBackground(new BitmapDrawable(noVar.ox()));
                } else {
                    if (!com.bytedance.sdk.component.adexpress.p.dq()) {
                        view.setBackground(new BitmapDrawable(noVar.ox()));
                        return;
                    }
                    view.setBackground(new com.bytedance.sdk.component.adexpress.dynamic.dynamicview.dq(noVar.ox(), ((DynamicRoot) DynamicBaseWidgetImp.this.q.getChildAt(0)).dq));
                }
            }
        });
    }

    private static String getBuildModel() {
        try {
            r = le.dq();
        } catch (Throwable unused) {
            r = Build.MODEL;
        }
        if (TextUtils.isEmpty(r)) {
            r = Build.MODEL;
        }
        return r;
    }

    private void kk() {
        if (this.i) {
            int by = this.ig.by();
            int uh = this.ig.uh();
            Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.6
                @Override // java.lang.Runnable
                public void run() {
                    DynamicRootView dynamicRootView = DynamicBaseWidgetImp.this.q;
                    if (dynamicRootView == null || dynamicRootView.getRenderRequest() == null) {
                        DynamicBaseWidgetImp dynamicBaseWidgetImp = DynamicBaseWidgetImp.this;
                        DynamicBaseWidgetImp dynamicBaseWidgetImp2 = DynamicBaseWidgetImp.this;
                        dynamicBaseWidgetImp.gh = new InteractViewContainer(dynamicBaseWidgetImp2.no, dynamicBaseWidgetImp2, dynamicBaseWidgetImp2.ig);
                    } else {
                        mp renderRequest = DynamicBaseWidgetImp.this.q.getRenderRequest();
                        com.bytedance.sdk.component.adexpress.dynamic.ox.o oVar = new com.bytedance.sdk.component.adexpress.dynamic.ox.o();
                        oVar.dq(renderRequest.f());
                        oVar.d(renderRequest.fw());
                        oVar.ox(renderRequest.cd());
                        oVar.dq(renderRequest.gh());
                        oVar.d(renderRequest.r());
                        oVar.ox(renderRequest.i());
                        oVar.p(renderRequest.le());
                        oVar.s(renderRequest.k());
                        DynamicBaseWidgetImp dynamicBaseWidgetImp3 = DynamicBaseWidgetImp.this;
                        DynamicBaseWidgetImp dynamicBaseWidgetImp4 = DynamicBaseWidgetImp.this;
                        dynamicBaseWidgetImp3.gh = new InteractViewContainer(dynamicBaseWidgetImp4.no, dynamicBaseWidgetImp4, dynamicBaseWidgetImp4.ig, oVar, renderRequest);
                    }
                    DynamicBaseWidgetImp dynamicBaseWidgetImp5 = DynamicBaseWidgetImp.this;
                    dynamicBaseWidgetImp5.d(dynamicBaseWidgetImp5.gh);
                    if (DynamicBaseWidgetImp.this.getParent() instanceof ViewGroup) {
                        ((ViewGroup) DynamicBaseWidgetImp.this.getParent()).setClipChildren(false);
                    }
                    DynamicBaseWidgetImp.this.setClipChildren(false);
                    DynamicBaseWidgetImp.this.gh.setTag(2);
                    DynamicBaseWidgetImp dynamicBaseWidgetImp6 = DynamicBaseWidgetImp.this;
                    dynamicBaseWidgetImp6.dq((ViewGroup) dynamicBaseWidgetImp6);
                    DynamicBaseWidgetImp dynamicBaseWidgetImp7 = DynamicBaseWidgetImp.this;
                    dynamicBaseWidgetImp7.addView(dynamicBaseWidgetImp7.gh, new FrameLayout.LayoutParams(-1, -1));
                    DynamicBaseWidgetImp.this.gh.ox();
                }
            };
            this.dq = runnable;
            postDelayed(runnable, by * 1000);
            if (this.ig.xz() || uh >= Integer.MAX_VALUE || by >= uh) {
                return;
            }
            Runnable runnable2 = new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.7
                @Override // java.lang.Runnable
                public void run() {
                    DynamicBaseWidgetImp dynamicBaseWidgetImp = DynamicBaseWidgetImp.this;
                    if (dynamicBaseWidgetImp.gh != null) {
                        dynamicBaseWidgetImp.i = false;
                        DynamicBaseWidgetImp.this.gh.p();
                        DynamicBaseWidgetImp.this.gh.setVisibility(4);
                        DynamicBaseWidgetImp dynamicBaseWidgetImp2 = DynamicBaseWidgetImp.this;
                        dynamicBaseWidgetImp2.removeView(dynamicBaseWidgetImp2.gh);
                    }
                }
            };
            this.f1703d = runnable2;
            postDelayed(runnable2, uh * 1000);
        }
    }

    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(this.mn, this.ia);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.p
    public boolean ia() {
        Drawable backgroundDrawable;
        DynamicRootView dynamicRootView;
        JSONObject optJSONObject;
        final View view = this.jy;
        if (view == null) {
            view = this;
        }
        setContentDescription(this.mp.dq(this.ig.h()));
        String wi = this.ig.wi();
        String str = null;
        String dq2 = (TextUtils.isEmpty(wi) || (dynamicRootView = this.q) == null || dynamicRootView.getRenderRequest() == null || this.q.getRenderRequest().ox() == null || (optJSONObject = this.q.getRenderRequest().ox().optJSONObject("creative")) == null) ? null : dq(optJSONObject.opt(wi));
        if (TextUtils.isEmpty(dq2)) {
            dq2 = this.ig.i();
        }
        if (this.ig.r()) {
            com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().s().dq(this.ig.f1762d).ox(2).dq(new ox(this.no, this.ig.gh())).dq(new d(view, this));
        } else if (!TextUtils.isEmpty(dq2)) {
            if (!dq2.startsWith("http:") && !dq2.startsWith("https:")) {
                DynamicRootView dynamicRootView2 = this.q;
                if (dynamicRootView2 != null && dynamicRootView2.getRenderRequest() != null) {
                    str = this.q.getRenderRequest().e();
                }
                dq2 = kk.d(dq2, str);
            }
            o ox2 = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().s().dq(dq2).ox(2);
            dq(ox2);
            if (com.bytedance.sdk.component.adexpress.p.dq()) {
                ox2.dq(new dq(view, this.q, this.mp));
            } else if ((view instanceof FrameLayout) && awf.h(this.mp, "vessel")) {
                if (com.bytedance.sdk.component.adexpress.p.kk.d(dq2)) {
                    this.le = new GifView(this.no);
                } else {
                    this.le = new ImageView(this.no);
                }
                ((FrameLayout) view).addView(this.le, new FrameLayout.LayoutParams(-1, -1));
                ox2.ox(3).dq(new f() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.1
                    @Override // com.bytedance.sdk.component.iw.f
                    @ATSMethod(2)
                    public void dq(int i, String str2, Throwable th) {
                    }

                    @Override // com.bytedance.sdk.component.iw.f
                    @ATSMethod(1)
                    public void dq(no noVar) {
                        Object ox3 = noVar.ox();
                        if (ox3 instanceof byte[]) {
                            DynamicBaseWidgetImp dynamicBaseWidgetImp = DynamicBaseWidgetImp.this;
                            com.bytedance.sdk.component.adexpress.p.s.d(DynamicBaseWidgetImp.this.le, (byte[]) ox3, dynamicBaseWidgetImp.mn, dynamicBaseWidgetImp.ia);
                        }
                    }
                }, 4);
            } else {
                dq(ox2, view);
            }
        }
        if (getBackground() == null && (backgroundDrawable = getBackgroundDrawable()) != null) {
            view.setBackground(backgroundDrawable);
        }
        if (this.ig.bl() > 0.0d) {
            postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (DynamicBaseWidgetImp.this.ig.c() > 0) {
                            DynamicBaseWidgetImp dynamicBaseWidgetImp = DynamicBaseWidgetImp.this;
                            Drawable d2 = dynamicBaseWidgetImp.d(dynamicBaseWidgetImp.q.getBgMaterialCenterCalcColor().get(Integer.valueOf(DynamicBaseWidgetImp.this.ig.c())));
                            if (d2 == null) {
                                DynamicBaseWidgetImp dynamicBaseWidgetImp2 = DynamicBaseWidgetImp.this;
                                d2 = dynamicBaseWidgetImp2.dq(true, dynamicBaseWidgetImp2.q.getBgMaterialCenterCalcColor().get(Integer.valueOf(DynamicBaseWidgetImp.this.ig.c())));
                            }
                            if (d2 != null) {
                                view.setBackground(d2);
                                return;
                            }
                            View view2 = view;
                            DynamicBaseWidgetImp dynamicBaseWidgetImp3 = DynamicBaseWidgetImp.this;
                            view2.setBackground(dynamicBaseWidgetImp3.dq(true, dynamicBaseWidgetImp3.q.getBgColor()));
                        }
                    } catch (Exception unused) {
                    }
                }
            }, (long) (this.ig.bl() * 1000.0d));
        }
        View view2 = this.jy;
        if (view2 != null) {
            view2.setPadding((int) mn.dq(this.no, this.ig.ox()), (int) mn.dq(this.no, this.ig.d()), (int) mn.dq(this.no, this.ig.p()), (int) mn.dq(this.no, this.ig.dq()));
        }
        if (this.f1702f || this.ig.q() > 0.0d) {
            setShouldInvisible(true);
            view.setVisibility(4);
            setVisibility(4);
        }
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        View view = this.jy;
        if (view == null) {
            view = this;
        }
        double r2 = this.mp.o().s().r();
        if (r2 < 90.0d && r2 > 0.0d) {
            com.bytedance.sdk.component.utils.ia.d().postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp.4
                @Override // java.lang.Runnable
                public void run() {
                    DynamicBaseWidgetImp.this.setVisibility(8);
                }
            }, (long) (r2 * 1000.0d));
        }
        dq(this.mp.o().s().gh(), view);
        if (!TextUtils.isEmpty(this.ig.vf())) {
            kk();
        }
        super.onAttachedToWindow();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            removeCallbacks(this.dq);
            removeCallbacks(this.f1703d);
        } catch (Exception unused) {
        }
    }
}
