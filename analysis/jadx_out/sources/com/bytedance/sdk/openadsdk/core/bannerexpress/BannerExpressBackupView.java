package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.f;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.k;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.res.s;
import com.bytedance.sdk.openadsdk.widget.TTRatingBar;
import java.util.Locale;

/* loaded from: classes3.dex */
public class BannerExpressBackupView extends BackupView {
    private static f[] mp = {new f(1, 6.4f, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK, 100), new f(3, 1.2f, 600, 500)};
    private f cd;

    /* renamed from: f, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.o.d.ox f2467f;
    private int fw;
    private TextView gh;
    private ImageView i;
    private NativeExpressView jy;
    private View q;
    private TextView r;

    public BannerExpressBackupView(Context context) {
        super(context);
        this.fw = 1;
        this.dq = context;
    }

    private void d() {
        float ox = (this.mn * 1.0f) / ce.ox(this.dq, 50.0f);
        float f2 = this.mn * 1.0f;
        int i = this.iw;
        if (f2 / i > 0.21875f) {
            ox = (i * 1.0f) / ce.ox(this.dq, 320.0f);
        }
        View l = s.l(this.dq);
        this.q = l;
        addView(l);
        this.i = (ImageView) this.q.findViewById(2114387859);
        ImageView imageView = (ImageView) this.q.findViewById(2114387937);
        this.gh = (TextView) this.q.findViewById(2114387946);
        TextView textView = (TextView) this.q.findViewById(2114387799);
        TTRatingBar tTRatingBar = (TTRatingBar) this.q.findViewById(2114387896);
        TextView textView2 = (TextView) this.q.findViewById(2114387636);
        this.gh.setTextSize(2, ce.d(this.dq, r5.getTextSize()) * ox);
        textView.setTextSize(2, ce.d(this.dq, textView.getTextSize()) * ox);
        textView2.setTextSize(2, ce.d(this.dq, textView2.getTextSize()) * ox);
        TextView textView3 = (TextView) this.q.findViewById(2114387661);
        this.i.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressBackupView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BannerExpressBackupView.this.s();
            }
        });
        ce.dq(textView3, this.f3200d, 27, 11);
        com.bytedance.sdk.openadsdk.ia.d.dq(this.f3200d.wq()).dq(imageView);
        this.gh.setText(getTitle());
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = (int) (ce.ox(this.dq, 45.0f) * ox);
            layoutParams.height = (int) (ce.ox(this.dq, 45.0f) * ox);
        }
        if (!TextUtils.isEmpty(this.f3200d.tu())) {
            textView2.setText(this.f3200d.tu());
        }
        int s = this.f3200d.gm() != null ? this.f3200d.gm().s() : 4;
        textView.setText(String.format(Locale.getDefault(), "%.1f", Float.valueOf(s)));
        tTRatingBar.setStarEmptyNum(1);
        tTRatingBar.setStarFillNum(s);
        tTRatingBar.setStarImageWidth(ce.ox(this.dq, 15.0f) * ox);
        tTRatingBar.setStarImageHeight(ce.ox(this.dq, 14.0f) * ox);
        tTRatingBar.setStarImagePadding(ce.ox(this.dq, 4.0f));
        tTRatingBar.dq();
        dq((View) this, true);
        dq((View) textView2, true);
    }

    private f dq(int i, int i2) {
        try {
            return ((double) i2) >= Math.floor((((double) i) * 300.0d) / 600.0d) ? mp[1] : mp[0];
        } catch (Throwable unused) {
            return mp[0];
        }
    }

    private void dq() {
        this.cd = dq(this.jy.getExpectExpressWidth(), this.jy.getExpectExpressHeight());
        if (this.jy.getExpectExpressWidth() <= 0 || this.jy.getExpectExpressHeight() <= 0) {
            int p = ce.p(this.dq);
            this.iw = p;
            this.mn = Float.valueOf(p / this.cd.ox).intValue();
        } else {
            this.iw = ce.ox(this.dq, this.jy.getExpectExpressWidth());
            this.mn = ce.ox(this.dq, this.jy.getExpectExpressHeight());
        }
        int i = this.iw;
        if (i > 0 && i > ce.p(this.dq)) {
            this.iw = ce.p(this.dq);
            this.mn = Float.valueOf(this.mn * (ce.p(this.dq) / this.iw)).intValue();
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(this.iw, this.mn);
        }
        layoutParams.width = this.iw;
        layoutParams.height = this.mn;
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams).gravity = 17;
        }
        setLayoutParams(layoutParams);
        f fVar = this.cd;
        int i2 = fVar.dq;
        if (i2 == 1 || i2 != 3) {
            d();
        } else {
            dq(fVar);
        }
    }

    private void dq(ImageView imageView) {
        com.bytedance.sdk.openadsdk.ia.d.dq(this.f3200d.oh().get(0)).dq(imageView);
    }

    private void dq(f fVar) {
        float ox = (this.mn * 1.0f) / ce.ox(this.dq, 250.0f);
        View t = s.t(this.dq);
        this.q = t;
        addView(t);
        FrameLayout frameLayout = (FrameLayout) this.q.findViewById(2114387777);
        this.i = (ImageView) this.q.findViewById(2114387859);
        ImageView imageView = (ImageView) this.q.findViewById(2114387942);
        ImageView imageView2 = (ImageView) this.q.findViewById(2114387937);
        this.gh = (TextView) this.q.findViewById(2114387946);
        this.r = (TextView) this.q.findViewById(2114387925);
        TextView textView = (TextView) this.q.findViewById(2114387933);
        TextView textView2 = (TextView) this.q.findViewById(2114387636);
        ce.dq((TextView) this.q.findViewById(2114387661), this.f3200d);
        LinearLayout linearLayout = (LinearLayout) this.q.findViewById(2114387876);
        ViewGroup.LayoutParams layoutParams = imageView2.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = (int) (ce.ox(this.dq, 45.0f) * ox);
            layoutParams.height = (int) (ce.ox(this.dq, 45.0f) * ox);
        }
        this.gh.setTextSize(2, ce.d(this.dq, r8.getTextSize()) * ox);
        this.r.setTextSize(2, ce.d(this.dq, r8.getTextSize()) * ox);
        textView.setTextSize(2, ce.d(this.dq, textView.getTextSize()) * ox);
        textView2.setTextSize(2, ce.d(this.dq, textView2.getTextSize()) * ox);
        try {
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
            float f2 = ox - 1.0f;
            if (f2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                layoutParams2.topMargin = ce.ox(this.dq, f2 * 8.0f);
            }
            ((RelativeLayout.LayoutParams) textView2.getLayoutParams()).setMargins(0, (int) (ce.ox(this.dq, 16.0f) * ox), 0, 0);
        } catch (Throwable unused) {
        }
        this.i.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressBackupView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BannerExpressBackupView.this.s();
            }
        });
        int ox2 = ce.ox(this.dq, 15.0f);
        ce.dq(this.i, ox2, ox2, ox2, ox2);
        if (pa.q(this.f3200d) != null) {
            View dq = dq(this.jy);
            if (dq != null) {
                int i = (this.iw * TTAdConstant.DOWNLOAD_APP_INFO_CODE) / 600;
                FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i, (i * 9) / 16);
                int i2 = fVar.f3224d;
                if (i2 == 1) {
                    int i3 = (this.iw * TTAdConstant.DOWNLOAD_APP_INFO_CODE) / 600;
                    layoutParams3 = new FrameLayout.LayoutParams(i3, (i3 * 9) / 16);
                } else if (i2 == 2) {
                    layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
                } else if (i2 == 3) {
                    int i4 = (this.mn * MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION) / MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME;
                    layoutParams3 = new FrameLayout.LayoutParams((i4 * 16) / 9, i4);
                } else if (i2 == 4) {
                    int i5 = (this.iw * 480) / 690;
                    layoutParams3 = new FrameLayout.LayoutParams(i5, (i5 * 9) / 16);
                }
                layoutParams3.gravity = 17;
                frameLayout.addView(dq, 0, layoutParams3);
                ce.dq((View) imageView, 8);
            } else {
                dq(imageView);
                ce.dq((View) imageView, 0);
            }
        } else {
            dq(imageView);
            ce.dq((View) imageView, 0);
        }
        com.bytedance.sdk.openadsdk.ia.d.dq(this.f3200d.wq()).dq(imageView2);
        textView.setText(getNameOrSource());
        TextView textView3 = this.gh;
        Locale.getDefault();
        textView3.setText(getNameOrSource() + "提供的广告");
        this.r.setText(getDescription());
        if (!TextUtils.isEmpty(this.f3200d.tu())) {
            textView2.setText(this.f3200d.tu());
        }
        dq((View) this, true);
        dq((View) textView2, true);
        dq(frameLayout);
    }

    private void ox() {
        int i = this.cd.dq;
        if (i != 2 && i != 3) {
            TextView textView = this.gh;
            if (textView != null) {
                textView.setTextColor(Color.parseColor("#FF333333"));
            }
            ImageView imageView = this.i;
            if (imageView != null) {
                imageView.setImageDrawable(r.ox(getContext(), "tt_dislike_icon"));
                return;
            }
            return;
        }
        TextView textView2 = this.gh;
        if (textView2 != null) {
            textView2.setTextColor(Color.parseColor("#FFAEAEAE"));
        }
        TextView textView3 = this.r;
        if (textView3 != null) {
            textView3.setTextColor(Color.parseColor("#3E3E3E"));
        }
        if (this.i != null) {
            this.i.setImageDrawable(s.gx(this.dq));
        }
    }

    private void ox(int i) {
        if (i == 1) {
            p();
            this.q.setBackgroundColor(0);
        } else {
            ox();
            this.q.setBackgroundColor(-1);
        }
    }

    private void p() {
        int i = this.cd.dq;
        if (i == 2 || i == 3) {
            TextView textView = this.gh;
            if (textView != null) {
                textView.setTextColor(-1);
            }
            TextView textView2 = this.r;
            if (textView2 != null) {
                textView2.setTextColor(-1);
            }
        } else {
            TextView textView3 = this.gh;
            if (textView3 != null) {
                textView3.setTextColor(-1);
            }
        }
        this.i.setImageDrawable(r.ox(getContext(), "tt_dislike_icon_night"));
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView, com.bytedance.sdk.component.adexpress.theme.dq
    public void b_(int i) {
        super.b_(i);
        ox(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    public void dq(View view, int i, k kVar) {
        if (this.jy != null) {
            if (i == 1 || i == 2) {
                View findViewById = this.q.findViewById(2114387859);
                if (i == 1) {
                    this.jy.getClickListener().d(findViewById);
                } else {
                    this.jy.getClickCreativeListener().d(findViewById);
                }
            }
            this.jy.dq(view, i, kVar);
        }
    }

    public void dq(j jVar, NativeExpressView nativeExpressView, com.bytedance.sdk.openadsdk.core.o.d.ox oxVar) {
        setBackgroundColor(-1);
        this.f3200d = jVar;
        this.jy = nativeExpressView;
        this.f2467f = oxVar;
        this.s = "banner_ad";
        nativeExpressView.addView(this, new ViewGroup.LayoutParams(-2, -2));
        int kk = c.kk(this.f3200d);
        this.ia = kk;
        d(kk);
        dq();
        ox(no.ia().j());
    }
}
