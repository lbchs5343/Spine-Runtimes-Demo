package com.bytedance.sdk.openadsdk.core.component.reward.layout;

import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ji;
import com.bytedance.sdk.openadsdk.core.widget.mp;
import com.bytedance.sdk.openadsdk.widget.TTRatingBar;
import com.bytedance.sdk.openadsdk.widget.TTRoundRectImageView;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class ox extends d {
    private TextView cd;

    /* renamed from: f, reason: collision with root package name */
    private TextView f2618f;
    private TextView fw;
    private TTRatingBar gh;
    private FrameLayout i;
    private TTRoundRectImageView jy;
    protected int mp;
    protected final AtomicBoolean q;
    private FrameLayout r;

    public ox(TTBaseVideoActivity tTBaseVideoActivity, j jVar, boolean z) {
        super(tTBaseVideoActivity, jVar, z);
        this.mp = 0;
        this.q = new AtomicBoolean(false);
    }

    private String dq(boolean z) {
        j jVar = this.ox;
        if (jVar == null) {
            return null;
        }
        return z ? jVar.y() == 4 ? "下载" : "查看" : jVar.y() == 4 ? "Install" : "View";
    }

    private void dq(View.OnClickListener onClickListener) {
        ce.dq(this.ia, onClickListener, "TTBaseVideoActivity#mRlDownloadBar");
        ce.dq(this.f2618f, onClickListener, (String) null);
        ce.dq(this.jy, onClickListener, (String) null);
        ce.dq(this.fw, onClickListener, (String) null);
        ce.dq(this.gh, onClickListener, (String) null);
    }

    private void dq(View.OnTouchListener onTouchListener) {
        ce.dq(this.ia, onTouchListener, "TTBaseVideoActivity#mRlDownloadBar");
        ce.dq(this.f2618f, onTouchListener, (String) null);
        ce.dq(this.jy, onTouchListener, (String) null);
        ce.dq(this.fw, onTouchListener, (String) null);
        ce.dq(this.gh, onTouchListener, (String) null);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:0|1|(1:3)|4|(2:5|6)|(2:10|(7:12|13|14|15|(1:18)|19|(1:21)(4:23|(2:25|(1:(1:28)(1:(1:30))))(2:36|(2:38|(2:46|(1:(1:51)(1:(1:53))))(1:(1:43)(1:(1:45)))))|(1:34)|35)))|58|13|14|15|(1:18)|19|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0044, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0052 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String ia() {
        boolean z;
        String str;
        j jVar;
        String s = c.s(this.f2610d);
        if (s == null) {
            s = "";
        }
        try {
        } catch (Throwable unused) {
            z = true;
        }
        if (!s.equals(Locale.CHINESE.getLanguage()) && !s.equals(Locale.CHINA.getLanguage())) {
            if (!s.equals(Locale.TRADITIONAL_CHINESE.getLanguage())) {
                z = false;
                boolean z2 = s.equals(Locale.ENGLISH.getLanguage());
                str = "下载";
                if (!z && z2) {
                    str = "Install";
                }
                jVar = this.ox;
                if (jVar == null) {
                    return str;
                }
                if (!TextUtils.isEmpty(jVar.tu())) {
                    str = this.ox.tu();
                    if (str != null) {
                        if (!c.iw(str) || str.length() <= 2) {
                            if (!c.iw(str) && str.length() > 7) {
                                if (z) {
                                    str = dq(true);
                                } else if (z2) {
                                    str = dq(false);
                                }
                            }
                        } else if (z) {
                            str = dq(true);
                        } else if (z2) {
                            str = dq(false);
                        }
                    }
                } else if (this.ox.y() != 4) {
                    if (z) {
                        str = "查看";
                    } else if (z2) {
                        str = "View";
                    }
                }
                if (z2 && !c.iw(str)) {
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.cd.getLayoutParams();
                    layoutParams.bottomMargin = ce.ox(this.f2610d, 4.0f);
                    this.cd.setLayoutParams(layoutParams);
                }
                return str;
            }
        }
        z = true;
        boolean z22 = s.equals(Locale.ENGLISH.getLanguage());
        str = "下载";
        if (!z) {
            str = "Install";
        }
        jVar = this.ox;
        if (jVar == null) {
        }
    }

    private void iw() {
        if (this.p == 1) {
            TextView textView = this.f2618f;
            if (textView != null) {
                textView.setMaxWidth(ce.ox(this.f2610d, 153.0f));
            }
        } else {
            TextView textView2 = this.f2618f;
            if (textView2 != null) {
                textView2.setMaxWidth(ce.ox(this.f2610d, 404.0f));
            }
        }
        if (this.iw) {
            return;
        }
        ce.dq((View) this.ia, 0);
    }

    private void mn() {
        if (this.ox.yy() == 3) {
            int[] iArr = {Color.parseColor("#0070FF")};
            int ox = ce.ox(this.f2610d, 17.0f);
            int parseColor = Color.parseColor("#80000000");
            mp.dq((LinearLayout) this.f2610d.findViewById(2114387903), new mp.dq().dq(iArr[0]).d(parseColor).dq(iArr).ox(ox).p(0).s(ce.ox(this.f2610d, 3.0f)));
        }
    }

    private void ox() {
        if (this.jy != null) {
            ji wq = this.ox.wq();
            if (wq == null || TextUtils.isEmpty(wq.dq())) {
                this.jy.setImageDrawable(r.ox(this.f2610d, "tt_ad_logo_small"));
            } else {
                com.bytedance.sdk.openadsdk.ia.d.dq(wq).dq(this.jy);
            }
        }
        if (this.f2618f != null) {
            if (this.p != 1 || this.ox.gm() == null || TextUtils.isEmpty(this.ox.gm().ox())) {
                this.f2618f.setText(this.ox.lk());
            } else {
                this.f2618f.setText(this.ox.gm().ox());
            }
        }
    }

    private void p() {
        String valueOf;
        if (this.fw == null) {
            return;
        }
        int iw = this.ox.gm() != null ? this.ox.gm().iw() : 6870;
        if (iw > 10000) {
            valueOf = (iw / 10000) + "万";
        } else {
            valueOf = String.valueOf(iw);
        }
        this.fw.setText(String.format("%1$s个评分", valueOf));
    }

    private void s() {
        TextView textView = this.cd;
        if (textView != null) {
            textView.setText(this.ox.yy() == 3 ? ia() : d());
        }
    }

    public String d() {
        j jVar = this.ox;
        return jVar == null ? "立即下载" : TextUtils.isEmpty(jVar.tu()) ? this.ox.y() != 4 ? "查看详情" : "立即下载" : this.ox.tu();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.layout.d
    public void d(int i) {
        int i2;
        if (this.ia == null || (i2 = this.ig) == -1 || i != i2 || this.q.getAndSet(true)) {
            return;
        }
        ce.dq((View) this.ia, 0);
        Keyframe ofFloat = Keyframe.ofFloat(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        Keyframe ofFloat2 = Keyframe.ofFloat(0.65f, 1.0f);
        Keyframe ofFloat3 = Keyframe.ofFloat(0.765f, 0.9f);
        Keyframe ofFloat4 = Keyframe.ofFloat(0.88f, 1.0f);
        Keyframe ofFloat5 = Keyframe.ofFloat(0.95f, 0.95f);
        Keyframe ofFloat6 = Keyframe.ofFloat(1.0f, 1.0f);
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this.ia, PropertyValuesHolder.ofKeyframe("scaleX", ofFloat, ofFloat2, ofFloat3, ofFloat4, ofFloat5, ofFloat6), PropertyValuesHolder.ofKeyframe("scaleY", ofFloat, ofFloat2, ofFloat3, ofFloat4, ofFloat5, ofFloat6));
        ofPropertyValuesHolder.setDuration(1000L);
        ofPropertyValuesHolder.start();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.layout.d
    public void dq() {
        FrameLayout frameLayout;
        super.dq();
        this.ia = (RelativeLayout) this.f2610d.findViewById(2114387652);
        this.jy = (TTRoundRectImageView) this.f2610d.findViewById(2114387798);
        this.f2618f = (TextView) this.f2610d.findViewById(2114387880);
        this.fw = (TextView) this.f2610d.findViewById(2114387633);
        this.cd = (TextView) this.f2610d.findViewById(2114387835);
        TTRatingBar tTRatingBar = (TTRatingBar) this.f2610d.findViewById(2114387612);
        this.gh = tTRatingBar;
        if (tTRatingBar != null) {
            tTRatingBar.setStarEmptyNum(1);
            this.gh.setStarFillNum(4);
            this.gh.setStarImageWidth(ce.ox(this.f2610d, 15.0f));
            this.gh.setStarImageHeight(ce.ox(this.f2610d, 14.0f));
            this.gh.setStarImagePadding(ce.ox(this.f2610d, 4.0f));
            this.gh.dq();
        }
        this.o = (TextView) this.f2610d.findViewById(2114387661);
        this.kk = (FrameLayout) this.f2610d.findViewById(2114387645);
        this.r = (FrameLayout) this.f2610d.findViewById(2114387964);
        this.i = (FrameLayout) this.f2610d.findViewById(2114387931);
        ce.dq(this.o, this.ox);
        try {
            if (this.p == 2 && this.ox.yy() == 1 && (this.cd.getLayoutParams() instanceof RelativeLayout.LayoutParams)) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.cd.getLayoutParams();
                layoutParams.height = ce.ox(this.f2610d, 55.0f);
                layoutParams.topMargin = ce.ox(this.f2610d, 20.0f);
                this.cd.setLayoutParams(layoutParams);
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.ia.getLayoutParams();
                layoutParams2.bottomMargin = ce.ox(this.f2610d, 12.0f);
                this.ia.setLayoutParams(layoutParams2);
            }
        } catch (Throwable unused) {
        }
        if (this.ox.yy() == 1 && (frameLayout = this.kk) != null && (frameLayout.getLayoutParams() instanceof RelativeLayout.LayoutParams)) {
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.kk.getLayoutParams();
            int p = ce.p((Context) this.f2610d);
            layoutParams3.width = p;
            int i = (p * 9) / 16;
            layoutParams3.height = i;
            this.kk.setLayoutParams(layoutParams3);
            this.mp = (ce.s((Context) this.f2610d) - i) / 2;
        }
        ox();
        p();
        s();
        iw();
        mn();
        no();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.layout.d
    public void dq(com.bytedance.sdk.openadsdk.core.d.d dVar, com.bytedance.sdk.openadsdk.core.d.d dVar2) {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        j jVar = this.ox;
        if (jVar != null && jVar.v() != null) {
            if (this.ox.v().s) {
                ce.dq((View) this.cd, (View.OnClickListener) dVar, (String) null);
                ce.dq((View) this.cd, (View.OnTouchListener) dVar, (String) null);
            } else {
                ce.dq((View) this.cd, (View.OnClickListener) dVar2, (String) null);
                ce.dq((View) this.cd, (View.OnTouchListener) dVar2, (String) null);
            }
            if (this.ox.yy() == 1) {
                if (this.ox.v().dq) {
                    dq((View.OnTouchListener) dVar);
                    dq((View.OnClickListener) dVar);
                } else {
                    dq((View.OnTouchListener) dVar2);
                    dq((View.OnClickListener) dVar2);
                }
            } else if (this.ox.v().ox) {
                ce.dq((View) this.ia, (View.OnClickListener) dVar, "TTBaseVideoActivity#mRlDownloadBar");
                ce.dq((View) this.ia, (View.OnTouchListener) dVar, "TTBaseVideoActivity#mRlDownloadBar");
            } else {
                ce.dq((View) this.ia, (View.OnClickListener) dVar2, "TTBaseVideoActivity#mRlDownloadBar");
                ce.dq((View) this.ia, (View.OnTouchListener) dVar2, (String) null);
            }
        }
        j jVar2 = this.ox;
        if (jVar2 != null && jVar2.v() != null) {
            if (this.ox.v().iw) {
                ce.dq((View) this.kk, (View.OnClickListener) dVar, "TTBaseVideoActivity#mVideoNativeFrame");
                ce.dq((View) this.kk, (View.OnTouchListener) dVar, "TTBaseVideoActivity#mVideoNativeFrame");
            } else {
                ce.dq((View) this.kk, (View.OnClickListener) dVar2, "TTBaseVideoActivity#mVideoNativeFrame");
                ce.dq((View) this.kk, (View.OnTouchListener) dVar2, "TTBaseVideoActivity#mVideoNativeFrame");
            }
        }
        j jVar3 = this.ox;
        if (jVar3 == null || jVar3.yy() != 1) {
            return;
        }
        if (this.ox.v() != null && (frameLayout2 = this.r) != null) {
            ce.dq((View) frameLayout2, 0);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.r.getLayoutParams();
            layoutParams.height = this.mp;
            this.r.setLayoutParams(layoutParams);
            if (this.ox.v().f3449d) {
                this.r.setOnClickListener(dVar);
                this.r.setOnTouchListener(dVar);
            } else {
                this.r.setOnClickListener(dVar2);
                this.r.setOnTouchListener(dVar2);
            }
        }
        if (this.ox.v() == null || (frameLayout = this.i) == null) {
            return;
        }
        ce.dq((View) frameLayout, 0);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.i.getLayoutParams();
        layoutParams2.height = this.mp;
        this.i.setLayoutParams(layoutParams2);
        if (this.ox.v().p) {
            this.i.setOnClickListener(dVar);
            this.i.setOnTouchListener(dVar);
        } else {
            this.i.setOnClickListener(dVar2);
            this.i.setOnTouchListener(dVar2);
        }
    }
}
