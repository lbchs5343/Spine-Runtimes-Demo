package com.bytedance.sdk.openadsdk.f.d;

import android.app.Dialog;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.f.d.d.jy;

/* loaded from: classes3.dex */
public abstract class p extends jy {
    public abstract void dq(Dialog dialog, int[] iArr);

    @Override // com.bytedance.sdk.openadsdk.f.d.d.jy
    public void dq(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        dq(tTDislikeDialogAbstract, tTDislikeDialogAbstract != null ? tTDislikeDialogAbstract.getTTDislikeListViewIds() : new int[0]);
    }
}
