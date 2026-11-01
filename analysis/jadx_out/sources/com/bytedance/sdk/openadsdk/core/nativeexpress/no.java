package com.bytedance.sdk.openadsdk.core.nativeexpress;

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
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeDrawVideoTsView;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.widget.RoundImageView;
import com.bytedance.sdk.openadsdk.widget.TTRatingBar;
import java.util.HashMap;
import java.util.Locale;
import org.json.JSONException;

/* loaded from: classes3.dex */
class no extends BackupView {
    private static f[] mp = {new f(2, 3.0241935f, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, 124), new f(3, 1.25f, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX), new f(4, 1.4044944f, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SAVED_HOST_TIME), new f(16, 1.25f, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX), new f(5, 1.25f, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX), new f(15, 1.25f, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX)};
    private TextView cd;

    /* renamed from: f, reason: collision with root package name */
    private NativeExpressView f3243f;
    private com.bytedance.sdk.openadsdk.core.o.d.ox fw;
    private TextView gh;
    private View jy;
    private int q;
    private ImageView r;

    public no(Context context) {
        super(context);
        this.dq = context;
    }

    private void dq(View view, TextView textView, j jVar) {
        if (view == null || textView == null) {
            return;
        }
        if (jVar == null) {
            view.setVisibility(0);
            return;
        }
        if (TextUtils.isEmpty(jVar.rr())) {
            view.setVisibility(0);
            textView.setVisibility(8);
            ce.dq(view, jVar);
        } else {
            view.setVisibility(8);
            textView.setVisibility(0);
            ce.dq(textView, jVar);
        }
    }

