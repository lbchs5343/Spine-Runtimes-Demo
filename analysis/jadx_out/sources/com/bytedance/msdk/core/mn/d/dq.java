package com.bytedance.msdk.core.mn.d;

import android.content.Context;
import com.bytedance.msdk.core.mn.iw;
import com.bytedance.msdk.core.no.no;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public abstract class dq extends iw {
    public dq(Context context, String str, int i) {
        super(context, str, i);
    }

    @Override // com.bytedance.msdk.core.mn.s
    public void ox(final List<no> list) {
        if (this.u) {
            com.bytedance.msdk.dq.s.iw.p(new Runnable() { // from class: com.bytedance.msdk.core.mn.d.dq.1
                @Override // java.lang.Runnable
                public void run() {
                    dq.super.ox((List<no>) list);
                }
            });
        } else {
            super.ox(list);
        }
    }

    @Override // com.bytedance.msdk.core.mn.s
    public boolean p(final List<no> list) {
        if (!this.u) {
            return super.p(list);
        }
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (final int i = 0; i < list.size(); i++) {
            try {
                Future dq = com.bytedance.msdk.dq.s.iw.dq(new Callable<Boolean>() { // from class: com.bytedance.msdk.core.mn.d.dq.2
                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // java.util.concurrent.Callable
                    public Boolean call() {
                        return Boolean.valueOf(dq.this.dq((no) list.get(i), list.size()));
                    }
                });
                if (dq != null) {
                    arrayList.add(dq);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            try {
                Boolean bool = (Boolean) ((Future) it.next()).get(500L, TimeUnit.MILLISECONDS);
                if (bool != null) {
                    z = bool.booleanValue();
                }
            } catch (Throwable unused) {
            }
        }
        return z;
    }
}
