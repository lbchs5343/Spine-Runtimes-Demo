package com.bytedance.sdk.openadsdk.core.ir;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.ats.ATS;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import java.text.DecimalFormat;
import java.util.Formatter;
import java.util.Locale;
import java.util.TimeZone;

@ATS(single = true, value = {"device_info"})
/* loaded from: classes3.dex */
public class kk implements com.bytedance.sdk.component.p.dq {
    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(30)
    public String bl() {
        return com.bytedance.sdk.openadsdk.core.gh.dq.no();
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(19)
    public String cd() {
        return com.bytedance.sdk.openadsdk.core.i.iw();
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(2)
    public String d() {
        StringBuilder sb = new StringBuilder();
        sb.append(Build.VERSION.SDK_INT);
        return sb.toString();
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(1)
    public String dq() {
        return com.bytedance.sdk.openadsdk.core.i.s();
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(26)
    public String e() {
        return com.bytedance.sdk.openadsdk.core.i.no();
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(17)
    public String f() {
        String str;
        double currentTimeMillis = (System.currentTimeMillis() - SystemClock.elapsedRealtime()) / 1000.0d;
        try {
            str = new Formatter().format("%.6f", Double.valueOf(currentTimeMillis)).toString();
        } catch (Exception unused) {
            str = "";
        }
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return new DecimalFormat("#0.000000").format(currentTimeMillis);
        } catch (Exception unused2) {
            return str;
        }
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(18)
    public String fw() {
        return com.bytedance.sdk.openadsdk.core.i.r();
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(20)
    public String gh() {
        return o.iw();
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(28)
    public int h() {
        return o.dq(com.bytedance.sdk.openadsdk.core.wp.getContext(), false);
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(22)
    public String i() {
        return com.bytedance.sdk.openadsdk.core.i.mn();
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(9)
    public String ia() {
        return com.bytedance.sdk.openadsdk.core.i.f();
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(13)
    public String ig() {
        try {
            return TimeZone.getDefault().getDisplayName(false, 0);
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(7)
    public String iw() {
        return Locale.getDefault().getLanguage();
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(29)
    public String ji() {
        return c.iw();
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(16)
    public String jy() {
        return Build.MANUFACTURER;
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(24)
    public String k() {
        return com.bytedance.sdk.openadsdk.core.i.ia();
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(10)
    public String kk() {
        return com.bytedance.sdk.openadsdk.core.i.cd();
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(27)
    public String kx() {
        return com.bytedance.sdk.openadsdk.core.i.i();
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(23)
    public String le() {
        return com.bytedance.sdk.openadsdk.core.i.kk();
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(8)
    public String mn() {
        return o.o();
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(14)
    public String mp() {
        return String.valueOf(Long.parseLong(c.ig()) * 1024);
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(31)
    public int n() {
        return com.bytedance.sdk.openadsdk.core.gh.dq.ig();
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(12)
    public String no() {
        return Build.VERSION.RELEASE;
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(11)
    public int o() {
        return 1;
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(32)
    public String op() {
        return com.bytedance.sdk.openadsdk.core.gh.dq.dq(ce.ia(com.bytedance.sdk.openadsdk.core.wp.getContext()));
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(3)
    public int ox() {
        return com.bytedance.sdk.component.utils.q.ox(com.bytedance.sdk.openadsdk.core.wp.getContext());
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(4)
    public String p() {
        return com.bytedance.sdk.openadsdk.core.i.le();
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(15)
    public String q() {
        return String.valueOf(c.dq(com.bytedance.sdk.openadsdk.core.wp.getContext()));
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(21)
    public String r() {
        return com.bytedance.sdk.openadsdk.core.ox.dq.ox();
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(5)
    public String s() {
        Context context = com.bytedance.sdk.openadsdk.core.wp.getContext();
        return context == null ? "" : Settings.Global.getString(context.getContentResolver(), "device_name");
    }

    @Override // com.bytedance.sdk.component.p.dq
    @ATSMethod(25)
    public String wp() {
        return com.bytedance.sdk.openadsdk.core.i.p();
    }
}
