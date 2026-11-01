package com.bytedance.sdk.openadsdk.core.playable;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.le;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.widget.playable.loading.PlayableLoadingLayout;
import com.bytedance.sdk.openadsdk.widget.PlayableLoadingView;
import g.tn;
import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private final j f3403d;
    JSONObject dq;
    private int iw;
    private final PlayableLoadingView ox;
    private PlayableLoadingLayout p;
    private final long s = SystemClock.elapsedRealtime();

    public ox(PlayableLoadingView playableLoadingView, j jVar) {
        this.ox = playableLoadingView;
        this.f3403d = jVar;
        dq();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        if (this.iw >= 100) {
            return;
        }
        le.iw().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.playable.ox.1
            @Override // java.lang.Runnable
            public void run() {
                ox.this.p.setProgress(ox.this.iw);
                ox.this.iw++;
                ox.this.s();
            }
        }, 1000L);
    }

    public void d() {
        PlayableLoadingView playableLoadingView = this.ox;
        if (playableLoadingView == null || this.p == null) {
            return;
        }
        playableLoadingView.dq();
        this.p.dq();
    }

    public void d(j jVar, String str) {
        HashMap p = tn.p("event", "csj_remove_pl_loading_page");
        p.put("playable_userFeel_loading_duration", Long.valueOf(SystemClock.elapsedRealtime() - this.s));
        com.bytedance.sdk.openadsdk.core.ig.ox.kk(jVar, str, "playable_track", p);
    }

    public void dq() {
        PlayableLoadingView playableLoadingView = this.ox;
        if (playableLoadingView == null || this.f3403d == null) {
            return;
        }
        try {
            Context context = playableLoadingView.getContext();
            PlayableLoadingLayout playableLoadingLayout = new PlayableLoadingLayout(context, this.dq);
            this.p = playableLoadingLayout;
            this.ox.addView(playableLoadingLayout);
            this.p.dq(context);
        } catch (Throwable unused) {
        }
    }

    public void dq(int i) {
        PlayableLoadingLayout playableLoadingLayout = this.p;
        if (playableLoadingLayout != null) {
            if (i < 90) {
                playableLoadingLayout.setProgress(i);
            } else {
                this.iw = 90;
                s();
            }
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.core.d.p pVar) {
        PlayableLoadingLayout playableLoadingLayout = this.p;
        if (playableLoadingLayout != null) {
            playableLoadingLayout.setBtnPlayOnClickListener(pVar);
            this.p.setBtnPlayOnTouchListener(pVar);
        }
    }

    public void dq(j jVar, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("event", "csj_playable_loading_show");
            com.bytedance.sdk.openadsdk.core.ig.ox.d(jVar, str, "playable_track", jSONObject);
        } catch (Throwable unused) {
        }
    }

    public void dq(String str, int i, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("remove_loading_page_type", Integer.valueOf(i));
        if (!TextUtils.isEmpty(str2)) {
            hashMap.put("playable_url", str2);
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.kk(this.f3403d, str, "remove_loading_page", hashMap);
    }

    public void ox() {
        PlayableLoadingView playableLoadingView = this.ox;
        if (playableLoadingView == null || this.p == null) {
            return;
        }
        playableLoadingView.d();
        this.p.d();
    }

    public boolean p() {
        PlayableLoadingView playableLoadingView = this.ox;
        return playableLoadingView != null && playableLoadingView.getVisibility() == 0;
    }
}