    private void dq(View view, com.bytedance.sdk.openadsdk.core.d.d dVar, String str) {
        if (view == null || dVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        view.setTag(str);
        view.setOnClickListener(dVar);
    }

    private void dq(ImageView imageView) {
        com.bytedance.sdk.openadsdk.ia.d.dq(this.f3200d.oh().get(0)).dq(imageView);
    }

    private void ia() {
        View by = com.bytedance.sdk.openadsdk.res.s.by(this.dq);
        this.jy = by;
        addView(by);
        FrameLayout frameLayout = (FrameLayout) this.jy.findViewById(2114387739);
        TextView textView = (TextView) this.jy.findViewById(2114387925);
        TextView textView2 = (TextView) this.jy.findViewById(2114387946);
        TextView textView3 = (TextView) this.jy.findViewById(2114387636);
        TextView textView4 = (TextView) this.jy.findViewById(2114387661);
        textView.setText(getDescription());
        textView2.setText(getTitle());
        ce.dq(textView4, this.f3200d);
        if (!TextUtils.isEmpty(this.f3200d.tu())) {
            textView3.setText(this.f3200d.tu());
        }
        View dq = dq(this.f3243f);
        NativeExpressView nativeExpressView = this.f3243f;
        if ((nativeExpressView instanceof NativeExpressVideoView) && (dq instanceof NativeVideoTsView)) {
            NativeExpressVideoView nativeExpressVideoView = (NativeExpressVideoView) nativeExpressView;
            NativeVideoTsView nativeVideoTsView = (NativeVideoTsView) dq;
            nativeVideoTsView.setVideoAdLoadListener(nativeExpressVideoView);
            nativeVideoTsView.setVideoAdInteractionListener(nativeExpressVideoView);
        }
        if (dq != null) {
            frameLayout.removeAllViews();
            frameLayout.addView(dq, new ViewGroup.LayoutParams(-1, -1));
        }
        dq(textView2, false);
        dq(textView, false);
        dq(textView3, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x014e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void ig() {
        char c2;
        View dq;
        String valueOf;
        String valueOf2;
        if (this.f3200d == null) {
            return;
        }
        View yy = com.bytedance.sdk.openadsdk.res.s.yy(this.dq);
        this.jy = yy;
        addView(yy);
        FrameLayout frameLayout = (FrameLayout) this.jy.findViewById(2114387624);
        TextView textView = (TextView) this.jy.findViewById(2114387832);
        TextView textView2 = (TextView) this.jy.findViewById(2114387943);
        View view = (TextView) this.jy.findViewById(2114387866);
        RoundImageView roundImageView = (RoundImageView) this.jy.findViewById(2114387907);
        RelativeLayout relativeLayout = (RelativeLayout) this.jy.findViewById(2114387856);
        TextView textView3 = (TextView) this.jy.findViewById(2114387625);
        TextView textView4 = (TextView) this.jy.findViewById(2114387675);
        TextView textView5 = (TextView) this.jy.findViewById(2114387706);
        ImageView imageView = (ImageView) this.jy.findViewById(2114387886);
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.f3200d)) {
            String kk = com.bytedance.sdk.openadsdk.core.r.ce.kk(this.f3200d);
            if (TextUtils.isEmpty(kk) || roundImageView == null) {
                ce.dq((View) relativeLayout, 8);
            } else {
                ce.dq((View) relativeLayout, 0);
                com.bytedance.sdk.openadsdk.ia.d.dq(kk).dq(roundImageView);
            }
            if (textView2 != null) {
                textView2.setText(com.bytedance.sdk.openadsdk.core.r.ce.ox(this.f3200d));
            }
            if (textView3 != null) {
                int p = com.bytedance.sdk.openadsdk.core.r.ce.p(this.f3200d);
                if (p >= 0) {
                    c2 = 0;
                    String dq2 = com.bytedance.sdk.component.utils.r.dq(this.dq, "tt_live_fans_text");
                    if (p > 10000) {
                        valueOf2 = (p / 10000.0f) + "w";
                    } else {
                        valueOf2 = String.valueOf(p);
                    }
                    textView3.setText(String.format(dq2, valueOf2));
                    if (textView4 != null) {
                        int s = com.bytedance.sdk.openadsdk.core.r.ce.s(this.f3200d);
                        if (s < 0) {
                            textView4.setVisibility(4);
                            ce.dq((View) imageView, 4);
                        } else {
                            String dq3 = com.bytedance.sdk.component.utils.r.dq(this.dq, "tt_live_watch_text");
                            if (s > 10000) {
                                valueOf = (s / 10000.0f) + "w";
                            } else {
                                valueOf = String.valueOf(s);
                            }
                            Object[] objArr = new Object[1];
                            objArr[c2] = valueOf;
                            textView4.setText(String.format(dq3, objArr));
                        }
                    }
                    if (textView != null) {
                        textView.setText(com.bytedance.sdk.openadsdk.core.r.ce.iw(this.f3200d));
                    }
                    dq = dq(this.f3243f);
                    if (dq != null) {
                        frameLayout.removeAllViews();
                        frameLayout.addView(dq, new ViewGroup.LayoutParams(-1, -1));
                    }
                    com.bytedance.sdk.openadsdk.core.d.dq mp2 = mp();
                    dq(roundImageView, mp2, "click_live_avata");
                    dq(textView2, mp2, "click_live_author_nickname");
                    dq(textView3, mp2, "click_live_author_follower_count");
                    dq(textView4, mp2, "click_live_author_following_count");
                    dq(textView, mp2, "click_live_author_description");
                    dq(frameLayout, mp2, "click_live_feed");
                    dq(view, mp2, "click_live_button");
                    textView5.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.no.7
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            no.this.s();
                        }
                    });
                }
                textView3.setVisibility(4);
                ce.dq((View) imageView, 4);
            }
            c2 = 0;
            if (textView4 != null) {
            }
            if (textView != null) {
            }
            dq = dq(this.f3243f);
            if (dq != null) {
            }
            com.bytedance.sdk.openadsdk.core.d.dq mp22 = mp();
            dq(roundImageView, mp22, "click_live_avata");
            dq(textView2, mp22, "click_live_author_nickname");
            dq(textView3, mp22, "click_live_author_follower_count");
            dq(textView4, mp22, "click_live_author_following_count");
            dq(textView, mp22, "click_live_author_description");
            dq(frameLayout, mp22, "click_live_feed");
            dq(view, mp22, "click_live_button");
            textView5.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.no.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    no.this.s();
                }
            });
        }
    }

    private void iw() {
        View xz = com.bytedance.sdk.openadsdk.res.s.xz(this.dq);
        this.jy = xz;
        addView(xz);
        this.jy.findViewById(2114387739).setVisibility(8);
        this.jy.findViewById(2114387955).setVisibility(0);
        ImageView imageView = (ImageView) this.jy.findViewById(2114387942);
        this.r = (ImageView) this.jy.findViewById(2114387859);
        this.gh = (TextView) this.jy.findViewById(2114387925);
        this.cd = (TextView) this.jy.findViewById(2114387946);
        TextView textView = (TextView) this.jy.findViewById(2114387636);
        ce.dq((TextView) this.jy.findViewById(2114387661), this.f3200d);
        imageView.setAdjustViewBounds(true);
        imageView.setMaxHeight(this.mn);
        dq(imageView);
        this.r.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.no.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                no.this.s();
            }
        });
        this.gh.setText(getDescription());
        this.cd.setText(getTitle());
        if (!TextUtils.isEmpty(this.f3200d.tu())) {
            textView.setText(this.f3200d.tu());
        }
        dq(this, false);
        dq(textView, true);
    }

    private void kk() {
        View xz = com.bytedance.sdk.openadsdk.res.s.xz(this.dq);
        this.jy = xz;
        addView(xz);
        FrameLayout frameLayout = (FrameLayout) this.jy.findViewById(2114387739);
        frameLayout.setVisibility(0);
        this.jy.findViewById(2114387955).setVisibility(8);
        this.r = (ImageView) this.jy.findViewById(2114387859);
        this.gh = (TextView) this.jy.findViewById(2114387925);
        this.cd = (TextView) this.jy.findViewById(2114387946);
        TextView textView = (TextView) this.jy.findViewById(2114387636);
        ce.dq((TextView) this.jy.findViewById(2114387661), this.f3200d);
        this.r.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.no.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                no.this.s();
            }
        });
        this.gh.setText(getDescription());
        this.cd.setText(getTitle());
        if (!TextUtils.isEmpty(this.f3200d.tu())) {
            textView.setText(this.f3200d.tu());
        }
        View dq = dq(this.f3243f);
        if (dq != null) {
            frameLayout.removeAllViews();
            int i = this.iw;
            frameLayout.addView(dq, new ViewGroup.LayoutParams(i, (i * 9) / 16));
        }
        dq(this, false);
        dq(textView, true);
    }

    private void mn() {
        View vw = com.bytedance.sdk.openadsdk.res.s.vw(this.dq);
        this.jy = vw;
        addView(vw);
        this.jy.findViewById(2114387739).setVisibility(0);
        this.jy.findViewById(2114387955).setVisibility(8);
        FrameLayout frameLayout = (FrameLayout) this.jy.findViewById(2114387965);
        ImageView imageView = (ImageView) this.jy.findViewById(2114387918);
        this.r = (ImageView) this.jy.findViewById(2114387859);
        this.gh = (TextView) this.jy.findViewById(2114387925);
        this.cd = (TextView) this.jy.findViewById(2114387946);
        TextView textView = (TextView) this.jy.findViewById(2114387860);
        TextView textView2 = (TextView) this.jy.findViewById(2114387861);
        TextView textView3 = (TextView) this.jy.findViewById(2114387636);
        TextView textView4 = (TextView) this.jy.findViewById(2114387913);
        TTRatingBar tTRatingBar = (TTRatingBar) this.jy.findViewById(2114387879);
        ce.dq((TextView) this.jy.findViewById(2114387620), this.f3200d);
        com.bytedance.sdk.openadsdk.ia.d.dq(this.f3200d.wq()).dq(imageView);
        this.r.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.no.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                no.this.s();
            }
        });
        int s = this.f3200d.gm() != null ? this.f3200d.gm().s() : 4;
        textView4.setText(String.format(Locale.getDefault(), "%.1f", Float.valueOf(s)));
        tTRatingBar.setStarEmptyNum(1);
        tTRatingBar.setStarFillNum(s);
        tTRatingBar.setStarImageWidth(ce.ox(this.dq, 15.0f));
        tTRatingBar.setStarImageHeight(ce.ox(this.dq, 14.0f));
        tTRatingBar.setStarImagePadding(ce.ox(this.dq, 4.0f));
        tTRatingBar.dq();
        textView.setText(getNameOrSource());
        textView2.setText(getTitle());
        this.gh.setText(getDescription());
        this.cd.setText(getTitle());
        if (!TextUtils.isEmpty(this.f3200d.tu())) {
            textView3.setText(this.f3200d.tu());
        }
        View dq = dq(this.f3243f);
        if (dq != null) {
            int i = (this.iw * 123) / MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS;
            frameLayout.removeAllViews();
            frameLayout.addView(dq, new ViewGroup.LayoutParams(i, (i * 16) / 9));
        }
        dq(this, false);
        dq(textView3, true);
    }

    private com.bytedance.sdk.openadsdk.core.d.dq mp() {
        Context context = this.dq;
        j jVar = this.f3200d;
        String str = this.s;
        final com.bytedance.sdk.openadsdk.core.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.d.dq(context, jVar, str, c.dq(str)) { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.no.8
            @Override // com.bytedance.sdk.openadsdk.core.d.d, com.bytedance.sdk.openadsdk.core.d.p
            public void dq(View view, com.bytedance.sdk.openadsdk.core.r.o oVar) {
                if (view == null) {
                    super.dq(view, oVar);
                    return;
                }
                HashMap hashMap = new HashMap();
                hashMap.put("click_live_element", view.getTag());
                ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(hashMap);
                super.dq(view, oVar);
            }
        };
        ox oxVar = new ox() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.no.9
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.ox
            public void dq(View view, int i, com.bytedance.sdk.openadsdk.core.r.k kVar) {
                try {
                    kVar.dq().put("click_extra_map", ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).s());
                } catch (JSONException unused) {
                }
                no.this.dq(view, i, kVar);
            }
        };
        com.bytedance.sdk.openadsdk.core.d.dq.d.dq dqVar2 = (com.bytedance.sdk.openadsdk.core.d.dq.d.dq) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.d.dq.class);
        if (dqVar2 != null) {
            dqVar2.dq(oxVar);
            dqVar2.dq(2);
        }
        return dqVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0145  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void no() {
        float f2;
        char c2;
        View dq;
        String valueOf;
        String valueOf2;
        if (this.f3200d == null) {
            return;
        }
        View uh = com.bytedance.sdk.openadsdk.res.s.uh(this.dq);
        this.jy = uh;
        addView(uh);
        FrameLayout frameLayout = (FrameLayout) this.jy.findViewById(2114387770);
        TextView textView = (TextView) this.jy.findViewById(2114387904);
        View view = (RelativeLayout) this.jy.findViewById(2114387653);
        RoundImageView roundImageView = (RoundImageView) this.jy.findViewById(2114387823);
        RelativeLayout relativeLayout = (RelativeLayout) this.jy.findViewById(2114387782);
        TextView textView2 = (TextView) this.jy.findViewById(2114387773);
        TextView textView3 = (TextView) this.jy.findViewById(2114387622);
        TextView textView4 = (TextView) this.jy.findViewById(2114387900);
        ImageView imageView = (ImageView) this.jy.findViewById(2114387886);
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.f3200d)) {
            String kk = com.bytedance.sdk.openadsdk.core.r.ce.kk(this.f3200d);
            if (TextUtils.isEmpty(kk) || roundImageView == null) {
                ce.dq((View) relativeLayout, 8);
            } else {
                ce.dq((View) relativeLayout, 0);
                com.bytedance.sdk.openadsdk.ia.d.dq(kk).dq(roundImageView);
            }
            if (textView != null) {
                textView.setText(com.bytedance.sdk.openadsdk.core.r.ce.ox(this.f3200d));
            }
            if (textView2 != null) {
                int p = com.bytedance.sdk.openadsdk.core.r.ce.p(this.f3200d);
                if (p >= 0) {
                    f2 = 10000.0f;
                    c2 = 0;
                    String dq2 = com.bytedance.sdk.component.utils.r.dq(this.dq, "tt_live_fans_text");
                    if (p > 10000) {
                        valueOf2 = (p / 10000.0f) + "w";
                    } else {
                        valueOf2 = String.valueOf(p);
                    }
                    textView2.setText(String.format(dq2, valueOf2));
                    if (textView3 != null) {
                        int s = com.bytedance.sdk.openadsdk.core.r.ce.s(this.f3200d);
                        if (s < 0) {
                            ce.dq((View) imageView, 4);
                            textView3.setVisibility(4);
                        } else {
                            String dq3 = com.bytedance.sdk.component.utils.r.dq(this.dq, "tt_live_watch_text");
                            if (s > 10000) {
                                valueOf = (s / f2) + "w";
                            } else {
                                valueOf = String.valueOf(s);
                            }
                            Object[] objArr = new Object[1];
                            objArr[c2] = valueOf;
                            textView3.setText(String.format(dq3, objArr));
                        }
                    }
                    if (textView4 != null) {
                        textView4.setText(com.bytedance.sdk.openadsdk.core.r.ce.iw(this.f3200d));
                    }
                    dq = dq(this.f3243f);
                    if (dq != null) {
                        frameLayout.removeAllViews();
                        frameLayout.addView(dq, new ViewGroup.LayoutParams(-1, -1));
                    }
                    com.bytedance.sdk.openadsdk.core.d.dq mp2 = mp();
                    dq(roundImageView, mp2, "click_live_avata");
                    dq(textView, mp2, "click_live_author_nickname");
                    dq(textView2, mp2, "click_live_author_follower_count");
                    dq(textView3, mp2, "click_live_author_following_count");
                    dq(textView4, mp2, "click_live_author_description");
                    dq(frameLayout, mp2, "click_live_feed");
                    dq(view, mp2, "click_live_button");
                }
                textView2.setVisibility(4);
                ce.dq((View) imageView, 4);
            }
            f2 = 10000.0f;
            c2 = 0;
            if (textView3 != null) {
            }
            if (textView4 != null) {
            }
            dq = dq(this.f3243f);
            if (dq != null) {
            }
            com.bytedance.sdk.openadsdk.core.d.dq mp22 = mp();
            dq(roundImageView, mp22, "click_live_avata");
            dq(textView, mp22, "click_live_author_nickname");
            dq(textView2, mp22, "click_live_author_follower_count");
            dq(textView3, mp22, "click_live_author_following_count");
            dq(textView4, mp22, "click_live_author_description");
            dq(frameLayout, mp22, "click_live_feed");
            dq(view, mp22, "click_live_button");
        }
    }

    private void o() {
        View vw = com.bytedance.sdk.openadsdk.res.s.vw(this.dq);
        this.jy = vw;
        addView(vw);
        this.jy.findViewById(2114387739).setVisibility(8);
        this.jy.findViewById(2114387955).setVisibility(0);
        ImageView imageView = (ImageView) this.jy.findViewById(2114387942);
        this.r = (ImageView) this.jy.findViewById(2114387859);
        this.gh = (TextView) this.jy.findViewById(2114387925);
        this.cd = (TextView) this.jy.findViewById(2114387946);
        TextView textView = (TextView) this.jy.findViewById(2114387636);
        ce.dq((TextView) this.jy.findViewById(2114387661), this.f3200d);
        dq(imageView);
        this.r.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.no.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                no.this.s();
            }
        });
        this.gh.setText(getDescription());
        this.cd.setText(getTitle());
        if (!TextUtils.isEmpty(this.f3200d.tu())) {
            textView.setText(this.f3200d.tu());
        }
        dq(this, false);
        dq(textView, true);
    }

    private void ox() {
        View ob = com.bytedance.sdk.openadsdk.res.s.ob(this.dq);
        this.jy = ob;
        addView(ob);
        ImageView imageView = (ImageView) this.jy.findViewById(2114387942);
        this.r = (ImageView) this.jy.findViewById(2114387859);
        this.gh = (TextView) this.jy.findViewById(2114387925);
        this.cd = (TextView) this.jy.findViewById(2114387946);
        dq((LinearLayout) this.jy.findViewById(2114387663), (TextView) this.jy.findViewById(2114387661), this.f3200d);
        dq(imageView);
        this.gh.setText(getDescription());
        this.cd.setText(getTitle());
        this.r.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.no.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                no.this.s();
            }
        });
        dq(this, true);
    }

    private void ox(int i) {
        f p = p(this.f3200d.gv());
        this.iw = ce.ox(this.dq, this.f3243f.getExpectExpressWidth());
        this.mn = ce.ox(this.dq, this.f3243f.getExpectExpressHeight());
        if (this.iw <= 0) {
            this.iw = ce.p(this.dq);
        }
        if (this.mn <= 0) {
            this.mn = Float.valueOf(this.iw / p.ox).intValue();
        }
        int i2 = this.iw;
        if (i2 > 0 && i2 > ce.p(this.dq)) {
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
        if (i == 9) {
            this.s = "draw_ad";
            if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.f3200d)) {
                no();
                return;
            } else {
                ia();
                return;
            }
        }
        this.s = "embeded_ad";
        int gv = this.f3200d.gv();
        if (gv == 2) {
            ox();
            return;
        }
        if (gv == 3) {
            iw();
            return;
        }
        if (gv == 4) {
            p();
            return;
        }
        if (gv == 5) {
            kk();
            return;
        }
        if (gv == 15) {
            mn();
            return;
        }
        if (gv == 16) {
            o();
            return;
        }
        if (gv == 131) {
            o();
        } else if (gv != 166) {
            o();
        } else {
            ig();
        }
    }

    private f p(int i) {
        f[] fVarArr = mp;
        f fVar = fVarArr[0];
        try {
            for (f fVar2 : fVarArr) {
                if (fVar2.dq == i) {
                    return fVar2;
                }
            }
        } catch (Throwable unused) {
        }
        return fVar;
    }

    private void p() {
        View v = com.bytedance.sdk.openadsdk.res.s.v(this.dq);
        this.jy = v;
        addView(v);
        ImageView imageView = (ImageView) this.jy.findViewById(2114387698);
        ImageView imageView2 = (ImageView) this.jy.findViewById(2114387695);
        ImageView imageView3 = (ImageView) this.jy.findViewById(2114387693);
        ImageView imageView4 = (ImageView) this.jy.findViewById(2114387937);
        this.r = (ImageView) this.jy.findViewById(2114387859);
        this.gh = (TextView) this.jy.findViewById(2114387925);
        this.cd = (TextView) this.jy.findViewById(2114387946);
        TextView textView = (TextView) this.jy.findViewById(2114387636);
        ce.dq((TextView) this.jy.findViewById(2114387661), this.f3200d);
        com.bytedance.sdk.openadsdk.ia.d.dq(this.f3200d.oh().get(0)).dq(imageView);
        com.bytedance.sdk.openadsdk.ia.d.dq(this.f3200d.oh().get(1)).dq(imageView2);
        com.bytedance.sdk.openadsdk.ia.d.dq(this.f3200d.oh().get(2)).dq(imageView3);
        com.bytedance.sdk.openadsdk.ia.d.dq(this.f3200d.wq()).dq(imageView4);
        this.r.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.no.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                no.this.s();
            }
        });
        this.gh.setText(getDescription());
        this.cd.setText(getTitle());
        if (!TextUtils.isEmpty(this.f3200d.tu())) {
            textView.setText(this.f3200d.tu());
        }
        dq(this, false);
        dq(textView, true);
    }

    private void s(int i) {
        if (i == 1) {
            d();
            this.jy.setBackgroundColor(0);
            ImageView imageView = this.r;
            if (imageView != null) {
                imageView.setImageDrawable(com.bytedance.sdk.component.utils.r.ox(getContext(), "tt_dislike_icon_night"));
                return;
            }
            return;
        }
        dq();
        this.jy.setBackgroundColor(-1);
        ImageView imageView2 = this.r;
        if (imageView2 != null) {
            imageView2.setImageDrawable(com.bytedance.sdk.component.utils.r.ox(getContext(), "tt_dislike_icon2"));
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView, com.bytedance.sdk.component.adexpress.theme.dq
    public void b_(int i) {
        super.b_(i);
        s(i);
    }

    public void d() {
        TextView textView = this.cd;
        if (textView == null || this.gh == null) {
            return;
        }
        textView.setTextColor(-1);
        this.gh.setTextColor(-1);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    public NativeVideoTsView dq(Context context, j jVar, String str, boolean z, boolean z2) {
        return "draw_ad".equals(str) ? new NativeDrawVideoTsView(context, jVar, str, z, z2) : new NativeVideoTsView(context, jVar, str, z, z2);
    }

    public void dq() {
        if (this.cd == null || this.gh == null) {
            return;
        }
        int gv = this.f3200d.gv();
        if (gv == 2) {
            this.cd.setTextColor(Color.parseColor("#FFBCBCBC"));
            this.gh.setTextColor(Color.parseColor("#FF999999"));
            return;
        }
        if (gv != 3) {
            if (gv == 4) {
                this.cd.setTextColor(Color.parseColor("#FF3E3E3E"));
                this.gh.setTextColor(Color.parseColor("#FF3E3E3E"));
                return;
            } else if (gv != 5 && gv != 15 && gv != 16) {
                return;
            }
        }
        this.cd.setTextColor(Color.parseColor("#FF222222"));
        this.gh.setTextColor(Color.parseColor("#FF505050"));
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    public void dq(View view, int i, com.bytedance.sdk.openadsdk.core.r.k kVar) {
        NativeExpressView nativeExpressView = this.f3243f;
        if (nativeExpressView != null) {
            if (i == 1 && nativeExpressView.getClickListener() != null) {
                this.f3243f.getClickListener().d(this.r);
            }
            if (i == 2 && this.f3243f.getClickCreativeListener() != null) {
                this.f3243f.getClickCreativeListener().d(this.r);
            }
            this.f3243f.dq(view, i, kVar);
        }
    }

    public void dq(j jVar, NativeExpressView nativeExpressView, com.bytedance.sdk.openadsdk.core.o.d.ox oxVar) {
        setBackgroundColor(-1);
        this.f3200d = jVar;
        this.f3243f = nativeExpressView;
        this.fw = oxVar;
        int kk = c.kk(jVar);
        this.q = kk;
        d(kk);
        int ia = c.ia(this.f3200d);
        ox(ia);
        s(com.bytedance.sdk.openadsdk.core.no.ia().j());
        int i = ia != 9 ? -2 : -1;
        this.f3243f.addView(this, new ViewGroup.LayoutParams(i, i));
    }
}
