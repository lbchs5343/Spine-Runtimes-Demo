package g;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes3.dex */
public final class cov implements dte {

    /* renamed from: a, reason: collision with root package name */
    public final URL f13248a;

    /* renamed from: b, reason: collision with root package name */
    public final cqi f13249b;

    /* renamed from: c, reason: collision with root package name */
    public final emr f13250c;

    /* renamed from: d, reason: collision with root package name */
    public final cqi f13251d;

    /* renamed from: e, reason: collision with root package name */
    public final ConnectivityManager f13252e;

    /* renamed from: f, reason: collision with root package name */
    public final Context f13253f;

    /* renamed from: g, reason: collision with root package name */
    public final int f13254g;

    public cov(Context context, cqi cqiVar, cqi cqiVar2) {
        tu tuVar = new tu();
        fte fteVar = fte.f17370a;
        tuVar.i(dct.class, fteVar);
        tuVar.i(aeq.class, fteVar);
        fno fnoVar = fno.f17091e;
        tuVar.i(cnt.class, fnoVar);
        tuVar.i(dow.class, fnoVar);
        fbx fbxVar = fbx.f16534a;
        tuVar.i(cij.class, fbxVar);
        tuVar.i(bsp.class, fbxVar);
        bim bimVar = bim.f11664g;
        tuVar.i(mm.class, bimVar);
        tuVar.i(ewl.class, bimVar);
        fxp fxpVar = fxp.f17581e;
        tuVar.i(dux.class, fxpVar);
        tuVar.i(bcj.class, fxpVar);
        gss gssVar = gss.f18703a;
        tuVar.i(ih.class, gssVar);
        tuVar.i(bce.class, gssVar);
        tuVar.f20071e = true;
        this.f13250c = new emr(9, tuVar);
        this.f13253f = context;
        this.f13252e = (ConnectivityManager) context.getSystemService("connectivity");
        this.f13248a = h(dzj.f15125c);
        this.f13249b = cqiVar2;
        this.f13251d = cqiVar;
        this.f13254g = 130000;
    }

    public static URL h(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e2) {
            throw new IllegalArgumentException(tn.x("Invalid url: ", str), e2);
        }
    }

    public final gfj i(gfj gfjVar) {
        int subtype;
        NetworkInfo activeNetworkInfo = this.f13252e.getActiveNetworkInfo();
        daw i = gfjVar.i();
        int i2 = Build.VERSION.SDK_INT;
        HashMap hashMap = (HashMap) i.f13888g;
        if (hashMap == null) {
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }
        hashMap.put("sdk-version", String.valueOf(i2));
        i.s("model", Build.MODEL);
        i.s("hardware", Build.HARDWARE);
        i.s("device", Build.DEVICE);
        i.s("product", Build.PRODUCT);
        i.s("os-uild", Build.ID);
        i.s("manufacturer", Build.MANUFACTURER);
        i.s("fingerprint", Build.FINGERPRINT);
        Calendar.getInstance();
        long offset = TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000;
        HashMap hashMap2 = (HashMap) i.f13888g;
        if (hashMap2 == null) {
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }
        hashMap2.put("tz-offset", String.valueOf(offset));
        int c2 = activeNetworkInfo == null ? byo.NONE.c() : activeNetworkInfo.getType();
        HashMap hashMap3 = (HashMap) i.f13888g;
        if (hashMap3 == null) {
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }
        hashMap3.put("net-type", String.valueOf(c2));
        int i3 = -1;
        if (activeNetworkInfo == null) {
            subtype = cme.UNKNOWN_MOBILE_SUBTYPE.c();
        } else {
            subtype = activeNetworkInfo.getSubtype();
            if (subtype == -1) {
                subtype = cme.COMBINED.c();
            } else if (((cme) cme.f13106a.get(subtype)) == null) {
                subtype = 0;
            }
        }
        HashMap hashMap4 = (HashMap) i.f13888g;
        if (hashMap4 == null) {
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }
        hashMap4.put("mobile-subtype", String.valueOf(subtype));
        i.s("country", Locale.getDefault().getCountry());
        i.s("locale", Locale.getDefault().getLanguage());
        Context context = this.f13253f;
        i.s("mcc_mnc", ((TelephonyManager) context.getSystemService("phone")).getSimOperator());
        try {
            i3 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            baf.bd("CctTransportBackend", "Unable to find version code for package", e2);
        }
        i.s("application_build", Integer.toString(i3));
        return i.y();
    }
}
