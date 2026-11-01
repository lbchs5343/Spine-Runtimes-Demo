package com.bytedance.sdk.openadsdk.f.d;

import android.app.Dialog;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.f.d.d.ia;
import com.bytedance.sdk.openadsdk.f.d.d.q;

/* loaded from: classes3.dex */
public abstract class ox extends q {
    public abstract void d(Dialog dialog, int[] iArr);

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void d(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        d(tTDislikeDialogAbstract, tTDislikeDialogAbstract != null ? tTDislikeDialogAbstract.getTTDislikeListViewIds() : new int[0]);
    }

    public abstract ia dq(Dialog dialog, int[] iArr);

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public ia dq(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        return dq(tTDislikeDialogAbstract, tTDislikeDialogAbstract != null ? tTDislikeDialogAbstract.getTTDislikeListViewIds() : new int[0]);
    }
}
