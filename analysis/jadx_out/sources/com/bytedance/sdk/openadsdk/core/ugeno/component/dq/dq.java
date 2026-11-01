package com.bytedance.sdk.openadsdk.core.ugeno.component.dq;

import android.content.Context;
import g.ajn;

/* loaded from: classes3.dex */
public class dq extends ajn {
    public dq(Context context) {
        super(context);
    }

    @Override // g.ajn
    public String mn(String str) {
        str.getClass();
        switch (str) {
            case "unmuted":
                return "tt_ugen_unmuted";
            case "back":
                return "tt_ugen_back";
            case "logo":
                return "tt_ugen_logo";
            case "close":
                return "tt_ugen_close";
            case "muted":
                return "tt_ugen_muted";
            default:
                return "";
        }
    }
}
