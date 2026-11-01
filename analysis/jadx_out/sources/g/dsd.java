package g;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.SystemProperties;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes3.dex */
public final class dsd extends bgf {

    /* renamed from: a, reason: collision with root package name */
    public Boolean f14697a;

    /* renamed from: b, reason: collision with root package name */
    public auz f14698b;

    /* renamed from: c, reason: collision with root package name */
    public Boolean f14699c;

    public final boolean g(String str, tw twVar) {
        if (str == null) {
            return ((Boolean) twVar.h(null)).booleanValue();
        }
        String c2 = this.f14698b.c(str, twVar.f20078d);
        return TextUtils.isEmpty(c2) ? ((Boolean) twVar.h(null)).booleanValue() : ((Boolean) twVar.h(Boolean.valueOf("1".equals(c2)))).booleanValue();
    }

    public final Boolean h(String str) {
        ckd.bf(str);
        Bundle t = t();
        if (t != null) {
            if (t.containsKey(str)) {
                return Boolean.valueOf(t.getBoolean(str));
            }
            return null;
        }
        bgm bgmVar = ((cyg) this.z).z;
        cyg.ak(bgmVar);
        bgmVar.f11518b.h("Failed to load metadata: Metadata bundle is null");
        return null;
    }

    public final boolean j() {
        Boolean h = h("google_analytics_automatic_screen_reporting_enabled");
        return h == null || h.booleanValue();
    }

    public final int k(String str, tw twVar) {
        if (str == null) {
            return ((Integer) twVar.h(null)).intValue();
        }
        String c2 = this.f14698b.c(str, twVar.f20078d);
        if (TextUtils.isEmpty(c2)) {
            return ((Integer) twVar.h(null)).intValue();
        }
        try {
            return ((Integer) twVar.h(Integer.valueOf(Integer.parseInt(c2)))).intValue();
        } catch (NumberFormatException unused) {
            return ((Integer) twVar.h(null)).intValue();
        }
    }

    public final boolean l(String str) {
        return "1".equals(this.f14698b.c(str, "measurement.event_sampling_enabled"));
    }

    public final boolean m() {
        ((cyg) this.z).getClass();
        Boolean h = h("firebase_analytics_collection_deactivated");
        return h != null && h.booleanValue();
    }

    public final void n() {
        ((cyg) this.z).getClass();
    }

    public final long o(String str, tw twVar) {
        if (str == null) {
            return ((Long) twVar.h(null)).longValue();
        }
        String c2 = this.f14698b.c(str, twVar.f20078d);
        if (TextUtils.isEmpty(c2)) {
            return ((Long) twVar.h(null)).longValue();
        }
        try {
            return ((Long) twVar.h(Long.valueOf(Long.parseLong(c2)))).longValue();
        } catch (NumberFormatException unused) {
            return ((Long) twVar.h(null)).longValue();
        }
    }

    public final double p(String str, tw twVar) {
        if (str == null) {
            return ((Double) twVar.h(null)).doubleValue();
        }
        String c2 = this.f14698b.c(str, twVar.f20078d);
        if (TextUtils.isEmpty(c2)) {
            return ((Double) twVar.h(null)).doubleValue();
        }
        try {
            return ((Double) twVar.h(Double.valueOf(Double.parseDouble(c2)))).doubleValue();
        } catch (NumberFormatException unused) {
            return ((Double) twVar.h(null)).doubleValue();
        }
    }

    public final boolean q(String str) {
        return "1".equals(this.f14698b.c(str, "gaia_collection_enabled"));
    }

    public final int r() {
        dkq dkqVar = ((cyg) this.z).m;
        cyg.ai(dkqVar);
        Boolean bool = ((cyg) dkqVar.z).ao().n;
        if (dkqVar.ay() < 201500) {
            return (bool == null || bool.booleanValue()) ? 25 : 100;
        }
        return 100;
    }

    public final boolean s() {
        if (this.f14697a == null) {
            Boolean h = h("app_measurement_lite");
            this.f14697a = h;
            if (h == null) {
                this.f14697a = Boolean.FALSE;
            }
        }
        return this.f14697a.booleanValue() || !((cyg) this.z).t;
    }

    public final Bundle t() {
        cyg cygVar = (cyg) this.z;
        try {
            if (cygVar.v.getPackageManager() == null) {
                bgm bgmVar = cygVar.z;
                cyg.ak(bgmVar);
                bgmVar.f11518b.h("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo b2 = chk.c(cygVar.v).b(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME, cygVar.v.getPackageName());
            if (b2 != null) {
                return b2.metaData;
            }
            bgm bgmVar2 = cygVar.z;
            cyg.ak(bgmVar2);
            bgmVar2.f11518b.h("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e2) {
            bgm bgmVar3 = cygVar.z;
            cyg.ak(bgmVar3);
            bgmVar3.f11518b.i(e2, "Failed to load metadata: Package name not found");
            return null;
        }
    }

    public final String u(String str) {
        cyg cygVar = (cyg) this.z;
        try {
            String str2 = (String) SystemProperties.class.getMethod("get", String.class, String.class).invoke(null, str, "");
            ckd.k(str2);
            return str2;
        } catch (ClassNotFoundException e2) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11518b.i(e2, "Could not find SystemProperties class");
            return "";
        } catch (IllegalAccessException e3) {
            bgm bgmVar2 = cygVar.z;
            cyg.ak(bgmVar2);
            bgmVar2.f11518b.i(e3, "Could not access SystemProperties.get()");
            return "";
        } catch (NoSuchMethodException e4) {
            bgm bgmVar3 = cygVar.z;
            cyg.ak(bgmVar3);
            bgmVar3.f11518b.i(e4, "Could not find SystemProperties.get() method");
            return "";
        } catch (InvocationTargetException e5) {
            bgm bgmVar4 = cygVar.z;
            cyg.ak(bgmVar4);
            bgmVar4.f11518b.i(e5, "SystemProperties.get() threw an exception");
            return "";
        }
    }
}
