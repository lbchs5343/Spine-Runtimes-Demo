package com.bytedance.embedapplog;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.bytedance.embedapplog.hy;
import com.bytedance.embedapplog.o;

/* loaded from: classes.dex */
abstract class tl<SERVICE> implements hy {

    /* renamed from: d, reason: collision with root package name */
    private io<Boolean> f742d = new io<Boolean>() { // from class: com.bytedance.embedapplog.tl.1
        @Override // com.bytedance.embedapplog.io
        /* renamed from: ox, reason: merged with bridge method [inline-methods] */
        public Boolean dq(Object... objArr) {
            return Boolean.valueOf(nt.dq((Context) objArr[0], tl.this.dq));
        }
    };
    private final String dq;

    public tl(String str) {
        this.dq = str;
    }

    private hy.dq dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        hy.dq dqVar = new hy.dq();
        dqVar.f721d = str;
        return dqVar;
    }

    @Override // com.bytedance.embedapplog.hy
    public hy.dq d(Context context) {
        return dq((String) new o(context, ox(context), dq()).dq());
    }

    public abstract o.d<SERVICE, String> dq();

    @Override // com.bytedance.embedapplog.hy
    public boolean dq(Context context) {
        if (context == null) {
            return false;
        }
        return this.f742d.d(context).booleanValue();
    }

    public abstract Intent ox(Context context);
}
