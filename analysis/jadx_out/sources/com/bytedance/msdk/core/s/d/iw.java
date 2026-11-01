package com.bytedance.msdk.core.s.d;

import android.content.Context;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class iw extends s {

    /* renamed from: d, reason: collision with root package name */
    private int f1017d;
    private int dq;

    public iw(Context context, String str, int i) {
        super(context, str, i);
        this.dq = 0;
        this.f1017d = -1;
    }

    private void dq(int i) {
        Integer num;
        Map<Integer, List<com.bytedance.msdk.core.no.no>> map;
        List<com.bytedance.msdk.core.no.no> list;
        if (i > this.f1017d) {
            this.f1017d = i;
            List<Integer> list2 = this.fw;
            if (list2 == null || i >= list2.size() || (num = this.fw.get(i)) == null || (map = this.ia) == null || !map.containsKey(num) || (list = this.ia.get(num)) == null) {
                return;
            }
            this.dq = list.size() + this.dq;
        }
    }

    @Override // com.bytedance.msdk.core.s.d.d
    public int B_() {
        return this.dq;
    }

    @Override // com.bytedance.msdk.core.mn.iw, com.bytedance.msdk.core.mn.s, com.bytedance.msdk.core.mn.ox
    public void dq(int i, boolean z) {
        try {
            dq(i);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        super.dq(i, z);
    }
}
