package com.bytedance.sdk.openadsdk.core.ugeno.component.gif;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.core.ugeno.p;
import g.acw;
import g.dlv;
import g.fzn;

/* loaded from: classes3.dex */
public class dq extends dlv {

    /* renamed from: d, reason: collision with root package name */
    protected ImageView.ScaleType f3550d;
    protected String dq;

    public dq(Context context) {
        super(context, 0);
        this.f3550d = ImageView.ScaleType.FIT_CENTER;
    }

    private void d() {
        if (TextUtils.isEmpty(this.dq)) {
            return;
        }
        if (!this.dq.startsWith("local://")) {
            ((p) fzn.j().f17730e).dq(this.ig, this.dq, (ImageView) this.ia);
        } else {
            ((UgenGif) this.ia).dq(acw.as(this.s, this.dq.replace("local://", ""), "drawable"), false);
        }
    }

    private ImageView.ScaleType mn(String str) {
        ImageView.ScaleType scaleType;
        scaleType = ImageView.ScaleType.FIT_XY;
        str.getClass();
        switch (str) {
            case "center":
                return ImageView.ScaleType.CENTER;
            case "fitEnd":
                return ImageView.ScaleType.FIT_END;
            case "fitStart":
                return ImageView.ScaleType.FIT_START;
            case "centerInside":
                return ImageView.ScaleType.CENTER_INSIDE;
            case "fitCenter":
                return ImageView.ScaleType.FIT_CENTER;
            case "centerCrop":
                return ImageView.ScaleType.CENTER_CROP;
            default:
                return scaleType;
        }
    }

    @Override // g.dlv
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public UgenGif ox() {
        UgenGif ugenGif = new UgenGif(this.s);
        this.ia = ugenGif;
        ugenGif.dq(this);
        return (UgenGif) this.ia;
    }

    @Override // g.dlv
    public void dq(String str, String str2) {
        super.dq(str, str2);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        str.getClass();
        if (str.equals("scaleType")) {
            this.f3550d = mn(str2);
        } else if (str.equals("src")) {
            this.dq = str2;
        }
    }

    @Override // g.dlv, g.eun
    public void dq(boolean z) {
        super.dq(z);
        if (z) {
            p();
        }
    }

    @Override // g.dlv, g.eun
    public void mn() {
        super.mn();
    }

    @Override // g.dlv
    public void p() {
        super.p();
        d();
        ((UgenGif) this.ia).setScaleType(this.f3550d);
    }
}
