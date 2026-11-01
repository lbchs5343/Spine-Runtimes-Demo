package com.bytedance.sdk.openadsdk.core.playable;

import java.io.File;
import java.util.List;

/* loaded from: classes3.dex */
public class ia extends com.bytedance.sdk.openadsdk.core.kk.d {
    public ia(int i, int i2) {
        super(i, i2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.kk.d, com.bytedance.sdk.openadsdk.core.kk.dq
    public void dq(List<File> list) {
        int size = list.size();
        if (dq(0L, size)) {
            return;
        }
        for (File file : list) {
            com.bytedance.sdk.component.utils.iw.ox(file);
            size--;
            if (dq(file, 0L, size)) {
                return;
            }
        }
    }
}
