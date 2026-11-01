package com.bytedance.sdk.openadsdk.core.video.nativevideo;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.bykv.vk.openvk.component.video.api.p.d;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.widget.f;
import com.bytedance.sdk.openadsdk.core.widget.jy;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.res.layout.TTViewStub;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.EnumSet;
import java.util.Locale;

/* loaded from: classes3.dex */
public class p extends s {

    /* renamed from: b, reason: collision with root package name */
    private float f3669b;
    private ColorStateList bf;
    private int bu;
    private final Rect bx;
    private TextView by;
    private jy cc;
    private boolean cv;
    private int dc;
    private ImageView ds;
    private TextView er;
    private int fd;
    private ImageView gx;
    private boolean ha;
    private ColorStateList hf;
    private final Rect ij;
    private int io;
    private View j;
    private final View.OnTouchListener jo;
    private int jw;
    private ImageView l;
    private boolean m;
    private boolean mc;
    private TextView nh;
    private final Rect nt;
    private boolean ny;
    private TextView ob;
    private final Rect pa;
    private View t;
    private final Rect tl;
    private boolean tv;
    private View uh;
    private TextView v;
    private TextView vf;
    private final e vw;
    private int wi;
    private ImageView wn;
    private int ws;
    private float x;
    private ColorStateList xi;
    private float xj;
    private int xv;
    private SeekBar xz;
    private float yo;
    private TextView yy;
    private float z;

