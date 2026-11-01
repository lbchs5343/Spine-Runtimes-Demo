package com.bytedance.sdk.openadsdk.core.ugeno.component.countdown;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.ugeno.p;
import g.dlv;
import g.ebz;
import g.fzn;

/* loaded from: classes3.dex */
public class d extends dlv {

    /* renamed from: d, reason: collision with root package name */
    private String f3547d;
    private String dq;
    private String ox;
    private String p;

    public d(Context context) {
        super(context, 0);
    }

    @Override // g.dlv
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public CycleCountDownView ox() {
        return new CycleCountDownView(this.s);
    }

    public void dq(int i, int i2, int i3, boolean z) {
        View view = this.ia;
        if (view != null) {
            ((CycleCountDownView) view).dq(i, i2, i3);
            ((CycleCountDownView) this.ia).setCanSkip(z);
            ((CycleCountDownView) this.ia).setClickable(z);
            ((CycleCountDownView) this.ia).setEnabled(z);
        }
    }

    @Override // g.dlv
    public void dq(String str, String str2) {
        super.dq(str, str2);
        str.getClass();
        switch (str) {
            case "boxImage":
                ((CycleCountDownView) this.ia).setBoxImage(null);
                ((p) fzn.j().f17730e).dq(this.ig, str2, new ebz() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.countdown.d.1
                    @Override // g.ebz
                    public void dq(Bitmap bitmap) {
                        ((CycleCountDownView) ((dlv) d.this).ia).setBoxImage(bitmap);
                    }
                });
                break;
            case "before":
                this.dq = str2;
                break;
            case "finish":
                this.p = str2;
                break;
            case "text":
                this.ox = str2;
                break;
            case "after":
                this.f3547d = str2;
                break;
            case "boxFinishImage":
                ((p) fzn.j().f17730e).dq(this.ig, str2, new ebz() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.countdown.d.2
                    @Override // g.ebz
                    public void dq(Bitmap bitmap) {
                        ((CycleCountDownView) ((dlv) d.this).ia).setBoxFinish(bitmap);
                    }
                });
                break;
        }
        ((CycleCountDownView) this.ia).dq(this.dq, this.f3547d, this.ox, this.p);
    }

    @Override // g.dlv
    public void p() {
        super.p();
    }
}
