package com.bytedance.sdk.component.dq;

import android.text.TextUtils;

/* loaded from: classes.dex */
public enum k {
    PUBLIC,
    PROTECTED,
    PRIVATE;

    public static k dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return PUBLIC;
        }
        String lowerCase = str.toLowerCase();
        return TextUtils.equals("protected", lowerCase) ? PROTECTED : TextUtils.equals("private", lowerCase) ? PRIVATE : PUBLIC;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this == PRIVATE ? "private" : this == PROTECTED ? "protected" : "public";
    }
}
