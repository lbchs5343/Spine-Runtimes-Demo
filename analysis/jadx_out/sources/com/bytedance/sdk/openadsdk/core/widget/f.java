package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.res.layout.TTViewStub;

/* loaded from: classes3.dex */
public class f {

    /* renamed from: d, reason: collision with root package name */
    private TextView f3694d;
    private View dq;
    private TTViewStub ia;
    private boolean iw = false;
    private View kk;
    private com.bykv.vk.openvk.component.video.api.ox.ox mn;
    private Context ox;
    private com.bytedance.sdk.openadsdk.core.video.nativevideo.dq p;
    private d s;

    public interface d {
        void ig();

        boolean o();
    }

    public enum dq {
        PAUSE_VIDEO,
        RELEASE_VIDEO,
        START_VIDEO
    }

    private void d() {
        this.mn = null;
    }

    private void dq(Context context, View view, boolean z) {
        TTViewStub tTViewStub;
        if (context == null || view == null || (tTViewStub = this.ia) == null || tTViewStub.getParent() == null || this.dq != null) {
            return;
        }
        this.ia.dq();
        this.dq = view.findViewById(2114387875);
        this.f3694d = (TextView) view.findViewById(2114387822);
        View findViewById = view.findViewById(2114387885);
        if (z) {
            findViewById.setClickable(true);
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.f.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    f.this.ox();
                    if (f.this.p != null) {
                        f.this.p.dq(dq.START_VIDEO, (String) null);
                    }
                }
            });
        } else {
            findViewById.setOnClickListener(null);
            findViewById.setClickable(false);
        }
    }

    private void dq(com.bykv.vk.openvk.component.video.api.ox.ox oxVar, boolean z) {
        View view;
        String str;
        View view2;
        if (oxVar == null || (view = this.dq) == null || this.ox == null || view.getVisibility() == 0) {
            return;
        }
        d dVar = this.s;
        if (dVar != null) {
            dVar.ig();
        }
        int ceil = (int) Math.ceil((oxVar.s() * 1.0d) / 1048576.0d);
        if (z) {
            str = r.dq(this.ox, "tt_video_without_wifi_tips") + ceil + r.dq(this.ox, "tt_video_bytesize_MB") + r.dq(this.ox, "tt_video_bytesize");
        } else {
            str = r.dq(this.ox, "tt_video_without_wifi_tips") + r.dq(this.ox, "tt_video_bytesize");
        }
        ce.dq(this.dq, 0);
        ce.dq(this.f3694d, str);
        if (!ce.p(this.dq) || (view2 = this.dq) == null) {
            return;
        }
        view2.bringToFront();
    }

    private boolean dq(int i) {
        d dVar;
        if (dq() || this.iw) {
            return true;
        }
        if (this.p != null && (dVar = this.s) != null) {
            if (dVar.o()) {
                this.p.s(null, null);
            }
            this.p.dq(dq.PAUSE_VIDEO, (String) null);
        }
        dq(this.mn, true);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox() {
        if (this.ox == null) {
            return;
        }
        p();
    }

    private void p() {
        View view = this.dq;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public void dq(Context context, View view) {
        if (context == null || !(view instanceof ViewGroup)) {
            return;
        }
        this.kk = view;
        this.ox = wp.getContext().getApplicationContext();
        try {
            this.ia = new TTViewStub(context, new com.bytedance.sdk.openadsdk.res.layout.video.ia());
        } catch (Throwable unused) {
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.core.video.nativevideo.dq dqVar, d dVar) {
        this.s = dVar;
        this.p = dqVar;
    }

    public void dq(boolean z) {
        if (z) {
            d();
        }
        p();
    }

    public boolean dq() {
        View view = this.dq;
        return view != null && view.getVisibility() == 0;
    }

    public boolean dq(int i, com.bykv.vk.openvk.component.video.api.ox.ox oxVar, boolean z) {
        Context context = this.ox;
        if (context != null && oxVar != null) {
            try {
                dq(context, this.kk, z);
                this.mn = oxVar;
                if (i == 1 || i == 2) {
                    return dq(i);
                }
                return true;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return true;
    }
}
