package com.bytedance.sdk.component.adexpress.widget;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.text.TextUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes.dex */
public class ClickSlideUpView2 extends SlideUpView {

    /* renamed from: d, reason: collision with root package name */
    private ImageView f1796d;
    private TextView dq;
    private AnimatorSet iw;
    private ImageView ox;
    private ImageView p;
    private int s;

    public ClickSlideUpView2(Context context) {
        super(context);
        this.iw = new AnimatorSet();
        d(context);
    }

    private void d(Context context) {
        addView(com.bytedance.sdk.component.adexpress.ox.dq.d(context));
        this.f1796d = (ImageView) findViewById(2097610751);
        this.ox = (ImageView) findViewById(2097610750);
        this.p = (ImageView) findViewById(2097610749);
        this.dq = (TextView) findViewById(2097610748);
    }

    private void p() {
        ObjectAnimator ofInt = ObjectAnimator.ofInt(this, "alphaColor", 0, 60);
        ofInt.setInterpolator(new LinearInterpolator());
        ofInt.setDuration(2000L);
        ofInt.setRepeatCount(-1);
        ofInt.start();
    }

    @Override // com.bytedance.sdk.component.adexpress.widget.SlideUpView
    public void d() {
        this.iw.cancel();
    }

    @Override // com.bytedance.sdk.component.adexpress.widget.SlideUpView
    public void dq() {
        p();
    }

    @Override // com.bytedance.sdk.component.adexpress.widget.SlideUpView
    public void dq(Context context) {
    }

    public float getAlphaColor() {
        return this.s;
    }

    public void setAlphaColor(int i) {
        if (i < 0 || i > 60) {
            return;
        }
        int i2 = i + MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO;
        ImageView imageView = this.p;
        int rgb = Color.rgb(i2, i2, i2);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        imageView.setColorFilter(rgb, mode);
        int i3 = ((i + 20) % 60) + MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO;
        this.ox.setColorFilter(Color.rgb(i3, i3, i3), mode);
        int i4 = ((i + 40) % 60) + MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO;
        this.f1796d.setColorFilter(Color.rgb(i4, i4, i4), mode);
    }

    public void setButtonText(String str) {
        if (this.dq == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.dq.setText(str);
    }
}
