package com.bytedance.sdk.openadsdk.core.widget;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.widget.TTProgressBar;

/* loaded from: classes3.dex */
public class mn extends Dialog {
    private Drawable cd;

    /* renamed from: d, reason: collision with root package name */
    public dq f3702d;
    TTProgressBar dq;

    /* renamed from: f, reason: collision with root package name */
    private String f3703f;
    private int fw;
    private boolean gh;
    private Button ia;
    private Context ig;
    private TextView iw;
    private String jy;
    private Button kk;
    private Button mn;
    private String mp;
    private ViewGroup no;
    private View o;
    public View.OnClickListener ox;
    private ImageView p;
    private String q;
    private View r;
    private TextView s;

    public interface dq {
        void d();

        void dq();
    }

    public mn(Context context) {
        super(context);
        this.fw = -1;
        this.gh = false;
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        this.ig = context;
    }

    private void ox() {
        ce.dq(this.ia, new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.mn.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dq dqVar = mn.this.f3702d;
                if (dqVar != null) {
                    dqVar.dq();
                }
            }
        }, "positiveBn");
        ce.dq(this.mn, new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.mn.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dq dqVar = mn.this.f3702d;
                if (dqVar != null) {
                    dqVar.d();
                }
            }
        }, "negtiveBn");
        ce.dq(this.kk, new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.mn.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                View.OnClickListener onClickListener = mn.this.ox;
                if (onClickListener != null) {
                    onClickListener.onClick(view);
                }
            }
        }, "dialog_change_btn");
    }

    private void p() {
        Button button;
        if (this.s != null) {
            if (TextUtils.isEmpty(this.q)) {
                this.s.setVisibility(8);
            } else {
                this.s.setText(this.q);
                this.s.setVisibility(0);
            }
        }
        if (this.iw != null && !TextUtils.isEmpty(this.mp)) {
            this.iw.setText(this.mp);
        }
        if (this.ia != null) {
            if (TextUtils.isEmpty(this.jy)) {
                this.ia.setText("确定");
            } else {
                this.ia.setText(this.jy);
            }
            int i = this.fw;
            if (i != -1) {
                this.ia.setBackgroundColor(i);
            }
        }
        if (this.mn != null) {
            if (TextUtils.isEmpty(this.f3703f)) {
                this.mn.setText("取消");
            } else {
                this.mn.setText(this.f3703f);
            }
        }
        ImageView imageView = this.p;
        if (imageView != null) {
            Drawable drawable = this.cd;
            if (drawable != null) {
                imageView.setImageDrawable(drawable);
                this.p.setVisibility(0);
            } else {
                imageView.setVisibility(8);
            }
        }
        View view = this.o;
        if (view == null || (button = this.mn) == null) {
            return;
        }
        if (this.gh) {
            view.setVisibility(8);
            this.mn.setVisibility(8);
            return;
        }
        button.setVisibility(0);
        View view2 = this.o;
        if (view2 != null) {
            view2.setVisibility(0);
        }
    }

    private void s() {
        this.mn = (Button) findViewById(2114387834);
        this.ia = (Button) findViewById(2114387919);
        this.s = (TextView) findViewById(2114387807);
        this.iw = (TextView) findViewById(2114387862);
        this.p = (ImageView) findViewById(2114387837);
        this.o = findViewById(2114387780);
        this.no = (ViewGroup) findViewById(2114387854);
        this.kk = (Button) findViewById(2114387754);
    }

    public mn d(String str) {
        this.q = str;
        return this;
    }

    public void d() {
        ViewGroup viewGroup = this.no;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
    }

    public mn dq(int i) {
        this.fw = i;
        return this;
    }

    public mn dq(Drawable drawable) {
        this.cd = drawable;
        return this;
    }

    public mn dq(View.OnClickListener onClickListener) {
        this.ox = onClickListener;
        return this;
    }

    public mn dq(View view) {
        this.r = view;
        return this;
    }

    public mn dq(dq dqVar) {
        this.f3702d = dqVar;
        return this;
    }

    public mn dq(String str) {
        this.mp = str;
        return this;
    }

    public void dq() {
        if (this.no == null) {
            return;
        }
        if (this.dq == null) {
            try {
                this.dq = new TTProgressBar(this.ig);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                layoutParams.gravity = 17;
                this.dq.setLayoutParams(layoutParams);
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setColor(Color.parseColor("#77000000"));
                gradientDrawable.setCornerRadius(ce.ox(this.ig, 2.0f));
                this.dq.setBackground(gradientDrawable);
                int ox = ce.ox(this.ig, 10.0f);
                this.dq.setPadding(ox, ox, ox, ox);
                this.dq.setIndeterminateDrawable(r.ox(this.ig, "tt_video_loading_progress_bar"));
                this.no.addView(this.dq);
            } catch (Exception unused) {
            }
        }
        this.no.setVisibility(0);
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCanceledOnTouchOutside(false);
        View view = this.r;
        if (view == null) {
            view = com.bytedance.sdk.openadsdk.res.s.dc(this.ig);
        }
        setContentView(view);
        s();
        p();
        ox();
    }

    public mn ox(String str) {
        this.jy = str;
        return this;
    }

    public mn p(String str) {
        this.f3703f = str;
        return this;
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            super.show();
            p();
        } catch (Exception unused) {
        }
    }
}
