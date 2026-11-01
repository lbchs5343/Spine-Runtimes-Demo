package com.bytedance.sdk.openadsdk.core.le;

import android.graphics.Bitmap;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.component.iw.f;
import com.bytedance.sdk.component.iw.no;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.o;

/* loaded from: classes3.dex */
public class ox implements f<Bitmap> {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.gh.dq.ox f3151d;
    private boolean dq;

    public ox(boolean z) {
        this.dq = z;
        if (z) {
            this.f3151d = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d();
        }
    }

    public void d(String str) {
        com.bytedance.sdk.openadsdk.core.gh.dq.ox oxVar;
        if (!this.dq || (oxVar = this.f3151d) == null) {
            return;
        }
        oxVar.iw(str);
    }

    public void dq(int i) {
        com.bytedance.sdk.openadsdk.core.gh.dq.ox oxVar;
        if (!this.dq || (oxVar = this.f3151d) == null) {
            return;
        }
        oxVar.dq(i);
    }

    @Override // com.bytedance.sdk.component.iw.f
    @ATSMethod(2)
    public void dq(int i, String str, Throwable th) {
        com.bytedance.sdk.openadsdk.core.gh.dq.ox oxVar;
        if (!this.dq || (oxVar = this.f3151d) == null) {
            return;
        }
        oxVar.d(MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SHORT_SEEK).mn(o.dq(MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SHORT_SEEK));
        ig.dq().dq(this.f3151d);
    }

    @Override // com.bytedance.sdk.component.iw.f
    @ATSMethod(1)
    public void dq(no<Bitmap> noVar) {
        if (!this.dq || this.f3151d == null) {
            return;
        }
        if (noVar == null || noVar.ox() == null) {
            this.f3151d.d(202).mn(o.dq(202));
            ig.dq().dq(this.f3151d);
        }
    }

    public void dq(String str) {
        com.bytedance.sdk.openadsdk.core.gh.dq.ox oxVar;
        if (!this.dq || (oxVar = this.f3151d) == null) {
            return;
        }
        oxVar.ox(str);
    }

    public void ox(String str) {
        com.bytedance.sdk.openadsdk.core.gh.dq.ox oxVar;
        if (!this.dq || (oxVar = this.f3151d) == null) {
            return;
        }
        oxVar.p(str);
    }

    public void p(String str) {
        com.bytedance.sdk.openadsdk.core.gh.dq.ox oxVar;
        if (!this.dq || (oxVar = this.f3151d) == null) {
            return;
        }
        oxVar.ia(str);
    }
}
