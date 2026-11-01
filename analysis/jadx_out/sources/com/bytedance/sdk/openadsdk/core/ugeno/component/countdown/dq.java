package com.bytedance.sdk.openadsdk.core.ugeno.component.countdown;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.efb;
import g.fmg;

/* loaded from: classes3.dex */
public class dq extends efb {
    private String nt;
    private String ox;
    private String p;

    public dq(Context context) {
        super(context);
    }

    @Override // g.efb, g.dlv
    public void dq(String str, String str2) {
        super.dq(str, str2);
        str.getClass();
        switch (str) {
            case "before":
                this.ox = str2;
                break;
            case "finish":
                this.nt = str2;
                break;
            case "after":
                this.p = str2;
                break;
        }
    }

    @Override // g.efb
    public void mn(String str) {
        try {
            try {
                if (Integer.parseInt(str) <= 0 && !TextUtils.isEmpty(this.nt)) {
                    String str2 = this.nt;
                    ((efb) this).dq = str2;
                    ((fmg) this.ia).setText(str2);
                    float measureText = ((fmg) this.ia).getPaint().measureText(((efb) this).dq);
                    if (measureText >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        p((int) measureText);
                        return;
                    }
                    return;
                }
            } catch (NumberFormatException unused) {
            }
            if (TextUtils.isEmpty(str) || TextUtils.equals(str, "null")) {
                str = "";
            }
            if (TextUtils.isEmpty(this.p) || TextUtils.equals(this.p, "null")) {
                this.p = "";
            }
            if (TextUtils.isEmpty(this.ox) || TextUtils.equals(this.ox, "null")) {
                this.ox = "";
            }
            String str3 = this.ox + str + this.p;
            ((efb) this).dq = str3;
            ((fmg) this.ia).setText(str3);
            float measureText2 = ((fmg) this.ia).getPaint().measureText(((efb) this).dq);
            if (measureText2 >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                p((int) measureText2);
            }
        } catch (Throwable unused2) {
        }
    }

    @Override // g.efb, g.dlv
    public void p() {
        super.p();
        if (TextUtils.isEmpty(this.p) || TextUtils.equals(this.p, "null")) {
            this.p = "";
        }
        if (TextUtils.isEmpty(this.ox) || TextUtils.equals(this.ox, "null")) {
            this.ox = "";
        }
        String str = this.ox + this.p;
        ((efb) this).dq = str;
        ((fmg) this.ia).setText(str);
        ((fmg) this.ia).setGravity(17);
    }
}
