package com.bytedance.sdk.component.no.s.dq.dq;

import android.text.TextUtils;

/* loaded from: classes.dex */
public class ox implements com.bytedance.sdk.component.no.s.dq.dq {
    @Override // com.bytedance.sdk.component.no.s.dq.dq
    public Object dq(Class cls, String str) {
        if (TextUtils.isEmpty(str)) {
            return ' ';
        }
        return Character.valueOf(str.charAt(0));
    }
}