    public p(Context context, View view, boolean z, EnumSet<d.dq> enumSet, j jVar, com.bykv.vk.openvk.component.video.api.p.ox oxVar, boolean z2) {
        super(context, view, z, enumSet, jVar, oxVar, z2, null);
        this.vw = new e(Looper.getMainLooper(), this);
        this.ha = false;
        this.cv = false;
        this.dc = 0;
        this.jw = 0;
        this.fd = 0;
        this.bu = 0;
        this.ws = 0;
        this.ij = new Rect();
        this.pa = new Rect();
        this.io = 0;
        this.xv = 0;
        this.wi = 0;
        this.cc = null;
        this.mc = false;
        this.jo = new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.p.7

            /* renamed from: d, reason: collision with root package name */
            private float f3670d;

            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                float x = motionEvent.getX();
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked != 0) {
                    if (actionMasked == 1) {
                        p.this.mc = Math.abs(this.f3670d - motionEvent.getX()) < 10.0f;
                    } else if (actionMasked == 2) {
                        view2.getParent().requestDisallowInterceptTouchEvent(true);
                    } else if (actionMasked == 3) {
                        view2.getParent().requestDisallowInterceptTouchEvent(false);
                    }
                } else {
                    this.f3670d = x;
                }
                return false;
            }
        };
        this.tl = new Rect();
        this.bx = new Rect();
        this.nt = new Rect();
        this.kx = wp.getContext().getApplicationContext();
        p(z2);
        this.dq = view;
        this.i = z;
        jy jyVar = new jy(this);
        this.cc = jyVar;
        jyVar.dq(this.i);
        DisplayMetrics displayMetrics = this.kx.getResources().getDisplayMetrics();
        this.xv = displayMetrics.widthPixels;
        this.wi = displayMetrics.heightPixels;
        this.wp = enumSet == null ? EnumSet.noneOf(d.dq.class) : enumSet;
        this.op = oxVar;
        this.f3673e = jVar;
        p(8);
        dq(context, this.dq, jVar);
        p();
        f();
    }

    private void bl() {
        DisplayMetrics displayMetrics = this.kx.getResources().getDisplayMetrics();
        TextView textView = this.v;
        if (textView != null) {
            this.yo = textView.getTextSize();
            this.v.setTextSize(2, 14.0f);
            ColorStateList textColors = this.v.getTextColors();
            this.hf = textColors;
            if (textColors != null) {
                this.v.setTextColor(r.kk(this.kx, "tt_ssxinzi15"));
            }
            this.f3669b = this.v.getAlpha();
            this.v.setAlpha(0.85f);
            this.v.setShadowLayer(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, ce.ox(this.kx, 0.5f), ce.ox(this.kx, 0.5f), r.kk(this.kx, "tt_video_shaoow_color_fullscreen"));
            ViewGroup.LayoutParams layoutParams = this.v.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                this.tl.set(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
                ce.d(this.v, (int) TypedValue.applyDimension(1, 16.0f, displayMetrics), this.tl.top, (int) TypedValue.applyDimension(1, 14.0f, displayMetrics), this.tl.bottom);
            }
        }
        TextView textView2 = this.yy;
        if (textView2 != null) {
            this.xj = textView2.getTextSize();
            this.yy.setTextSize(2, 14.0f);
            ColorStateList textColors2 = this.yy.getTextColors();
            this.bf = textColors2;
            if (textColors2 != null) {
                this.yy.setTextColor(r.kk(this.kx, "tt_ssxinzi15"));
            }
            this.x = this.yy.getAlpha();
            this.yy.setAlpha(0.85f);
            this.yy.setShadowLayer(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, ce.ox(this.kx, 0.5f), ce.ox(this.kx, 0.5f), r.kk(this.kx, "tt_video_shaoow_color_fullscreen"));
            ViewGroup.LayoutParams layoutParams2 = this.yy.getLayoutParams();
            if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                this.bx.set(marginLayoutParams2.leftMargin, marginLayoutParams2.topMargin, marginLayoutParams2.rightMargin, marginLayoutParams2.bottomMargin);
                TextView textView3 = this.yy;
                int applyDimension = (int) TypedValue.applyDimension(1, 14.0f, displayMetrics);
                Rect rect = this.bx;
                ce.d(textView3, applyDimension, rect.top, rect.right, rect.bottom);
            }
        }
        ImageView imageView = this.ds;
        if (imageView != null) {
            ViewGroup.LayoutParams layoutParams3 = imageView.getLayoutParams();
            if (layoutParams3 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) layoutParams3;
                this.nt.set(marginLayoutParams3.leftMargin, marginLayoutParams3.topMargin, marginLayoutParams3.rightMargin, marginLayoutParams3.bottomMargin);
                ImageView imageView2 = this.ds;
                Rect rect2 = this.nt;
                ce.d(imageView2, rect2.left, rect2.top, (int) TypedValue.applyDimension(1, 16.0f, displayMetrics), this.nt.bottom);
            }
        }
        ImageView imageView3 = this.ds;
        if (imageView3 != null) {
            imageView3.setImageDrawable(r.ox(this.kx, "tt_shrink_fullscreen"));
        }
        TextView textView4 = this.vf;
        if (textView4 != null) {
            ColorStateList textColors3 = textView4.getTextColors();
            this.xi = textColors3;
            if (textColors3 != null) {
                this.vf.setTextColor(r.kk(this.kx, "tt_ssxinzi15"));
            }
            this.z = this.vf.getAlpha();
            this.vf.setAlpha(0.85f);
            ViewGroup.LayoutParams layoutParams4 = this.vf.getLayoutParams();
            if (layoutParams4 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) layoutParams4;
                this.pa.set(marginLayoutParams4.leftMargin, marginLayoutParams4.topMargin, marginLayoutParams4.rightMargin, marginLayoutParams4.bottomMargin);
                TextView textView5 = this.vf;
                int applyDimension2 = (int) TypedValue.applyDimension(1, 1.0f, displayMetrics);
                Rect rect3 = this.bx;
                ce.d(textView5, applyDimension2, rect3.top, rect3.right, rect3.bottom);
            }
        }
        View view = this.j;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams5 = view.getLayoutParams();
            this.io = layoutParams5.height;
            layoutParams5.height = (int) TypedValue.applyDimension(1, 49.0f, displayMetrics);
            this.j.setLayoutParams(layoutParams5);
            this.j.setBackground(r.ox(this.kx, "tt_shadow_fullscreen_top"));
        }
        d(this.m, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ShapeDrawable d(int i, String str) {
        Context context = wp.getContext();
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        Paint paint = shapeDrawable.getPaint();
        paint.setColor(Color.parseColor("#FFFFFFFF"));
        int ox = ce.ox(context, i);
        shapeDrawable.setIntrinsicWidth(ox);
        shapeDrawable.setIntrinsicHeight(ox);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(ce.ox(context, 1.0f));
        paint.setColor(Color.parseColor(str));
        return shapeDrawable;
    }

    private void iw(boolean z) {
        if (z) {
            bl();
        } else {
            n();
        }
    }

    private void n() {
        TextView textView = this.v;
        if (textView != null) {
            textView.setTextSize(0, this.yo);
            ColorStateList colorStateList = this.hf;
            if (colorStateList != null) {
                this.v.setTextColor(colorStateList);
            }
            this.v.setAlpha(this.f3669b);
            this.v.setShadowLayer(ce.ox(this.kx, 1.0f), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, r.kk(this.kx, "tt_video_shadow_color"));
            TextView textView2 = this.v;
            Rect rect = this.tl;
            ce.d(textView2, rect.left, rect.top, rect.right, rect.bottom);
        }
        TextView textView3 = this.yy;
        if (textView3 != null) {
            textView3.setTextSize(0, this.xj);
            ColorStateList colorStateList2 = this.bf;
            if (colorStateList2 != null) {
                this.yy.setTextColor(colorStateList2);
            }
            this.yy.setAlpha(this.x);
            this.yy.setShadowLayer(ce.ox(this.kx, 1.0f), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, r.kk(this.kx, "tt_video_shadow_color"));
            TextView textView4 = this.yy;
            Rect rect2 = this.bx;
            ce.d(textView4, rect2.left, rect2.top, rect2.right, rect2.bottom);
        }
        ImageView imageView = this.ds;
        if (imageView != null) {
            Rect rect3 = this.nt;
            ce.d(imageView, rect3.left, rect3.top, rect3.right, rect3.bottom);
        }
        ImageView imageView2 = this.ds;
        if (imageView2 != null) {
            imageView2.setImageDrawable(r.ox(this.kx, "tt_enlarge_video"));
        }
        TextView textView5 = this.vf;
        if (textView5 != null) {
            ColorStateList colorStateList3 = this.xi;
            if (colorStateList3 != null) {
                textView5.setTextColor(colorStateList3);
            }
            this.vf.setAlpha(this.z);
            TextView textView6 = this.vf;
            Rect rect4 = this.bx;
            ce.d(textView6, rect4.left, rect4.top, rect4.right, rect4.bottom);
        }
        View view = this.j;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = this.io;
            this.j.setLayoutParams(layoutParams);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
            gradientDrawable.setColors(new int[]{Color.parseColor("#FF1A1A1A"), Color.parseColor("#00000000")});
            this.j.setBackground(gradientDrawable);
        }
        d(this.m, true);
    }

    private boolean op() {
        j jVar = this.f3673e;
        if (jVar == null) {
            return false;
        }
        int by = jVar.by();
        return by == 1 || by == 2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s
    public void d(int i) {
        View view = this.uh;
        if (view != null && view.getVisibility() == 0) {
            ce.dq((View) this.jy, 8);
            return;
        }
        ce.dq((View) this.jy, 0);
        this.xz.setProgress(i);
        this.jy.setProgress(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s
    public void d(ViewGroup viewGroup) {
        View view;
        ig.p("FullScreen", "Detail exitFullScreen.....");
        if (viewGroup == null || (view = this.dq) == null || !(view.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        this.ha = false;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.dq.getLayoutParams();
        marginLayoutParams.width = this.fd;
        marginLayoutParams.height = this.bu;
        marginLayoutParams.leftMargin = this.jw;
        marginLayoutParams.topMargin = this.dc;
        this.dq.setLayoutParams(marginLayoutParams);
        ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
            layoutParams2.addRule(3, this.ws);
            viewGroup.setLayoutParams(layoutParams2);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            Rect rect = this.ij;
            ce.d(viewGroup, rect.left, rect.top, rect.right, rect.bottom);
        }
        d(true);
        this.ds.setImageDrawable(r.ox(this.kx, "tt_enlarge_video"));
        this.xz.setThumb(d(15, "#1E000000"));
        this.xz.setThumbOffset(0);
        com.bykv.vk.openvk.component.video.dq.s.dq.dq(this.dq, true);
        iw(this.ha);
        ce.dq(this.j, 8);
        if (this.wp.contains(d.dq.alwayShowBackBtn)) {
            ce.dq((View) this.er, 0);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s
    public void d(boolean z) {
        int i = o() ? this.wi : this.fw;
        int i2 = o() ? this.xv : this.cd;
        if (this.r <= 0 || this.gh <= 0 || i <= 0) {
            return;
        }
        if (!no() && !o() && !this.wp.contains(d.dq.fixedSize)) {
            i2 = this.kx.getResources().getDimensionPixelSize(r.ia(this.kx, "tt_video_container_maxheight"));
        }
        int i3 = this.gh;
        int i4 = this.r;
        int i5 = (int) (i4 * ((i * 1.0f) / i3));
        if (i5 > i2) {
            i = (int) (i3 * ((i2 * 1.0f) / i4));
        } else {
            i2 = i5;
        }
        if (!z && !o()) {
            i = this.fw;
            i2 = this.cd;
        }
        this.f3672d.dq(i, i2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s, com.bykv.vk.openvk.component.video.api.p.d
    public void dq() {
        dq(false, this.i);
        e();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s
    public void dq(long j) {
        this.v.setText(com.bykv.vk.openvk.component.video.dq.s.dq.dq(j));
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s
    public void dq(long j, long j2) {
        this.yy.setText(com.bykv.vk.openvk.component.video.dq.s.dq.dq(j2));
        this.v.setText(com.bykv.vk.openvk.component.video.dq.s.dq.dq(j));
        this.xz.setProgress(com.bykv.vk.openvk.component.video.dq.s.dq.dq(j, j2));
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s
    public void dq(Context context, View view, j jVar) {
        super.dq(context, view, jVar);
        this.er = (TextView) view.findViewById(2114387764);
        this.wn = (ImageView) view.findViewById(2114387681);
        this.j = view.findViewById(2114387608);
        this.l = (ImageView) view.findViewById(2114387902);
        this.nh = (TextView) view.findViewById(2114387735);
        this.vf = (TextView) view.findViewById(2114387709);
        this.ob = (TextView) view.findViewById(2114387851);
        this.t = view.findViewById(2114387828);
        this.gx = (ImageView) view.findViewById(2114387621);
        this.by = (TextView) view.findViewById(2114387865);
        this.xz = (SeekBar) view.findViewById(2114387877);
        this.yy = (TextView) view.findViewById(2114387671);
        this.v = (TextView) view.findViewById(2114387816);
        this.uh = view.findViewById(2114387631);
        this.ds = (ImageView) view.findViewById(2114387664);
        this.mn = (TTViewStub) view.findViewById(2114387749);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s, com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        if (message.what != 1) {
            return;
        }
        ig();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s, com.bytedance.sdk.openadsdk.core.widget.jy.dq
    public void dq(View view, boolean z) {
        if (o()) {
            String format = new SimpleDateFormat("HH:mm", Locale.getDefault()).format(new Date());
            j jVar = this.f3673e;
            if (jVar != null && !TextUtils.isEmpty(jVar.lk())) {
                dq(this.f3673e.lk());
            }
            this.ob.setText(format);
        } else {
            dq("");
            this.ob.setText("");
        }
        if (this.bl) {
            return;
        }
        ox(this.i && !this.ha);
        if (i()) {
            this.ji.dq(this, view, true, this.p.getVisibility() != 0);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s
    public void dq(ViewGroup viewGroup) {
        if (viewGroup != null && (this.dq.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            this.ha = true;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.dq.getLayoutParams();
            this.jw = marginLayoutParams.leftMargin;
            this.dc = marginLayoutParams.topMargin;
            this.fd = marginLayoutParams.width;
            this.bu = marginLayoutParams.height;
            marginLayoutParams.width = -1;
            marginLayoutParams.height = -1;
            marginLayoutParams.topMargin = 0;
            marginLayoutParams.leftMargin = 0;
            this.dq.setLayoutParams(marginLayoutParams);
            ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
                int[] rules = layoutParams2.getRules();
                this.ws = rules.length > 0 ? rules[3] : 0;
                layoutParams2.addRule(3, 0);
                viewGroup.setLayoutParams(layoutParams2);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams;
                this.ij.set(marginLayoutParams2.leftMargin, marginLayoutParams2.topMargin, marginLayoutParams2.rightMargin, marginLayoutParams2.bottomMargin);
                ce.d(viewGroup, 0, 0, 0, 0);
            }
            d(true);
            this.ds.setImageDrawable(r.ox(this.kx, "tt_shrink_video"));
            this.xz.setThumb(d(18, "#00000000"));
            this.xz.setThumbOffset(0);
            com.bykv.vk.openvk.component.video.dq.s.dq.dq(this.dq, false);
            iw(this.ha);
            ce.dq(this.j, 8);
            if (!this.i) {
                ce.dq((View) this.wn, 8);
                ce.dq((View) this.er, 8);
            } else if (this.wp.contains(d.dq.hideCloseBtn)) {
                ce.dq((View) this.wn, 8);
            }
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s
    @SuppressLint({"ClickableViewAccessibility"})
    public void dq(j jVar, WeakReference<Context> weakReference, boolean z) {
        j jVar2;
        if (jVar == null) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(jVar)) {
            dq(wp.getContext(), this.dq);
            cd();
            return;
        }
        dq(this.dq, wp.getContext());
        dq(false, this.i);
        ce.dq(this.ia, 0);
        ce.dq((View) this.kk, 0);
        ce.dq(this.o, 0);
        if (this.kk != null && (jVar2 = this.f3673e) != null && !TextUtils.isEmpty(pa.d(jVar2))) {
            com.bytedance.sdk.openadsdk.ia.d.dq(pa.d(this.f3673e)).dq(this.kk);
            dq(this.kk, pa.d(this.f3673e));
        }
        ce.dq((View) this.q, 0);
        ce.dq((View) this.no, 8);
        ce.dq((View) this.ig, 8);
        ce.dq((View) this.mp, 8);
        ce.dq(this.q, r.dq(this.kx, "tt_video_dial_replay"));
        ce.dq(this.q, new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.p.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dq dqVar = p.this.ji;
                if (dqVar != null) {
                    dqVar.dq();
                }
            }
        }, "video_ad_button");
        ce.dq(this.q, (View.OnTouchListener) null, "video_ad_button");
        if (op()) {
            ce.dq(this.o, 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s, com.bykv.vk.openvk.component.video.api.p.d
    @SuppressLint({"ClickableViewAccessibility"})
    public /* bridge */ /* synthetic */ void dq(j jVar, WeakReference weakReference, boolean z) {
        dq(jVar, (WeakReference<Context>) weakReference, z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s
    public void dq(String str) {
        TextView textView = this.nh;
        if (textView != null) {
            textView.setText(str);
        }
        TextView textView2 = this.vf;
        if (textView2 != null) {
            textView2.setText(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s
    public void dq(boolean z, boolean z2) {
        ce.dq(this.uh, 8);
        ce.dq(this.j, 8);
        ce.dq((View) this.jy, z ? 0 : 8);
        ce.dq((View) this.ox, 8);
        if (!this.i && !this.ha) {
            ce.dq((View) this.wn, 8);
            if (!this.wp.contains(d.dq.alwayShowBackBtn)) {
                ce.dq((View) this.er, 8);
            }
        } else if (this.wp.contains(d.dq.hideCloseBtn)) {
            ce.dq((View) this.wn, 8);
        }
        if (z2) {
            ce.dq((View) this.wn, 8);
            ce.dq((View) this.er, 8);
        }
        ox(false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s
    public void dq(boolean z, boolean z2, boolean z3) {
        ce.dq(this.uh, 0);
        ce.dq((View) this.jy, 0);
        if (this.ha) {
            ce.dq(this.j, 0);
            ce.dq((View) this.vf, 0);
        } else if (z3) {
            ce.dq(this.j, 8);
        }
        ce.dq((View) this.ox, (!z || this.p.getVisibility() == 0) ? 8 : 0);
        if (!this.i && !this.ha) {
            if (!this.wp.contains(d.dq.hideCloseBtn) && !z3) {
                ce.dq((View) this.wn, 0);
            }
            ce.dq((View) this.er, z3 ? 8 : 0);
        }
        ce.dq((View) this.yy, 0);
        ce.dq((View) this.v, 0);
        if (op()) {
            ce.dq((View) this.xz, 8);
        } else {
            ce.dq((View) this.xz, 0);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s
    public void ia() {
        ce.s(this.p);
        ce.s(this.t);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s, com.bytedance.sdk.openadsdk.core.widget.f.d
    public void ig() {
        dq(true, false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s
    public void iw() {
        this.vw.removeMessages(1);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s, com.bytedance.sdk.openadsdk.core.widget.jy.dq
    public boolean jy() {
        f fVar = this.h;
        return fVar != null && fVar.dq();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s
    public void kk() {
        this.xz.setProgress(0);
        this.xz.setSecondaryProgress(0);
        this.jy.setProgress(0);
        this.jy.setSecondaryProgress(0);
        this.yy.setText(r.dq(this.kx, "tt_00_00"));
        this.v.setText(r.dq(this.kx, "tt_00_00"));
        p(8);
        if (ji()) {
            this.f3672d.setVisibility(8);
        }
        ImageView imageView = this.iw;
        if (imageView != null) {
            imageView.setImageDrawable(null);
            this.iw.setBackground(null);
        }
        p(8);
        ce.dq(this.uh, 8);
        ce.dq(this.ia, 8);
        ce.dq((View) this.kk, 8);
        ce.dq(this.o, 8);
        ce.dq((View) this.no, 8);
        ce.dq((View) this.ig, 8);
        ce.dq((View) this.mp, 8);
        f fVar = this.h;
        if (fVar != null) {
            fVar.dq(true);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s
    public void mn() {
        j jVar;
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.f3673e)) {
            le();
            return;
        }
        ce.iw(this.p);
        ce.iw(this.s);
        ce.s(this.t);
        if (this.iw != null && (jVar = this.f3673e) != null && !TextUtils.isEmpty(pa.d(jVar))) {
            ce.iw(this.iw);
            com.bytedance.sdk.openadsdk.ia.d.dq(pa.d(this.f3673e)).dq(this.iw);
            dq(this.iw, pa.d(this.f3673e));
        }
        if (this.ox.getVisibility() == 0) {
            ce.dq((View) this.ox, 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s
    public boolean mp() {
        return this.le;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s
    public boolean no() {
        return this.i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s, com.bytedance.sdk.openadsdk.core.widget.f.d
    public boolean o() {
        return this.ha;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s
    public void ox(boolean z) {
        TextView textView = this.nh;
        if (textView != null) {
            ce.dq((View) textView, (!this.i && z) ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s
    public boolean ox(int i) {
        SeekBar seekBar = this.xz;
        return seekBar != null && i > seekBar.getSecondaryProgress();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s
    public void p() {
        super.p();
        this.cc.dq(this.dq);
        ce.dq((View) this.wn, (this.i || this.wp.contains(d.dq.hideCloseBtn)) ? 8 : 0);
        this.wn.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.p.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (p.this.i()) {
                    p pVar = p.this;
                    pVar.ji.ox(pVar, view);
                }
            }
        });
        ce.dq((View) this.er, (!this.i || this.wp.contains(d.dq.alwayShowBackBtn)) ? 0 : 8);
        this.er.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.p.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (p.this.i()) {
                    p pVar = p.this;
                    pVar.ji.p(pVar, view);
                }
            }
        });
        this.l.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.p.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (p.this.i()) {
                    p pVar = p.this;
                    pVar.ji.s(pVar, view);
                }
            }
        });
        this.gx.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.p.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                p.this.d(false, true);
                p.this.ia();
                p.this.mn();
                p.this.i();
            }
        });
        this.ds.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.p.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (p.this.i()) {
                    p pVar = p.this;
                    pVar.ji.d(pVar, view);
                }
            }
        });
        this.xz.setThumbOffset(0);
        this.xz.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.p.6
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (p.this.i()) {
                    p pVar = p.this;
                    pVar.ji.dq(pVar, i, z);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                if (!p.this.ha && p.this.kx != null) {
                    seekBar.setThumb(p.d(22, "#1E000000"));
                }
                if (p.this.i()) {
                    seekBar.setThumbOffset(0);
                    p pVar = p.this;
                    pVar.ji.d(pVar, seekBar.getProgress());
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                if (!p.this.ha && p.this.kx != null) {
                    seekBar.setThumb(p.d(15, "#1E000000"));
                }
                if (p.this.i()) {
                    seekBar.setThumbOffset(0);
                    p pVar = p.this;
                    pVar.ji.dq(pVar, seekBar.getProgress());
                }
            }
        });
        this.xz.setOnTouchListener(this.jo);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s
    public void p(int i) {
        this.k = i;
        ce.dq(this.dq, i);
        if (i != 0) {
            this.ny = false;
        } else if (this.tv) {
            this.ny = true;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s, com.bytedance.sdk.openadsdk.core.widget.jy.dq
    public void q() {
        ig();
        ox(false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.s
    public void s() {
        this.vw.removeMessages(1);
        this.vw.sendMessageDelayed(this.vw.obtainMessage(1), 2000L);
    }
}
