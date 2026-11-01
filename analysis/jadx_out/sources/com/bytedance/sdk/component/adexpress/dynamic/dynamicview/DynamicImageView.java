package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.component.adexpress.dynamic.animation.view.AnimationImageView;
import com.bytedance.sdk.component.adexpress.p.kk;
import com.bytedance.sdk.component.adexpress.p.mn;
import com.bytedance.sdk.component.adexpress.widget.DynamicLottieView;
import com.bytedance.sdk.component.adexpress.widget.GifView;
import com.bytedance.sdk.component.adexpress.widget.TTRoundRectImageView;
import com.bytedance.sdk.component.iw.f;
import com.bytedance.sdk.component.iw.ia;
import com.bytedance.sdk.component.iw.jy;
import com.bytedance.sdk.component.iw.no;
import com.bytedance.sdk.component.iw.o;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import g.agk;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class DynamicImageView extends DynamicBaseWidgetImp {
    private String dq;

    public static class d implements f<Bitmap> {

        /* renamed from: d, reason: collision with root package name */
        private Resources f1713d;
        private WeakReference<View> dq;

        public d(View view, Resources resources) {
            this.dq = new WeakReference<>(view);
            this.f1713d = resources;
        }

        @Override // com.bytedance.sdk.component.iw.f
        @ATSMethod(2)
        public void dq(int i, String str, Throwable th) {
        }

        @Override // com.bytedance.sdk.component.iw.f
        @ATSMethod(1)
        public void dq(no<Bitmap> noVar) {
            Bitmap ox;
            View view = this.dq.get();
            if (view == null || (ox = noVar.ox()) == null || noVar.p() == null) {
                return;
            }
            view.setBackground(new BitmapDrawable(this.f1713d, ox));
        }
    }

    public static class dq implements ia {
        private final WeakReference<Context> dq;

        public dq(Context context) {
            this.dq = new WeakReference<>(context);
        }

        @Override // com.bytedance.sdk.component.iw.ia
        @ATSMethod(1)
        public Bitmap dq(Bitmap bitmap) {
            Context context = this.dq.get();
            if (context != null) {
                return com.bytedance.sdk.component.adexpress.p.dq.dq(context, bitmap, 25);
            }
            return null;
        }
    }

    public DynamicImageView(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar) {
        super(context, dynamicRootView, iaVar);
        if (!TextUtils.isEmpty(this.ig.xi()) && iaVar.gh()) {
            DynamicLottieView dynamicLottieView = new DynamicLottieView(context);
            dynamicLottieView.setAnimationsLoop(this.ig.z());
            dynamicLottieView.setImageLottieTosPath(this.ig.xi());
            dynamicLottieView.setLottieAppNameMaxLength(this.ig.m());
            dynamicLottieView.setLottieAdTitleMaxLength(this.ig.io());
            dynamicLottieView.setLottieAdDescMaxLength(this.ig.pa());
            dynamicLottieView.setData(iaVar.r());
            this.jy = dynamicLottieView;
        } else if (this.ig.jy() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            TTRoundRectImageView tTRoundRectImageView = new TTRoundRectImageView(context);
            this.jy = tTRoundRectImageView;
            tTRoundRectImageView.setXRound((int) mn.dq(context, this.ig.jy()));
            ((TTRoundRectImageView) this.jy).setYRound((int) mn.dq(context, this.ig.jy()));
        } else if (!mn() && "arrowButton".equals(iaVar.o().getType())) {
            AnimationImageView animationImageView = new AnimationImageView(context);
            animationImageView.setBrickNativeValue(this.ig);
            this.jy = animationImageView;
        } else if (kk.d(this.ig.no())) {
            this.jy = new GifView(context);
        } else {
            this.jy = new ImageView(context);
        }
        this.dq = d(this.ig.no());
        this.jy.setTag(Integer.valueOf(getClickArea()));
        if ("arrowButton".equals(iaVar.o().getType())) {
            if (this.ig.d() > 0 || this.ig.dq() > 0) {
                int min = Math.min(this.mn, this.ia);
                this.mn = min;
                this.ia = Math.min(min, this.ia);
                this.kk = (int) (mn.dq(context, (this.ig.dq() / 2) + this.ig.d() + 0.5f) + this.kk);
            } else {
                int max = Math.max(this.mn, this.ia);
                this.mn = max;
                this.ia = Math.max(max, this.ia);
            }
            this.ig.dq(this.mn / 2);
        }
        addView(this.jy, new FrameLayout.LayoutParams(this.mn, this.ia));
    }

    private void dq(o oVar) {
        oVar.ox(3).dq(new f() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicImageView.1
            @Override // com.bytedance.sdk.component.iw.f
            @ATSMethod(2)
            public void dq(int i, String str, Throwable th) {
            }

            @Override // com.bytedance.sdk.component.iw.f
            @ATSMethod(1)
            public void dq(no noVar) {
                Object ox = noVar.ox();
                if (ox instanceof byte[]) {
                    DynamicImageView dynamicImageView = DynamicImageView.this;
                    View view = dynamicImageView.jy;
                    if (view instanceof ImageView) {
                        com.bytedance.sdk.component.adexpress.p.s.d((ImageView) view, (byte[]) ox, dynamicImageView.mn, dynamicImageView.ia);
                    }
                }
            }
        }, 4);
    }

    private boolean kk() {
        String ig = this.ig.ig();
        if (this.ig.r()) {
            return true;
        }
        if (TextUtils.isEmpty(ig)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(ig);
            return Math.abs((((float) this.mn) / (((float) this.ia) * 1.0f)) - (((float) jSONObject.optInt(MediaFormat.KEY_WIDTH)) / (((float) jSONObject.optInt(MediaFormat.KEY_HEIGHT)) * 1.0f))) > 0.01f;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public String d(String str) {
        Map<String, String> ig = this.q.getRenderRequest().ig();
        if (ig == null || ig.size() <= 0) {
            return null;
        }
        return ig.get(str);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.p
    public boolean ia() {
        super.ia();
        if (!TextUtils.isEmpty(this.ig.xi())) {
            ((ImageView) this.jy).setScaleType(ImageView.ScaleType.CENTER_CROP);
            return true;
        }
        if ("arrowButton".equals(this.mp.o().getType())) {
            ((ImageView) this.jy).setImageResource(r.s(this.no, "tt_white_righterbackicon_titlebar"));
            if (((ImageView) this.jy).getDrawable() != null) {
                ((ImageView) this.jy).getDrawable().setAutoMirrored(true);
            }
            this.jy.setPadding(0, 0, 0, 0);
            ((ImageView) this.jy).setScaleType(ImageView.ScaleType.FIT_XY);
            return true;
        }
        this.jy.setBackgroundColor(this.ig.ji());
        String d2 = this.mp.o().d();
        if ("user".equals(d2)) {
            ((ImageView) this.jy).setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            ((ImageView) this.jy).setColorFilter(this.ig.mn());
            ((ImageView) this.jy).setImageDrawable(r.ox(getContext(), "tt_user"));
            ImageView imageView = (ImageView) this.jy;
            int i = this.mn;
            imageView.setPadding(i / 10, this.ia / 5, i / 10, 0);
        } else if (d2 != null && d2.startsWith("@")) {
            try {
                ((ImageView) this.jy).setImageResource(Integer.parseInt(d2.substring(1)));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        jy s = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().s();
        String no = this.ig.no();
        if (!TextUtils.isEmpty(no) && !no.startsWith("http:") && !no.startsWith("https:")) {
            DynamicRootView dynamicRootView = this.q;
            no = com.bytedance.sdk.component.adexpress.dynamic.p.kk.d(no, (dynamicRootView == null || dynamicRootView.getRenderRequest() == null) ? null : this.q.getRenderRequest().e());
        }
        o d3 = s.dq(no).d(this.dq);
        String jy = this.q.getRenderRequest().jy();
        if (!TextUtils.isEmpty(jy)) {
            d3.ox(jy);
        }
        if (kk()) {
            ((ImageView) this.jy).setScaleType(ImageView.ScaleType.FIT_CENTER);
            d3.dq(Bitmap.Config.ARGB_4444).ox(2).dq(new dq(this.no)).dq(new d(this.jy, getResources()));
        } else {
            if (com.bytedance.sdk.component.adexpress.p.dq()) {
                d3.dq((ImageView) this.jy);
            }
            ((ImageView) this.jy).setScaleType(ImageView.ScaleType.FIT_XY);
        }
        if ((this.jy instanceof ImageView) && "cover".equals(getImageObjectFit())) {
            ((ImageView) this.jy).setScaleType(ImageView.ScaleType.CENTER_CROP);
        }
        if (!com.bytedance.sdk.component.adexpress.p.dq()) {
            dq(d3);
        }
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = ((ImageView) this.jy).getDrawable();
        if (Build.VERSION.SDK_INT < 28 || !agk.a(drawable)) {
            return;
        }
        agk.w(drawable).start();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = ((ImageView) this.jy).getDrawable();
        if (Build.VERSION.SDK_INT < 28 || !agk.a(drawable)) {
            return;
        }
        agk.w(drawable).stop();
    }
}
