package com.bytedance.sdk.component.iw.ox;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.iw.gh;
import com.bytedance.sdk.component.iw.jy;
import com.bytedance.sdk.component.iw.mp;
import com.bytedance.sdk.component.iw.o;
import com.bytedance.sdk.component.iw.ox.ox;
import com.bytedance.sdk.openadsdk.ats.ATS;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Collection;
import java.util.Iterator;

@ATS(single = true, value = {"img_service"})
/* loaded from: classes.dex */
public class d implements jy {
    private volatile iw dq;

    private d() {
    }

    private void d(Context context, mp mpVar) {
        if (mpVar == null) {
            mpVar = s.dq(context);
        }
        this.dq = new iw(context, mpVar);
    }

    public static jy dq(Context context, mp mpVar) {
        d dVar = new d();
        dVar.d(context, mpVar);
        return dVar;
    }

    private void dq(Collection<? extends com.bytedance.sdk.component.iw.dq> collection, double d2) {
        if (collection == null) {
            return;
        }
        Iterator<? extends com.bytedance.sdk.component.iw.dq> it = collection.iterator();
        while (it.hasNext()) {
            it.next().dq(d2);
        }
    }

    @Override // com.bytedance.sdk.component.iw.jy
    @ATSMethod(3)
    public void d(double d2) {
        if (this.dq != null) {
            dq(this.dq.dq(), d2);
            dq(this.dq.d(), d2);
        }
    }

    @Override // com.bytedance.sdk.component.iw.jy
    @ATSMethod(8)
    public boolean d(String str, String str2, String str3) {
        if (this.dq == null || TextUtils.isEmpty(str3)) {
            return false;
        }
        if (TextUtils.isEmpty(str2)) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            str2 = com.bytedance.sdk.component.iw.ox.ox.ox.dq(str);
        }
        com.bytedance.sdk.component.iw.ox dq = this.dq.dq(str3);
        if (dq != null) {
            return dq.d(str2);
        }
        return false;
    }

    @Override // com.bytedance.sdk.component.iw.jy
    @ATSMethod(1)
    public o dq(String str) {
        return new ox.d(this.dq).dq(str);
    }

    @Override // com.bytedance.sdk.component.iw.jy
    @ATSMethod(6)
    public InputStream dq(String str, String str2) {
        if (this.dq != null) {
            if (TextUtils.isEmpty(str2)) {
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                str2 = com.bytedance.sdk.component.iw.ox.ox.ox.dq(str);
            }
            Collection<gh> d2 = this.dq.d();
            if (d2 != null) {
                Iterator<gh> it = d2.iterator();
                while (it.hasNext()) {
                    byte[] dq = it.next().dq((gh) str2);
                    if (dq != null) {
                        return new ByteArrayInputStream(dq);
                    }
                }
            }
            Collection<com.bytedance.sdk.component.iw.ox> ox = this.dq.ox();
            if (ox != null) {
                Iterator<com.bytedance.sdk.component.iw.ox> it2 = ox.iterator();
                while (it2.hasNext()) {
                    InputStream dq2 = it2.next().dq(str2);
                    if (dq2 != null) {
                        return dq2;
                    }
                }
            }
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.iw.jy
    @ATSMethod(7)
    public InputStream dq(String str, String str2, String str3) {
        if (this.dq == null || TextUtils.isEmpty(str3)) {
            return null;
        }
        if (TextUtils.isEmpty(str2)) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            str2 = com.bytedance.sdk.component.iw.ox.ox.ox.dq(str);
        }
        com.bytedance.sdk.component.iw.ox dq = this.dq.dq(str3);
        if (dq != null) {
            return dq.dq(str2);
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.iw.jy
    @ATSMethod(5)
    public void dq() {
        ox(0.0d);
        d(0.0d);
    }

    @Override // com.bytedance.sdk.component.iw.jy
    @ATSMethod(2)
    public void dq(double d2) {
        d(d2);
        ox(d2);
    }

    @Override // com.bytedance.sdk.component.iw.jy
    @ATSMethod(4)
    public void ox(double d2) {
        if (this.dq != null) {
            dq(this.dq.ox(), d2);
        }
    }
}
