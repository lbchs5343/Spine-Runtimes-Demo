package com.bytedance.sdk.component.dq;

/* loaded from: classes.dex */
class cd extends Exception {
    int dq;

    public cd(int i) {
        this.dq = i;
    }

    public cd(int i, String str) {
        super(str);
        this.dq = i;
    }
}
