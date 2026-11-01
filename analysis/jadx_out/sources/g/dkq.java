package g;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import java.io.ByteArrayInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;

/* loaded from: classes3.dex */
public final class dkq extends bkw {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f14323a = {"firebase_", "google_", "ga_"};

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f14324b = {"_err"};

    /* renamed from: c, reason: collision with root package name */
    public Integer f14325c;

    /* renamed from: g, reason: collision with root package name */
    public SecureRandom f14326g;
    public final AtomicLong h;
    public int j;

    public dkq(cyg cygVar) {
        super(cygVar);
        this.f14325c = null;
        this.h = new AtomicLong(0L);
    }

    public static boolean al(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    public static MessageDigest ap() {
        MessageDigest messageDigest;
        for (int i = 0; i < 2; i++) {
            try {
                messageDigest = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }

    public static ArrayList k(List list) {
        if (list == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            bou bouVar = (bou) it.next();
            Bundle bundle = new Bundle();
            bundle.putString(PluginConstants.KEY_APP_ID, bouVar.zza);
            bundle.putString(LiveConfigKey.ORIGIN, bouVar.zzb);
            bundle.putLong("creation_timestamp", bouVar.zzd);
            bundle.putString(abn.EXTRA_UA_APP_NAME, bouVar.zzc.zzb);
            Object zza = bouVar.zzc.zza();
            ckd.k(zza);
            dyd.bf(zza, bundle);
            bundle.putBoolean("active", bouVar.zze);
            String str = bouVar.zzf;
            if (str != null) {
                bundle.putString("trigger_event_name", str);
            }
            ctf ctfVar = bouVar.zzg;
            if (ctfVar != null) {
                bundle.putString("timed_out_event_name", ctfVar.zza);
                cde cdeVar = ctfVar.zzb;
                if (cdeVar != null) {
                    bundle.putBundle("timed_out_event_params", cdeVar.zzc());
                }
            }
            bundle.putLong("trigger_timeout", bouVar.zzh);
            ctf ctfVar2 = bouVar.zzi;
            if (ctfVar2 != null) {
                bundle.putString("triggered_event_name", ctfVar2.zza);
                cde cdeVar2 = ctfVar2.zzb;
                if (cdeVar2 != null) {
                    bundle.putBundle("triggered_event_params", cdeVar2.zzc());
                }
            }
            bundle.putLong("triggered_timestamp", bouVar.zzc.zzc);
            bundle.putLong("time_to_live", bouVar.zzj);
            ctf ctfVar3 = bouVar.zzk;
            if (ctfVar3 != null) {
                bundle.putString("expired_event_name", ctfVar3.zza);
                cde cdeVar3 = ctfVar3.zzb;
                if (cdeVar3 != null) {
                    bundle.putBundle("expired_event_params", cdeVar3.zzc());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    public static boolean l(String str, String[] strArr) {
        ckd.k(strArr);
        for (Object obj : strArr) {
            if (str == obj) {
                return true;
            }
            if (str != null && str.equals(obj)) {
                return true;
            }
        }
        return false;
    }

    public static boolean m(String str, String str2, String str3, String str4) {
        boolean isEmpty = TextUtils.isEmpty(str);
        boolean isEmpty2 = TextUtils.isEmpty(str2);
        if (!isEmpty && !isEmpty2) {
            ckd.k(str);
            return !str.equals(str2);
        }
        if (isEmpty && isEmpty2) {
            return (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) ? !TextUtils.isEmpty(str4) : !str3.equals(str4);
        }
        if (isEmpty) {
            return TextUtils.isEmpty(str3) || !str3.equals(str4);
        }
        if (TextUtils.isEmpty(str4)) {
            return false;
        }
        return TextUtils.isEmpty(str3) || !str3.equals(str4);
    }

    public static boolean o(Context context) {
        ServiceInfo serviceInfo;
        ServiceInfo serviceInfo2;
        ckd.k(context);
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null && (serviceInfo2 = packageManager.getServiceInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementJobService"), 0)) != null) {
                    if (serviceInfo2.enabled) {
                        return true;
                    }
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            return false;
        }
        try {
            PackageManager packageManager2 = context.getPackageManager();
            if (packageManager2 != null && (serviceInfo = packageManager2.getServiceInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementService"), 0)) != null) {
                if (serviceInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused2) {
        }
        return false;
    }

    public static boolean p(Context context) {
        ActivityInfo receiverInfo;
        ckd.k(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) != null) {
                if (receiverInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public static void q(ein einVar, Bundle bundle, boolean z) {
        if (bundle != null && einVar != null) {
            if (!bundle.containsKey("_sc") || z) {
                String str = einVar.f15597c;
                if (str != null) {
                    bundle.putString("_sn", str);
                } else {
                    bundle.remove("_sn");
                }
                String str2 = einVar.f15599e;
                if (str2 != null) {
                    bundle.putString("_sc", str2);
                } else {
                    bundle.remove("_sc");
                }
                bundle.putLong("_si", einVar.f15600f);
                return;
            }
            z = false;
        }
        if (bundle != null && einVar == null && z) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    public static boolean r(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    public static String s(int i, String str, boolean z) {
        if (str == null) {
            return null;
        }
        if (str.codePointCount(0, str.length()) <= i) {
            return str;
        }
        if (z) {
            return String.valueOf(str.substring(0, str.offsetByCodePoints(0, i))).concat("...");
        }
        return null;
    }

    public static boolean t(String str) {
        ckd.bf(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    public static long u(byte[] bArr) {
        ckd.k(bArr);
        int length = bArr.length;
        int i = 0;
        ckd.t(length > 0);
        long j = 0;
        for (int i2 = length - 1; i2 >= 0 && i2 >= bArr.length - 8; i2--) {
            j += (bArr[i2] & 255) << i;
            i += 8;
        }
        return j;
    }

    public static void v(btm btmVar, String str, int i, String str2, String str3, int i2) {
        Bundle bundle = new Bundle();
        x(i, bundle);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i == 6 || i == 7 || i == 2) {
            bundle.putLong("_el", i2);
        }
        btmVar.zza(str, bundle);
    }

    public static byte[] w(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(obtain, 0);
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }

    public static final boolean x(int i, Bundle bundle) {
        if (bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", i);
        return true;
    }

    public final Bundle aq(Uri uri) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        if (uri != null) {
            try {
                if (uri.isHierarchical()) {
                    str = uri.getQueryParameter("utm_campaign");
                    str2 = uri.getQueryParameter("utm_source");
                    str3 = uri.getQueryParameter("utm_medium");
                    str4 = uri.getQueryParameter("gclid");
                    str5 = uri.getQueryParameter("utm_id");
                    str6 = uri.getQueryParameter("dclid");
                    str7 = uri.getQueryParameter("srsltid");
                } else {
                    str = null;
                    str2 = null;
                    str3 = null;
                    str4 = null;
                    str5 = null;
                    str6 = null;
                    str7 = null;
                }
                if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3) && TextUtils.isEmpty(str4) && TextUtils.isEmpty(str5) && TextUtils.isEmpty(str6) && TextUtils.isEmpty(str7)) {
                    return null;
                }
                Bundle bundle = new Bundle();
                if (!TextUtils.isEmpty(str)) {
                    bundle.putString("campaign", str);
                }
                if (!TextUtils.isEmpty(str2)) {
                    bundle.putString(abn.EXTRA_SOURCE, str2);
                }
                if (!TextUtils.isEmpty(str3)) {
                    bundle.putString("medium", str3);
                }
                if (!TextUtils.isEmpty(str4)) {
                    bundle.putString("gclid", str4);
                }
                String queryParameter = uri.getQueryParameter("utm_term");
                if (!TextUtils.isEmpty(queryParameter)) {
                    bundle.putString("term", queryParameter);
                }
                String queryParameter2 = uri.getQueryParameter("utm_content");
                if (!TextUtils.isEmpty(queryParameter2)) {
                    bundle.putString("content", queryParameter2);
                }
                String queryParameter3 = uri.getQueryParameter("aclid");
                if (!TextUtils.isEmpty(queryParameter3)) {
                    bundle.putString("aclid", queryParameter3);
                }
                String queryParameter4 = uri.getQueryParameter("cp1");
                if (!TextUtils.isEmpty(queryParameter4)) {
                    bundle.putString("cp1", queryParameter4);
                }
                String queryParameter5 = uri.getQueryParameter("anid");
                if (!TextUtils.isEmpty(queryParameter5)) {
                    bundle.putString("anid", queryParameter5);
                }
                if (!TextUtils.isEmpty(str5)) {
                    bundle.putString("campaign_id", str5);
                }
                if (!TextUtils.isEmpty(str6)) {
                    bundle.putString("dclid", str6);
                }
                String queryParameter6 = uri.getQueryParameter("utm_source_platform");
                if (!TextUtils.isEmpty(queryParameter6)) {
                    bundle.putString("source_platform", queryParameter6);
                }
                String queryParameter7 = uri.getQueryParameter("utm_creative_format");
                if (!TextUtils.isEmpty(queryParameter7)) {
                    bundle.putString("creative_format", queryParameter7);
                }
                String queryParameter8 = uri.getQueryParameter("utm_marketing_tactic");
                if (!TextUtils.isEmpty(queryParameter8)) {
                    bundle.putString("marketing_tactic", queryParameter8);
                }
                if (!TextUtils.isEmpty(str7)) {
                    bundle.putString("srsltid", str7);
                }
                return bundle;
            } catch (UnsupportedOperationException e2) {
                bgm bgmVar = ((cyg) this.z).z;
                cyg.ak(bgmVar);
                bgmVar.f11520g.i(e2, "Install referrer url isn't a hierarchical URI");
            }
        }
        return null;
    }

    public final Object ar(int i, Object obj, boolean z, boolean z2) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf(((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf(((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(true != ((Boolean) obj).booleanValue() ? 0L : 1L);
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
            return s(i, obj.toString(), z);
        }
        if (!z2) {
            return null;
        }
        if (!(obj instanceof Bundle[]) && !(obj instanceof Parcelable[])) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Parcelable parcelable : (Parcelable[]) obj) {
            if (parcelable instanceof Bundle) {
                Bundle bu = bu((Bundle) parcelable);
                if (!bu.isEmpty()) {
                    arrayList.add(bu);
                }
            }
        }
        return arrayList.toArray(new Bundle[arrayList.size()]);
    }

    public final void as(brv brvVar, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z);
        try {
            brvVar.zzd(bundle);
        } catch (RemoteException e2) {
            bgm bgmVar = ((cyg) this.z).z;
            cyg.ak(bgmVar);
            bgmVar.f11520g.i(e2, "Error returning boolean value to wrapper");
        }
    }

    public final void at(brv brvVar, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i);
        try {
            brvVar.zzd(bundle);
        } catch (RemoteException e2) {
            bgm bgmVar = ((cyg) this.z).z;
            cyg.ak(bgmVar);
            bgmVar.f11520g.i(e2, "Error returning int value to wrapper");
        }
    }

    public final int au(String str) {
        if (!ba("event param", str)) {
            return 3;
        }
        if (!bn("event param", null, null, str)) {
            return 14;
        }
        ((cyg) this.z).getClass();
        return !aw(40, "event param", str) ? 3 : 0;
    }

    public final SecureRandom av() {
        _e();
        if (this.f14326g == null) {
            this.f14326g = new SecureRandom();
        }
        return this.f14326g;
    }

    public final boolean aw(int i, String str, String str2) {
        cyg cygVar = (cyg) this.z;
        if (str2 == null) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.m.i(str, "Name is required and can't be null. Type");
            return false;
        }
        if (str2.codePointCount(0, str2.length()) <= i) {
            return true;
        }
        bgm bgmVar2 = cygVar.z;
        cyg.ak(bgmVar2);
        bgmVar2.m.f("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i), str2);
        return false;
    }

    public final void ax(String str, brv brvVar) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            brvVar.zzd(bundle);
        } catch (RemoteException e2) {
            bgm bgmVar = ((cyg) this.z).z;
            cyg.ak(bgmVar);
            bgmVar.f11520g.i(e2, "Error returning string value to wrapper");
        }
    }

    public final int ay() {
        if (this.f14325c == null) {
            gna gnaVar = gna.i;
            Context context = ((cyg) this.z).v;
            gnaVar.getClass();
            this.f14325c = Integer.valueOf(gna.j(context) / 1000);
        }
        return this.f14325c.intValue();
    }

    public final void az(Bundle bundle, String str, Object obj) {
        cyg cygVar = (cyg) this.z;
        if (bundle == null) {
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
            return;
        }
        if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Bundle[]) {
            bundle.putParcelableArray(str, (Bundle[]) obj);
        } else if (str != null) {
            String simpleName = obj != null ? obj.getClass().getSimpleName() : null;
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.h.e(cygVar.af.g(str), "Not putting event parameter. Invalid value type. name, type", simpleName);
        }
    }

    public final boolean ba(String str, String str2) {
        cyg cygVar = (cyg) this.z;
        if (str2 == null) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.m.i(str, "Name is required and can't be null. Type");
            return false;
        }
        if (str2.length() == 0) {
            bgm bgmVar2 = cygVar.z;
            cyg.ak(bgmVar2);
            bgmVar2.m.i(str, "Name is required and can't be empty. Type");
            return false;
        }
        int codePointAt = str2.codePointAt(0);
        if (!Character.isLetter(codePointAt)) {
            bgm bgmVar3 = cygVar.z;
            cyg.ak(bgmVar3);
            bgmVar3.m.e(str, "Name must start with a letter. Type, name", str2);
            return false;
        }
        int length = str2.length();
        int charCount = Character.charCount(codePointAt);
        while (charCount < length) {
            int codePointAt2 = str2.codePointAt(charCount);
            if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                bgm bgmVar4 = cygVar.z;
                cyg.ak(bgmVar4);
                bgmVar4.m.e(str, "Name must consist of letters, digits or _ (underscores). Type, name", str2);
                return false;
            }
            charCount += Character.charCount(codePointAt2);
        }
        return true;
    }

    public final void bb(Bundle bundle, int i, String str, Object obj) {
        if (x(i, bundle)) {
            ((cyg) this.z).getClass();
            bundle.putString("_ev", s(40, str, true));
            if (obj != null) {
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    bundle.putLong("_el", obj.toString().length());
                }
            }
        }
    }

    public final int bc(String str) {
        cyg cygVar = (cyg) this.z;
        if ("_ldl".equals(str)) {
            cygVar.getClass();
            return 2048;
        }
        if (ada.COLUMN_ID.equals(str)) {
            cygVar.getClass();
            return 256;
        }
        if ("_lgclid".equals(str)) {
            cygVar.getClass();
            return 100;
        }
        cygVar.getClass();
        return 36;
    }

    public final boolean bd(String str, String str2) {
        cyg cygVar = (cyg) this.z;
        if (str2 == null) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.m.i(str, "Name is required and can't be null. Type");
            return false;
        }
        if (str2.length() == 0) {
            bgm bgmVar2 = cygVar.z;
            cyg.ak(bgmVar2);
            bgmVar2.m.i(str, "Name is required and can't be empty. Type");
            return false;
        }
        int codePointAt = str2.codePointAt(0);
        if (!Character.isLetter(codePointAt)) {
            if (codePointAt != 95) {
                bgm bgmVar3 = cygVar.z;
                cyg.ak(bgmVar3);
                bgmVar3.m.e(str, "Name must start with a letter or _ (underscore). Type, name", str2);
                return false;
            }
            codePointAt = 95;
        }
        int length = str2.length();
        int charCount = Character.charCount(codePointAt);
        while (charCount < length) {
            int codePointAt2 = str2.codePointAt(charCount);
            if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                bgm bgmVar4 = cygVar.z;
                cyg.ak(bgmVar4);
                bgmVar4.m.e(str, "Name must consist of letters, digits or _ (underscores). Type, name", str2);
                return false;
            }
            charCount += Character.charCount(codePointAt2);
        }
        return true;
    }

    public final Object be(Object obj, String str) {
        cyg cygVar = (cyg) this.z;
        int i = 256;
        if ("_ev".equals(str)) {
            cygVar.getClass();
            return ar(256, obj, true, true);
        }
        if (al(str)) {
            cygVar.getClass();
        } else {
            cygVar.getClass();
            i = 100;
        }
        return ar(i, obj, false, true);
    }

    public final void bf(Bundle bundle, Bundle bundle2) {
        if (bundle2 == null) {
            return;
        }
        for (String str : bundle2.keySet()) {
            if (!bundle.containsKey(str)) {
                dkq dkqVar = ((cyg) this.z).m;
                cyg.ai(dkqVar);
                dkqVar.az(bundle, str, bundle2.get(str));
            }
        }
    }

    public final void bg(brv brvVar, long j) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j);
        try {
            brvVar.zzd(bundle);
        } catch (RemoteException e2) {
            bgm bgmVar = ((cyg) this.z).z;
            cyg.ak(bgmVar);
            bgmVar.f11520g.i(e2, "Error returning long value to wrapper");
        }
    }

    public final void bh(brv brvVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            brvVar.zzd(bundle);
        } catch (RemoteException e2) {
            bgm bgmVar = ((cyg) this.z).z;
            cyg.ak(bgmVar);
            bgmVar.f11520g.i(e2, "Error returning byte array to wrapper");
        }
    }

    public final Bundle bi(String str, Bundle bundle, List list, boolean z) {
        int au;
        List list2 = list;
        cyg cygVar = (cyg) this.z;
        boolean l = l(str, dyd.v);
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = new Bundle(bundle);
        dsd dsdVar = cygVar.f13747e;
        ebl eblVar = cygVar.af;
        int r = dsdVar.r();
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        int i = 0;
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (list2 == null || !list2.contains(str2)) {
                au = !z ? au(str2) : 0;
                if (au == 0) {
                    au = bx(str2);
                }
            } else {
                au = 0;
            }
            if (au != 0) {
                bb(bundle2, au, str2, au == 3 ? str2 : null);
                bundle2.remove(str2);
            } else {
                int bv = bv(str, str2, bundle.get(str2), bundle2, list2, z, l);
                if (bv == 17) {
                    bb(bundle2, 17, str2, Boolean.FALSE);
                } else if (bv != 0 && !"_ev".equals(str2)) {
                    bb(bundle2, bv, bv == 21 ? str : str2, bundle.get(str2));
                    bundle2.remove(str2);
                }
                if (t(str2) && (i = i + 1) > r) {
                    StringBuilder z2 = tn.z(r, "Event can't contain more than ", " params");
                    bgm bgmVar = cygVar.z;
                    cyg.ak(bgmVar);
                    bgmVar.m.e(eblVar.f(str), z2.toString(), eblVar.j(bundle));
                    x(5, bundle2);
                    bundle2.remove(str2);
                    list2 = list;
                }
            }
            list2 = list;
        }
        return bundle2;
    }

    public final Object bj(Object obj, String str) {
        return "_ldl".equals(str) ? ar(bc(str), obj, true, false) : ar(bc(str), obj, false, false);
    }

    public final boolean bk(String str) {
        _e();
        cyg cygVar = (cyg) this.z;
        if (chk.c(cygVar.v).f12624a.checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        bgm bgmVar = cygVar.z;
        cyg.ak(bgmVar);
        bgmVar.o.i(str, "Permission not granted");
        return false;
    }

    public final int bl(String str) {
        if (!bd("event", str)) {
            return 2;
        }
        if (!bn("event", dyd.i, dyd.h, str)) {
            return 13;
        }
        ((cyg) this.z).getClass();
        return !aw(40, "event", str) ? 2 : 0;
    }

    public final void bm(brv brvVar, Bundle bundle) {
        try {
            brvVar.zzd(bundle);
        } catch (RemoteException e2) {
            bgm bgmVar = ((cyg) this.z).z;
            cyg.ak(bgmVar);
            bgmVar.f11520g.i(e2, "Error returning bundle value to wrapper");
        }
    }

    public final boolean bn(String str, String[] strArr, String[] strArr2, String str2) {
        cyg cygVar = (cyg) this.z;
        if (str2 == null) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.m.i(str, "Name is required and can't be null. Type");
            return false;
        }
        for (int i = 0; i < 3; i++) {
            if (str2.startsWith(f14323a[i])) {
                bgm bgmVar2 = cygVar.z;
                cyg.ak(bgmVar2);
                bgmVar2.m.e(str, "Name starts with reserved prefix. Type, name", str2);
                return false;
            }
        }
        if (strArr == null || !l(str2, strArr)) {
            return true;
        }
        if (strArr2 != null && l(str2, strArr2)) {
            return true;
        }
        bgm bgmVar3 = cygVar.z;
        cyg.ak(bgmVar3);
        bgmVar3.m.e(str, "Name is reserved. Type, name", str2);
        return false;
    }

    public final boolean bo(String str, String str2) {
        cyg cygVar = (cyg) this.z;
        if (!TextUtils.isEmpty(str)) {
            ckd.k(str);
            if (str.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$")) {
                return true;
            }
            if (TextUtils.isEmpty(cygVar.aa)) {
                bgm bgmVar = cygVar.z;
                cyg.ak(bgmVar);
                bgmVar.m.i(bgm.t(str), "Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id");
                return false;
            }
        } else {
            if (!TextUtils.isEmpty(str2)) {
                ckd.k(str2);
                if (str2.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$")) {
                    return true;
                }
                bgm bgmVar2 = cygVar.z;
                cyg.ak(bgmVar2);
                bgmVar2.m.i(bgm.t(str2), "Invalid admob_app_id. Analytics disabled.");
                return false;
            }
            if (TextUtils.isEmpty(cygVar.aa)) {
                bgm bgmVar3 = cygVar.z;
                cyg.ak(bgmVar3);
                bgmVar3.m.h("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            }
        }
        return false;
    }

    public final int bp(String str) {
        if (!bd("user property", str)) {
            return 6;
        }
        if (!bn("user property", byh.l, null, str)) {
            return 15;
        }
        ((cyg) this.z).getClass();
        return !aw(24, "user property", str) ? 6 : 0;
    }

    public final boolean br(String str, String str2, int i, Object obj) {
        if (obj == null || (obj instanceof Long) || (obj instanceof Float) || (obj instanceof Integer) || (obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Boolean) || (obj instanceof Double)) {
            return true;
        }
        if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
            return false;
        }
        String obj2 = obj.toString();
        if (obj2.codePointCount(0, obj2.length()) > i) {
            bgm bgmVar = ((cyg) this.z).z;
            cyg.ak(bgmVar);
            bgmVar.h.f("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(obj2.length()));
            return false;
        }
        return true;
    }

    public final void bs(Bundle bundle, long j) {
        long j2 = bundle.getLong("_et");
        if (j2 != 0) {
            bgm bgmVar = ((cyg) this.z).z;
            cyg.ak(bgmVar);
            bgmVar.f11520g.i(Long.valueOf(j2), "Params already contained engagement");
        } else {
            j2 = 0;
        }
        bundle.putLong("_et", j + j2);
    }

    public final void bt(String str, String str2, Bundle bundle, List list, boolean z) {
        int au;
        int bv;
        List list2 = list;
        cyg cygVar = (cyg) this.z;
        if (bundle == null) {
            return;
        }
        cygVar.getClass();
        ebl eblVar = cygVar.af;
        bgm bgmVar = cygVar.z;
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        int i = 0;
        while (it.hasNext()) {
            String str3 = (String) it.next();
            if (list2 == null || !list2.contains(str3)) {
                au = !z ? au(str3) : 0;
                if (au == 0) {
                    au = bx(str3);
                }
            } else {
                au = 0;
            }
            if (au != 0) {
                bb(bundle, au, str3, au == 3 ? str3 : null);
                bundle.remove(str3);
            } else {
                if (r(bundle.get(str3))) {
                    cyg.ak(bgmVar);
                    bgmVar.h.f("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str, str2, str3);
                    bv = 22;
                } else {
                    bv = bv(str, str3, bundle.get(str3), bundle, list2, z, false);
                }
                if (bv != 0 && !"_ev".equals(str3)) {
                    bb(bundle, bv, str3, bundle.get(str3));
                    bundle.remove(str3);
                } else if (t(str3) && !l(str3, egh.l) && (i = i + 1) > 0) {
                    cyg.ak(bgmVar);
                    bgmVar.m.e(eblVar.f(str), "Item cannot contain custom parameters", eblVar.j(bundle));
                    x(23, bundle);
                    bundle.remove(str3);
                }
            }
            list2 = list;
        }
    }

    public final Bundle bu(Bundle bundle) {
        cyg cygVar = (cyg) this.z;
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object be = be(bundle.get(str), str);
                if (be == null) {
                    bgm bgmVar = cygVar.z;
                    cyg.ak(bgmVar);
                    bgmVar.h.i(cygVar.af.g(str), "Param value can't be null");
                } else {
                    az(bundle2, str, be);
                }
            }
        }
        return bundle2;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int bv(String str, String str2, Object obj, Bundle bundle, List list, boolean z, boolean z2) {
        int i;
        int i2;
        int size;
        cyg cygVar = (cyg) this.z;
        _e();
        int i3 = 0;
        if (r(obj)) {
            if (!z2) {
                return 21;
            }
            if (!l(str2, egh.i)) {
                return 20;
            }
            dbb ao = cygVar.ao();
            ao._e();
            ao.zza();
            if (ao.ao()) {
                dkq dkqVar = ((cyg) ao.z).m;
                cyg.ai(dkqVar);
                if (dkqVar.ay() < 200900) {
                    return 25;
                }
            }
            boolean z3 = obj instanceof Parcelable[];
            if (z3) {
                size = ((Parcelable[]) obj).length;
            } else if (obj instanceof ArrayList) {
                size = ((ArrayList) obj).size();
            }
            if (size > 200) {
                bgm bgmVar = cygVar.z;
                cyg.ak(bgmVar);
                bgmVar.h.f("Parameter array is too long; discarded. Value kind, name, array length", "param", str2, Integer.valueOf(size));
                i = 17;
                if (z3) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    if (parcelableArr.length > 200) {
                        bundle.putParcelableArray(str2, (Parcelable[]) Arrays.copyOf(parcelableArr, 200));
                    }
                } else if (obj instanceof ArrayList) {
                    ArrayList arrayList = (ArrayList) obj;
                    if (arrayList.size() > 200) {
                        bundle.putParcelableArrayList(str2, new ArrayList<>(arrayList.subList(0, 200)));
                    }
                }
                if (!al(str) || al(str2)) {
                    cygVar.getClass();
                    i2 = 256;
                } else {
                    cygVar.getClass();
                    i2 = 100;
                }
                if (!br("param", str2, i2, obj)) {
                    if (!z2) {
                        return 4;
                    }
                    if (obj instanceof Bundle) {
                        bt(str, str2, (Bundle) obj, list, z);
                        return i;
                    }
                    if (obj instanceof Parcelable[]) {
                        Parcelable[] parcelableArr2 = (Parcelable[]) obj;
                        int length = parcelableArr2.length;
                        while (i3 < length) {
                            Parcelable parcelable = parcelableArr2[i3];
                            if (!(parcelable instanceof Bundle)) {
                                bgm bgmVar2 = cygVar.z;
                                cyg.ak(bgmVar2);
                                bgmVar2.h.e(parcelable.getClass(), "All Parcelable[] elements must be of type Bundle. Value type, name", str2);
                                return 4;
                            }
                            bt(str, str2, (Bundle) parcelable, list, z);
                            i3++;
                        }
                    } else {
                        if (!(obj instanceof ArrayList)) {
                            return 4;
                        }
                        ArrayList arrayList2 = (ArrayList) obj;
                        int size2 = arrayList2.size();
                        while (i3 < size2) {
                            Object obj2 = arrayList2.get(i3);
                            if (!(obj2 instanceof Bundle)) {
                                bgm bgmVar3 = cygVar.z;
                                cyg.ak(bgmVar3);
                                bgmVar3.h.e(obj2 != null ? obj2.getClass() : "null", "All ArrayList elements must be of type Bundle. Value type, name", str2);
                                return 4;
                            }
                            bt(str, str2, (Bundle) obj2, list, z);
                            i3++;
                        }
                    }
                }
                return i;
            }
        }
        i = 0;
        if (al(str)) {
        }
        cygVar.getClass();
        i2 = 256;
        if (!br("param", str2, i2, obj)) {
        }
        return i;
    }

    public final int bw(Object obj, String str) {
        return "_ldl".equals(str) ? br("user property referrer", str, bc(str), obj) : br("user property", str, bc(str), obj) ? 0 : 7;
    }

    public final int bx(String str) {
        if (!bd("event param", str)) {
            return 3;
        }
        if (!bn("event param", null, null, str)) {
            return 14;
        }
        ((cyg) this.z).getClass();
        return !aw(40, "event param", str) ? 3 : 0;
    }

    public final long by() {
        long andIncrement;
        long j;
        if (this.h.get() != 0) {
            synchronized (this.h) {
                this.h.compareAndSet(-1L, 1L);
                andIncrement = this.h.getAndIncrement();
            }
            return andIncrement;
        }
        synchronized (this.h) {
            long nanoTime = System.nanoTime();
            ((cyg) this.z).f13743ab.getClass();
            long nextLong = new Random(nanoTime ^ System.currentTimeMillis()).nextLong();
            int i = this.j + 1;
            this.j = i;
            j = nextLong + i;
        }
        return j;
    }

    public final void bz(brv brvVar, ArrayList arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            brvVar.zzd(bundle);
        } catch (RemoteException e2) {
            bgm bgmVar = ((cyg) this.z).z;
            cyg.ak(bgmVar);
            bgmVar.f11520g.i(e2, "Error returning bundle list to wrapper");
        }
    }

    public final void ca(dhh dhhVar, int i) {
        cyg cygVar = (cyg) this.z;
        Bundle bundle = (Bundle) dhhVar.f14174b;
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        int i2 = 0;
        while (it.hasNext()) {
            String str = (String) it.next();
            if (t(str) && (i2 = i2 + 1) > i) {
                StringBuilder z = tn.z(i, "Event can't contain more than ", " params");
                bgm bgmVar = cygVar.z;
                ebl eblVar = cygVar.af;
                cyg.ak(bgmVar);
                bgmVar.m.e(eblVar.f((String) dhhVar.f14177e), z.toString(), eblVar.j(bundle));
                x(5, bundle);
                bundle.remove(str);
            }
        }
    }

    public final ctf cb(String str, Bundle bundle, String str2, long j, boolean z) {
        cyg cygVar = (cyg) this.z;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (bl(str) != 0) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11518b.i(cygVar.af.i(str), "Invalid conditional property event name");
            throw new IllegalArgumentException();
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putString("_o", str2);
        Bundle bi = bi(str, bundle2, Collections.singletonList("_o"), true);
        if (z) {
            bi = bu(bi);
        }
        ckd.k(bi);
        return new ctf(str, new cde(bi), str2, j);
    }

    public final boolean cc(Context context, String str) {
        Signature[] signatureArr;
        cyg cygVar = (cyg) this.z;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo c2 = chk.c(context).c(64, str);
            if (c2 == null || (signatureArr = c2.signatures) == null || signatureArr.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e2) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11518b.i(e2, "Package name not found");
            return true;
        } catch (CertificateException e3) {
            bgm bgmVar2 = cygVar.z;
            cyg.ak(bgmVar2);
            bgmVar2.f11518b.i(e3, "Error obtaining certificate");
            return true;
        }
    }

    @Override // g.bkw
    public final boolean n() {
        return true;
    }
}
