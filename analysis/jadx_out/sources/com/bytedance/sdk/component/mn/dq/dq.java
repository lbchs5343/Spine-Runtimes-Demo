package com.bytedance.sdk.component.mn.dq;

import android.util.Base64;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public class dq implements ox {
    @Override // com.bytedance.sdk.component.mn.dq.ox
    public <T> T d(T t) {
        return (T) new String(Base64.decode(t.toString().getBytes(Charset.forName("UTF-8")), 0), Charset.forName("UTF-8"));
    }

    @Override // com.bytedance.sdk.component.mn.dq.ox
    public <T> String dq(T t) {
        return Base64.encodeToString(t.toString().getBytes(Charset.forName("UTF-8")), 0);
    }
}
