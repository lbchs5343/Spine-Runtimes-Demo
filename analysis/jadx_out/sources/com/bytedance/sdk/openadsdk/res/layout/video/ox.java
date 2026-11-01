package com.bytedance.sdk.openadsdk.res.layout.video;

import android.R;
import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.widget.TTProgressBar;
import g.tn;

/* loaded from: classes3.dex */
public class ox extends dq {
    @Override // com.bytedance.sdk.openadsdk.res.layout.dq
    public View dq(Context context) {
        RelativeLayout dq = dq(context, 2114387619);
        dq.addView(d(context, MediaPlayer.MEDIA_PLAYER_OPTION_SET_FRAMES_DROP));
        dq.setVisibility(8);
        TextView u = tn.u(context, 2114387747);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(3, 2114387916);
        layoutParams.addRule(14);
        layoutParams.setMargins(0, ce.ox(context, 13.0f), 0, 0);
        u.setLayoutParams(layoutParams);
        u.setTextColor(context.getResources().getColor(R.color.white));
        u.setTextSize(2, 16.0f);
        dq.addView(u);
        TextView u2 = tn.u(context, 2114387812);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(3, 2114387747);
        layoutParams2.addRule(14);
        layoutParams2.setMargins(0, ce.ox(context, 8.0f), 0, 0);
        u2.setLayoutParams(layoutParams2);
        u2.setTextColor(context.getResources().getColor(R.color.white));
        u2.setTextSize(2, 12.0f);
        u2.setText(r.dq(context, "tt_live_loading_text"));
        dq.addView(u2);
        TTProgressBar tTProgressBar = new TTProgressBar(context, null, r.mn(context, "tt_Widget_ProgressBar_Horizontal"));
        tTProgressBar.setId(2114387686);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(ce.ox(context, 32.0f), ce.ox(context, 32.0f));
        layoutParams3.addRule(3, 2114387812);
        layoutParams3.addRule(14);
        layoutParams3.setMargins(0, ce.ox(context, 32.0f), 0, 0);
        tTProgressBar.setLayoutParams(layoutParams3);
        tTProgressBar.setIndeterminateDrawable(r.ox(context, "tt_live_video_loading_progress"));
        dq.addView(tTProgressBar);
        dq.addView(dq(context, MediaPlayer.MEDIA_PLAYER_OPTION_GET_AUDIO_CODEC_NAME, 6));
        return dq;
    }
}
