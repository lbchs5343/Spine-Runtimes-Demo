package com.bytedance.sdk.component.iw.p;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.iw.cd;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public class o extends dq {
    private Bitmap d(com.bytedance.sdk.component.iw.ox.ox oxVar) {
        Collection<cd> dq = oxVar.r().dq();
        Bitmap bitmap = null;
        if (dq == null) {
            return null;
        }
        Iterator<cd> it = dq.iterator();
        while (it.hasNext() && (bitmap = it.next().dq((cd) oxVar.mn())) == null) {
        }
        return bitmap;
    }

    private Bitmap ox(com.bytedance.sdk.component.iw.ox.ox oxVar) {
        return oxVar.r().dq(oxVar.i()).dq((cd) oxVar.mn());
    }

    @Override // com.bytedance.sdk.component.iw.p.kk
    public String dq() {
        return "memory_cache";
    }

    @Override // com.bytedance.sdk.component.iw.p.kk
    public void dq(com.bytedance.sdk.component.iw.ox.ox oxVar) {
        int mp = oxVar.mp();
        Bitmap d2 = (mp == 2 || mp == 1) ? (oxVar.le() || oxVar.i().iw()) ? d(oxVar) : ox(oxVar) : null;
        if (d2 == null) {
            oxVar.dq(new ig());
        } else {
            oxVar.dq(new mp(d2, null, null, false));
        }
    }
}
