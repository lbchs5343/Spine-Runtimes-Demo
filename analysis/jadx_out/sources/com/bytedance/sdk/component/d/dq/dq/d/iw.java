package com.bytedance.sdk.component.d.dq.dq.d;

import android.text.TextUtils;
import com.bytedance.sdk.component.d.dq.f;
import com.bytedance.sdk.component.d.dq.fw;
import com.bytedance.sdk.component.d.dq.mp;
import com.bytedance.sdk.component.d.dq.no;
import com.bytedance.sdk.component.d.dq.q;
import com.bytedance.sdk.component.ox.d.ji;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class iw extends f {

    /* renamed from: d, reason: collision with root package name */
    q f1838d;
    HttpURLConnection dq;
    public long ox;
    public long p;
    ji s = null;

    public iw(HttpURLConnection httpURLConnection, q qVar) {
        this.dq = httpURLConnection;
        this.f1838d = qVar;
    }

    @Override // com.bytedance.sdk.component.d.dq.f, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            iw().close();
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.d.dq.f
    public long d() {
        return this.p;
    }

    @Override // com.bytedance.sdk.component.d.dq.f
    public long dq() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.component.d.dq.f
    public String dq(String str) {
        return this.dq.getHeaderField(str);
    }

    @Override // com.bytedance.sdk.component.d.dq.f
    public String dq(String str, String str2) {
        return !TextUtils.isEmpty(dq(str)) ? dq(str) : str2;
    }

    @Override // com.bytedance.sdk.component.d.dq.f
    public mp ia() {
        return mp.HTTP_1_1;
    }

    @Override // com.bytedance.sdk.component.d.dq.f
    public fw iw() {
        try {
            return new mn(this.dq);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.component.d.dq.f
    public no kk() {
        return new no(this.s);
    }

    @Override // com.bytedance.sdk.component.d.dq.f
    public com.bytedance.sdk.component.d.dq.iw mn() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<String>> entry : this.dq.getHeaderFields().entrySet()) {
            for (String str : entry.getValue()) {
                if (!"Content-Range".equalsIgnoreCase(entry.getKey()) || ox() != 206) {
                    arrayList.add(entry.getKey());
                    arrayList.add(str);
                }
            }
        }
        return new com.bytedance.sdk.component.d.dq.iw((String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    @Override // com.bytedance.sdk.component.d.dq.f
    public int ox() {
        try {
            return this.dq.getResponseCode();
        } catch (Exception unused) {
            return -1;
        }
    }

    @Override // com.bytedance.sdk.component.d.dq.f
    public boolean p() {
        return ox() >= 200 && ox() < 300;
    }

    @Override // com.bytedance.sdk.component.d.dq.f
    public String s() throws IOException {
        return this.dq.getResponseMessage();
    }

    public String toString() {
        return "";
    }
}
