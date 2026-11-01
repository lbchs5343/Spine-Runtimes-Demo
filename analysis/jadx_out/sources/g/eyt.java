package g;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Color;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.SparseArray;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkDatabase_Impl;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzfwn;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.io.InputStream;
import java.lang.Character;
import java.lang.Thread;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public abstract class eyt {
    public static volatile boolean u = false;
    public static boolean v = false;
    public static int w = -1;
    public static final bli x = new bli(1);
    public static final int[] y = {R.attr.colorPrimary};
    public static final int[] t = {R.attr.colorPrimaryVariant};

    public eyt() {
        new ConcurrentHashMap();
    }

    public static eqp aa(ecx ecxVar) {
        int i = bbl.f11226a[ecxVar.ordinal()];
        if (i == 1) {
            return eqp.STATIC;
        }
        if (i == 2) {
            return eqp.VIRTUAL;
        }
        if (i == 3 || i == 4) {
            return eqp.DIRECT;
        }
        if (i == 5) {
            return eqp.INTERFACE;
        }
        throw new gck("Unsupported method handle type: " + ecxVar);
    }

    public static boolean ab(Context context, String str, boolean z) {
        PackageManager packageManager;
        ApplicationInfo applicationInfo;
        if (context != null && (packageManager = context.getPackageManager()) != null) {
            try {
                synchronized (PackageManager.class) {
                    try {
                        PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
                        if (z) {
                            return packageInfo != null;
                        }
                        if (packageInfo != null && (applicationInfo = packageInfo.applicationInfo) != null) {
                            return applicationInfo.enabled;
                        }
                    } finally {
                    }
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return false;
    }

    public static int ac(int i, float f2, int i2) {
        return afr.f(afr.c(i2, Math.round(Color.alpha(i2) * f2)), i);
    }

    public static int ad(int i, Object obj) {
        return obj instanceof byte[] ? ((byte[]) obj)[i] & 255 : obj instanceof short[] ? (char) ((short[]) obj)[i] : ((int[]) obj)[i];
    }

    public static String ae(double d2) {
        if (Double.compare(d2, Math.floor(d2)) == 0 && !Double.isInfinite(d2)) {
            return Integer.toString((int) d2);
        }
        NumberFormat numberFormat = NumberFormat.getInstance(Locale.ROOT);
        numberFormat.setMaximumFractionDigits(4);
        numberFormat.setMinimumIntegerDigits(1);
        return numberFormat.format(d2);
    }

    public static int af(Context context, int i) {
        return Build.VERSION.SDK_INT >= 23 ? id.g(context, i) : context.getResources().getColor(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void ag(Context context, String str, String str2, boolean z) {
        boolean z2;
        Context context2;
        if (fnp.m() && dyd.av(context) && !context.getPackageName().equals(str)) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://search?q=" + str2));
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            try {
                context.startActivity(intent);
                return;
            } catch (Exception unused) {
                gm.f(context, R.string.start_activity_failed);
                return;
            }
        }
        Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + str));
        intent2.setFlags(C.ENCODING_PCM_MU_LAW);
        try {
            if (z) {
                cwz b2 = cwz.b(context);
                if (dyd.bi(context)) {
                    z2 = true;
                    if ((afo.at(b2.o) || !b2.o.containsKey("com.android.vending")) ? ab(b2.v, "com.android.vending", true) : true) {
                        intent2.setPackage("com.android.vending");
                        if (z2) {
                            context2 = context;
                        } else {
                            context2 = context;
                            if (fgj.e().g(context2, intent2, false, false, true)) {
                                return;
                            }
                            intent2 = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + str));
                            intent2.setFlags(C.ENCODING_PCM_MU_LAW);
                        }
                        context2.startActivity(intent2);
                        return;
                    }
                }
            }
            context2.startActivity(intent2);
            return;
        } catch (ActivityNotFoundException unused2) {
            if (!dyd.bi(context2) && cux.aj(context2)) {
                gm.f(context2, R.string.market_download_search_hint);
                return;
            }
            Intent intent3 = new Intent("android.intent.action.VIEW", Uri.parse(tn.x("https://play.google.com/store/apps/details?id=", str)));
            intent3.setFlags(C.ENCODING_PCM_MU_LAW);
            fgj.e().f(context2, intent3);
            return;
        } catch (Exception unused3) {
            gm.f(context2, R.string.start_activity_failed);
            return;
        }
        z2 = false;
        if (z2) {
        }
    }

    public static final boj ah(hcc hccVar, boj bojVar) {
        boj bi = bi(hccVar.a(), bojVar, true);
        nt ntVar = uj.f20095a;
        return (bi == ntVar || bi._x(bmr.j) != null) ? bi : bi._y(ntVar);
    }

    public static String[] ai(Context context) {
        PackageManager packageManager;
        if (context != null && (packageManager = context.getPackageManager()) != null) {
            try {
                synchronized (PackageManager.class) {
                    try {
                        PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
                        if (packageInfo != null) {
                            String str = packageInfo.versionName;
                            int i = packageInfo.versionCode;
                            w = i;
                            return new String[]{str, Integer.toString(i)};
                        }
                    } finally {
                    }
                }
            } catch (Exception unused) {
            }
        }
        return new String[]{null, Integer.toString(w)};
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002a, code lost:
    
        if (r5 != (-1)) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002c, code lost:
    
        bo(r1, r7, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0030, code lost:
    
        r12[r5] = (r12[r5] & r4) | (r7 & r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0038, code lost:
    
        return r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int aj(Object obj, Object obj2, int i, Object obj3, int[] iArr, Object[] objArr, Object[] objArr2) {
        int ak = gs.ak(obj);
        int i2 = ak & i;
        int ad = ad(i2, obj3);
        if (ad != 0) {
            int i3 = ~i;
            int i4 = ak & i3;
            int i5 = -1;
            while (true) {
                int i6 = ad - 1;
                int i7 = iArr[i6];
                int i8 = i7 & i;
                if ((i7 & i3) != i4 || !zzfwn.zza(obj, objArr[i6]) || (objArr2 != null && !zzfwn.zza(obj2, objArr2[i6]))) {
                    if (i8 == 0) {
                        break;
                    }
                    i5 = i6;
                    ad = i8;
                }
            }
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void ak(Activity activity, String[] strArr, int i) {
        HashSet hashSet = new HashSet();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (TextUtils.isEmpty(strArr[i2])) {
                throw new IllegalArgumentException(awf.ad(new StringBuilder("Permission request for permissions "), Arrays.toString(strArr), " must not contain null or empty values"));
            }
            if (Build.VERSION.SDK_INT < 33 && TextUtils.equals(strArr[i2], "android.permission.POST_NOTIFICATIONS")) {
                hashSet.add(Integer.valueOf(i2));
            }
        }
        int size = hashSet.size();
        String[] strArr2 = size > 0 ? new String[strArr.length - size] : strArr;
        if (size > 0) {
            if (size == strArr.length) {
                return;
            }
            int i3 = 0;
            for (int i4 = 0; i4 < strArr.length; i4++) {
                if (!hashSet.contains(Integer.valueOf(i4))) {
                    strArr2[i3] = strArr[i4];
                    i3++;
                }
            }
        }
        if (Build.VERSION.SDK_INT >= 23) {
            if (activity instanceof ecf) {
                ((ecf) activity).validateRequestPermissionsRequestCode(i);
            }
            id.q(activity, strArr, i);
        } else if (activity instanceof aaz) {
            new Handler(Looper.getMainLooper()).post(new hdo(strArr2, activity, i, 0));
        }
    }

    public static String al(int i, boolean z) {
        String d2;
        double d3 = (i & (-256)) * emd.af[(i >> 4) & 3];
        int i2 = i & 15;
        if (z) {
            d3 *= 100.0d;
            d2 = i2 != 0 ? i2 != 1 ? awf.d(new StringBuilder("?f"), i2) : "%p" : "%";
        } else {
            d2 = i2 != 0 ? i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? awf.d(new StringBuilder("?d"), i2) : "mm" : "in" : "pt" : "sp" : "dp" : "px";
        }
        return ae(d3) + d2;
    }

    public static int am(Context context, String str) {
        if (str != null) {
            return (Build.VERSION.SDK_INT >= 33 || !TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) ? context.checkPermission(str, Process.myPid(), Process.myUid()) : new dyy(context).h() ? 0 : -1;
        }
        throw new NullPointerException("permission must be non-null");
    }

    public static String an(Object obj) {
        if (obj == null) {
            return "";
        }
        return obj + "";
    }

    public static boolean ao(byte b2) {
        return b2 > -65;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
    
        if (r0.getResourceId(0, -1) != (-1)) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void ap(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, git.t, i, i2);
        boolean z = false;
        if (!obtainStyledAttributes.getBoolean(2, false)) {
            obtainStyledAttributes.recycle();
            return;
        }
        if (iArr2.length != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
            for (int i3 : iArr2) {
                if (obtainStyledAttributes2.getResourceId(i3, -1) == -1) {
                    obtainStyledAttributes2.recycle();
                    break;
                }
            }
            obtainStyledAttributes2.recycle();
            z = true;
            obtainStyledAttributes.recycle();
            if (!z) {
                throw new IllegalArgumentException("This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant).");
            }
        }
    }

    public static String aq(String str, String str2) {
        return (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || str.indexOf(str2) != 0) ? str : str.substring(str2.length());
    }

    public static boolean ar(char c2) {
        if (c2 <= 127) {
            return false;
        }
        Character.UnicodeBlock of = Character.UnicodeBlock.of(c2);
        return of == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || of == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || of == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || of == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B || of == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION || of == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS || of == Character.UnicodeBlock.GENERAL_PUNCTUATION;
    }

    public static ArrayList as(amy amyVar, String str) {
        PackageInfo packageInfo;
        ApplicationInfo applicationInfo;
        PackageManager packageManager;
        if (!TextUtils.isEmpty(str) && (packageManager = amyVar.getPackageManager()) != null) {
            try {
                synchronized (PackageManager.class) {
                    packageInfo = packageManager.getPackageInfo(str, 0);
                }
            } catch (PackageManager.NameNotFoundException e2) {
                erl.ai("PackageUtils", e2);
            } catch (RuntimeException e3) {
                if (e3.getMessage() == null || !e3.getMessage().contains("Package manager has died")) {
                    throw e3;
                }
                erl.ai("Package manager has died", e3);
            }
            if (packageInfo != null || (applicationInfo = packageInfo.applicationInfo) == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(applicationInfo.nativeLibraryDir);
            if (dyd.bp(21)) {
                arrayList.add((String) awt.ac(applicationInfo, "secondaryNativeLibraryDir", true));
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                if (!TextUtils.isEmpty(str2)) {
                    File file = new File(str2);
                    if (file.isDirectory()) {
                        File[] listFiles = file.listFiles();
                        if (!acw.n(listFiles)) {
                            for (File file2 : listFiles) {
                                if (file2 != null && file2.isFile()) {
                                    arrayList2.add(file2.getName());
                                }
                            }
                        }
                    }
                }
            }
            return arrayList2;
        }
        packageInfo = null;
        if (packageInfo != null) {
        }
        return null;
    }

    public static dla at(dla dlaVar, String[] strArr, Map map) {
        int length;
        int i = 0;
        if (dlaVar == null) {
            if (strArr == null) {
                return null;
            }
            int length2 = strArr.length;
            if (length2 == 1) {
                return (dla) map.get(strArr[0]);
            }
            if (length2 > 1) {
                dla dlaVar2 = new dla();
                while (i < length2) {
                    dlaVar2.u((dla) map.get(strArr[i]));
                    i++;
                }
                return dlaVar2;
            }
        } else {
            if (strArr != null && strArr.length == 1) {
                dlaVar.u((dla) map.get(strArr[0]));
                return dlaVar;
            }
            if (strArr != null && (length = strArr.length) > 1) {
                while (i < length) {
                    dlaVar.u((dla) map.get(strArr[i]));
                    i++;
                }
            }
        }
        return dlaVar;
    }

    public static String au(String str) {
        if (str == null) {
            return "";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b2 : digest) {
                String hexString = Integer.toHexString(b2 & 255);
                while (hexString.length() < 2) {
                    hexString = "0" + hexString;
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException unused) {
            return "";
        }
    }

    public static void av(XmlPullParser xmlPullParser) {
        int i = 1;
        while (i > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }

    public static Boolean aw(Context context) {
        ComponentName componentName;
        String packageName = context.getPackageName();
        if (TextUtils.isEmpty(packageName)) {
            return null;
        }
        List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningTasks(1);
        if (acw.u(runningTasks)) {
            return null;
        }
        try {
            componentName = runningTasks.get(0).topActivity;
            return Boolean.valueOf(packageName.equals(componentName.getPackageName()));
        } catch (Exception unused) {
            return Boolean.FALSE;
        }
    }

    public static String ax(Context context) {
        ApplicationInfo applicationInfo;
        if (context != null && (applicationInfo = context.getApplicationInfo()) != null) {
            try {
                int i = applicationInfo.labelRes;
                return i == 0 ? applicationInfo.nonLocalizedLabel.toString() : context.getString(i);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static void ay(Context context, fpl fplVar) {
        if (context == null || fplVar == null) {
            return;
        }
        if ((context instanceof Activity) && ((Activity) context).isFinishing()) {
            return;
        }
        fplVar.show();
    }

    public static void az(Context context, int[] iArr, String str) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        for (int i = 0; i < iArr.length; i++) {
            if (!obtainStyledAttributes.hasValue(i)) {
                obtainStyledAttributes.recycle();
                throw new IllegalArgumentException(tn.ad("The style on this component requires your app theme to be ", str, " (or a descendant)."));
            }
        }
        obtainStyledAttributes.recycle();
    }

    public static synchronized void ba(Context context, cmc cmcVar, boolean z, boolean z2) {
        synchronized (eyt.class) {
            bg(context, cmcVar, z, z, z2);
        }
    }

    public static final aoa bb(bdp bdpVar, boj bojVar, Object obj) {
        aoa aoaVar = null;
        if ((bdpVar instanceof qz) && bojVar._x(aum.f10876a) != null) {
            qz qzVar = (qz) bdpVar;
            while (true) {
                if ((qzVar instanceof djk) || (qzVar = qzVar.f()) == null) {
                    break;
                }
                if (qzVar instanceof aoa) {
                    aoaVar = (aoa) qzVar;
                    break;
                }
            }
            if (aoaVar != null) {
                aoaVar.i(bojVar, obj);
            }
        }
        return aoaVar;
    }

    public static long bc(File file) {
        File[] listFiles = file.listFiles();
        long j = 0;
        if (listFiles == null) {
            return 0L;
        }
        for (File file2 : listFiles) {
            j = (file2.isDirectory() ? bc(file2) : file2.length()) + j;
        }
        return j;
    }

    public static TypedArray bd(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        bn(context, attributeSet, i, i2);
        ap(context, attributeSet, iArr, i, i2, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i, i2);
    }

    public static final void be(fxb fxbVar, String str) {
        dly s;
        WorkDatabase workDatabase = fxbVar.az;
        bff.e(workDatabase, "workManagerImpl.workDatabase");
        gg a2 = workDatabase.a();
        gtb d2 = workDatabase.d();
        ArrayList d3 = grj.d(str);
        while (!d3.isEmpty()) {
            String str2 = (String) eko.b(d3);
            gys ad = a2.ad(str2);
            if (ad != gys.SUCCEEDED && ad != gys.FAILED) {
                WorkDatabase_Impl workDatabase_Impl = a2.h;
                workDatabase_Impl.al();
                bnh bnhVar = a2.i;
                cap i = bnhVar.i();
                i.e(1, str2);
                try {
                    workDatabase_Impl.an();
                    try {
                        i.h();
                        workDatabase_Impl.ah();
                    } finally {
                    }
                } finally {
                    bnhVar.h(i);
                }
            }
            d3.addAll(d2.r(str2));
        }
        egu eguVar = fxbVar.ax;
        bff.e(eguVar, "workManagerImpl.processor");
        synchronized (eguVar.f15515c) {
            cyl.f().getClass();
            eguVar.h.add(str);
            s = eguVar.s(str);
        }
        egu.m(s, 1);
        Iterator it = fxbVar.ay.iterator();
        while (it.hasNext()) {
            ((giw) it.next()).q(str);
        }
    }

    public static List bf(Resources resources, int i) {
        if (i == 0) {
            return Collections.EMPTY_LIST;
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.EMPTY_LIST;
            }
            ArrayList arrayList = new ArrayList();
            if (obtainTypedArray.getType(0) == 1) {
                for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                    int resourceId = obtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        String[] stringArray = resources.getStringArray(resourceId);
                        ArrayList arrayList2 = new ArrayList();
                        for (String str : stringArray) {
                            arrayList2.add(Base64.decode(str, 0));
                        }
                        arrayList.add(arrayList2);
                    }
                }
            } else {
                String[] stringArray2 = resources.getStringArray(i);
                ArrayList arrayList3 = new ArrayList();
                for (String str2 : stringArray2) {
                    arrayList3.add(Base64.decode(str2, 0));
                }
                arrayList.add(arrayList3);
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    public static synchronized void bg(Context context, cmc cmcVar, boolean z, boolean z2, boolean z3) {
        synchronized (eyt.class) {
            try {
                if (v) {
                    return;
                }
                if (context == null) {
                    throw new IllegalArgumentException("context must be not null.");
                }
                if (!(context instanceof Application)) {
                    context = context.getApplicationContext();
                }
                Context context2 = eca.f15278c;
                eca.f15279d = System.currentTimeMillis();
                eca.f15278c = context;
                dzh dzhVar = new dzh(16, false);
                dzhVar.i = context;
                dzhVar.f15121f = cmcVar;
                eca.f15280e = dzhVar;
                duw.i(context);
                if (z || z2) {
                    if (fwz.f17554a == null) {
                        fwz fwzVar = new fwz();
                        HashSet hashSet = new HashSet();
                        fwzVar.f17557d = hashSet;
                        fwzVar.f17555b = -1L;
                        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
                        if (defaultUncaughtExceptionHandler != fwzVar) {
                            Thread.setDefaultUncaughtExceptionHandler(fwzVar);
                            if (fwzVar.f17556c == null) {
                                fwzVar.f17556c = defaultUncaughtExceptionHandler;
                            } else {
                                hashSet.add(defaultUncaughtExceptionHandler);
                            }
                        }
                        fwz.f17554a = fwzVar;
                    }
                    fwz fwzVar2 = fwz.f17554a;
                    if (z) {
                        ato atoVar = new ato();
                        atoVar.f10813a = context;
                        fwzVar2.f17558e = atoVar;
                    }
                }
                v = true;
                gs.af().post(new asy(context, 1, z3));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0046, code lost:
    
        if (r5.f18732c == r8.hashCode()) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ColorStateList bh(Context context, int i) {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        gtl gtlVar;
        Resources resources = context.getResources();
        Resources.Theme theme = context.getTheme();
        bcu bcuVar = new bcu(resources, theme);
        synchronized (fbs.f16532c) {
            try {
                SparseArray sparseArray = (SparseArray) fbs.f16531b.get(bcuVar);
                colorStateList = null;
                if (sparseArray != null && sparseArray.size() > 0 && (gtlVar = (gtl) sparseArray.get(i)) != null) {
                    if (gtlVar.f18731b.equals(resources.getConfiguration())) {
                        if (theme == null) {
                            if (gtlVar.f18732c != 0) {
                            }
                            colorStateList2 = gtlVar.f18730a;
                        }
                        if (theme != null) {
                        }
                    }
                    sparseArray.remove(i);
                }
                colorStateList2 = null;
            } finally {
            }
        }
        if (colorStateList2 != null) {
            return colorStateList2;
        }
        ThreadLocal threadLocal = fbs.f16530a;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        resources.getValue(i, typedValue, true);
        int i2 = typedValue.type;
        if (i2 < 28 || i2 > 31) {
            try {
                colorStateList = po.b(resources, resources.getXml(i), theme);
            } catch (Exception unused) {
            }
        }
        if (colorStateList == null) {
            return Build.VERSION.SDK_INT >= 23 ? id.i(resources, i, theme) : resources.getColorStateList(i);
        }
        fbs.d(bcuVar, i, colorStateList, theme);
        return colorStateList;
    }

    public static final boj bi(boj bojVar, boj bojVar2, boolean z) {
        Boolean bool = Boolean.FALSE;
        gak gakVar = gak.f17797b;
        boolean booleanValue = ((Boolean) bojVar.c(bool, gakVar)).booleanValue();
        boolean booleanValue2 = ((Boolean) bojVar2.c(bool, gakVar)).booleanValue();
        if (!booleanValue && !booleanValue2) {
            return bojVar._y(bojVar2);
        }
        aye ayeVar = new aye();
        ayeVar.element = bojVar2;
        epn epnVar = new epn(ayeVar, z);
        cgq cgqVar = cgq.f12850a;
        boj bojVar3 = (boj) bojVar.c(cgqVar, epnVar);
        if (booleanValue2) {
            ayeVar.element = ((boj) ayeVar.element).c(cgqVar, gak.f17800f);
        }
        return bojVar3._y((boj) ayeVar.element);
    }

    public static int bj(Context context) {
        PackageManager packageManager;
        if (!u) {
            synchronized (PackageManager.class) {
                if (!u) {
                    if (context == null || (packageManager = context.getPackageManager()) == null) {
                        return w;
                    }
                    try {
                        PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
                        if (packageInfo != null) {
                            w = packageInfo.versionCode;
                            u = true;
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }
        return w;
    }

    public static String bk(Object obj) {
        return obj == null ? "" : obj instanceof String ? (String) obj : obj.toString();
    }

    public static Object bl(int i) {
        if (i < 2 || i > 1073741824 || Integer.highestOneBit(i) != i) {
            throw new IllegalArgumentException(awf.ac(i, "must be power of 2 between 2^1 and 2^30: "));
        }
        return i <= 256 ? new byte[i] : i <= 65536 ? new short[i] : new int[i];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v12, types: [android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v9 */
    public static foh bm(XmlResourceParser xmlResourceParser, Resources resources) {
        int next;
        int i;
        int i2;
        ?? r3;
        Throwable th;
        TypedArray typedArray;
        do {
            next = xmlResourceParser.next();
            i = 2;
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        xmlResourceParser.require(2, null, "font-family");
        if (!xmlResourceParser.getName().equals("font-family")) {
            av(xmlResourceParser);
            return null;
        }
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), glo.f18360e);
        int i3 = 0;
        String string = obtainAttributes.getString(0);
        String string2 = obtainAttributes.getString(5);
        String string3 = obtainAttributes.getString(6);
        String string4 = obtainAttributes.getString(2);
        int resourceId = obtainAttributes.getResourceId(1, 0);
        int i4 = 3;
        int integer = obtainAttributes.getInteger(3, 1);
        int integer2 = obtainAttributes.getInteger(4, 500);
        String string5 = obtainAttributes.getString(7);
        obtainAttributes.recycle();
        if (string == null || string2 == null) {
            ArrayList arrayList = new ArrayList();
            while (xmlResourceParser.next() != 3) {
                if (xmlResourceParser.getEventType() == 2) {
                    if (xmlResourceParser.getName().equals("font")) {
                        TypedArray obtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), glo.f18361f);
                        int i5 = obtainAttributes2.getInt(obtainAttributes2.hasValue(8) ? 8 : 1, MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL);
                        boolean z = 1 == obtainAttributes2.getInt(obtainAttributes2.hasValue(6) ? 6 : 2, 0);
                        int i6 = obtainAttributes2.hasValue(9) ? 9 : 3;
                        String string6 = obtainAttributes2.getString(obtainAttributes2.hasValue(7) ? 7 : 4);
                        int i7 = obtainAttributes2.getInt(i6, 0);
                        int i8 = obtainAttributes2.hasValue(5) ? 5 : 0;
                        int resourceId2 = obtainAttributes2.getResourceId(i8, 0);
                        String string7 = obtainAttributes2.getString(i8);
                        obtainAttributes2.recycle();
                        while (xmlResourceParser.next() != 3) {
                            av(xmlResourceParser);
                        }
                        arrayList.add(new dy(i5, i7, resourceId2, string7, string6, z));
                    } else {
                        av(xmlResourceParser);
                    }
                }
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            return new cgc((dy[]) arrayList.toArray(new dy[0]));
        }
        List bf = bf(resources, resourceId);
        ArrayList arrayList2 = new ArrayList();
        while (xmlResourceParser.next() != i4) {
            if (xmlResourceParser.getEventType() == i) {
                if (xmlResourceParser.getName().equals("fallback")) {
                    TypedArray obtainAttributes3 = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), glo.f18356a);
                    try {
                        String string8 = obtainAttributes3.getString(i3);
                        String string9 = obtainAttributes3.getString(1);
                        i2 = integer;
                        String string10 = obtainAttributes3.getString(i);
                        if (string8 == null) {
                            r3 = obtainAttributes3;
                            throw new XmlPullParserException("query attribute must be set in fallback element");
                        }
                        while (xmlResourceParser.next() != i4) {
                            try {
                                av(xmlResourceParser);
                            } catch (Throwable th2) {
                                th = th2;
                                typedArray = obtainAttributes3;
                            }
                        }
                        r3 = obtainAttributes3;
                        try {
                            bui buiVar = new bui(string, string2, string8, bf, string9, string10);
                            if (r3 instanceof AutoCloseable) {
                                ((AutoCloseable) r3).close();
                            } else if (r3 instanceof ExecutorService) {
                                o.ad((ExecutorService) r3);
                            } else {
                                r3.recycle();
                            }
                            arrayList2.add(buiVar);
                        } catch (Throwable th3) {
                            th = th3;
                        }
                        th = th3;
                    } catch (Throwable th4) {
                        th = th4;
                        r3 = obtainAttributes3;
                    }
                    th = th;
                    typedArray = r3;
                    if (typedArray == null) {
                        throw th;
                    }
                    try {
                        if (typedArray instanceof AutoCloseable) {
                            typedArray.close();
                        } else if (typedArray instanceof ExecutorService) {
                            o.ad((ExecutorService) typedArray);
                        } else {
                            typedArray.recycle();
                        }
                        throw th;
                    } catch (Throwable th5) {
                        th.addSuppressed(th5);
                        throw th;
                    }
                }
                i2 = integer;
                av(xmlResourceParser);
                integer = i2;
                i = 2;
                i3 = 0;
                i4 = 3;
            }
        }
        int i9 = integer;
        if (!arrayList2.isEmpty()) {
            return new fiw(arrayList2, i9, integer2, string5);
        }
        if (string3 == null) {
            throw new IllegalArgumentException("The provider font XML requires query attribute or fallback children.");
        }
        arrayList2.add(new bui(string, string2, string3, bf, null, null));
        if (string4 != null) {
            arrayList2.add(new bui(string, string2, string4, bf, null, null));
        }
        return new fiw(arrayList2, i9, integer2, string5);
    }

    public static void bn(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, git.t, i, i2);
        boolean z = obtainStyledAttributes.getBoolean(1, false);
        obtainStyledAttributes.recycle();
        if (z) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(R.attr.isMaterialTheme, typedValue, true) || (typedValue.type == 18 && typedValue.data == 0)) {
                az(context, t, "Theme.MaterialComponents");
            }
        }
        az(context, y, "Theme.AppCompat");
    }

    public static void bo(int i, int i2, Object obj) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i] = (byte) i2;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i] = (short) i2;
        } else {
            ((int[]) obj)[i] = i2;
        }
    }

    public static String bp(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        return charSequence.toString();
    }

    public static boolean bq(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static Object br(Context context, Class cls) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            return id.r(context, cls);
        }
        String t2 = i >= 23 ? id.t(context, cls) : (String) tv.f20074a.get(cls);
        if (t2 != null) {
            return context.getSystemService(t2);
        }
        return null;
    }

    public static int bs(int i, View view) {
        Context context = view.getContext();
        TypedValue ad = bfc.ad(view.getContext(), i, view.getClass().getCanonicalName());
        int i2 = ad.resourceId;
        return i2 != 0 ? af(context, i2) : ad.data;
    }

    public static int bt(int i, int i2) {
        return afr.c(i, (Color.alpha(i) * i2) / MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
    }

    public static void bu(String str) {
        Context context = eca.f15278c;
        if (str == null) {
            return;
        }
        if (nr.f19727b == null) {
            synchronized (nr.class) {
                try {
                    if (nr.f19727b == null) {
                        nr.f19727b = new nr();
                    }
                } finally {
                }
            }
        }
        nr nrVar = nr.f19727b;
        yr yrVar = new yr(str);
        nrVar.getClass();
        if (nr.f19728c != null) {
            nr.f19728c.execute(yrVar);
        }
    }

    public static void bv(Context context, String str) {
        PackageManager packageManager;
        Intent intent = new Intent();
        if (fnp.m()) {
            intent.setClassName("com.miui.securitycenter", "com.miui.appmanager.ApplicationsDetailsActivity");
            intent.putExtra("package_name", str);
            intent.putExtra("package_label", "Dev Tools");
            intent.addFlags(TTAdConstant.KEY_CLICK_AREA);
            synchronized (PackageManager.class) {
                packageManager = context.getPackageManager();
            }
            if (packageManager == null || acw.u(packageManager.queryIntentActivities(intent, 65536))) {
                intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts("package", str, null));
            }
        } else {
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", str, null));
        }
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        fgj.e().f(context, intent);
    }

    public static int z(Context context, int i, int i2) {
        Integer num;
        TypedValue i3 = bfc.i(context, i);
        if (i3 != null) {
            int i4 = i3.resourceId;
            num = Integer.valueOf(i4 != 0 ? af(context, i4) : i3.data);
        } else {
            num = null;
        }
        return num != null ? num.intValue() : i2;
    }

    public abstract Method _bf(Class cls, Field field);

    public abstract String[] _bg(Class cls);

    public Typeface bw(Context context, List list, int i) {
        throw new IllegalStateException("createFromFontInfoWithFallback must only be called on API 29+");
    }

    public Typeface bx(Context context, InputStream inputStream) {
        File j = gs.j(context);
        if (j == null) {
            return null;
        }
        try {
            if (gs.s(j, inputStream)) {
                return Typeface.createFromFile(j.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            j.delete();
        }
    }

    public gnf by(gnf[] gnfVarArr, int i) {
        new cfg(13);
        int i2 = (i & 1) == 0 ? MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL : 700;
        boolean z = (i & 2) != 0;
        gnf gnfVar = null;
        int i3 = he.UNDEFINED_ITEM_ID;
        for (gnf gnfVar2 : gnfVarArr) {
            int abs = (Math.abs(gnfVar2.f18448f - i2) * 2) + (gnfVar2.f18443a == z ? 0 : 1);
            if (gnfVar == null || i3 > abs) {
                gnfVar = gnfVar2;
                i3 = abs;
            }
        }
        return gnfVar;
    }

    public abstract Typeface g(Context context, cgc cgcVar, Resources resources, int i);

    public abstract Typeface h(Context context, gnf[] gnfVarArr, int i);

    public abstract Constructor i(Class cls);

    public abstract boolean j(Class cls);

    public Typeface q(Context context, Resources resources, int i, String str, int i2) {
        File j = gs.j(context);
        if (j == null) {
            return null;
        }
        try {
            if (gs.p(j, resources, i)) {
                return Typeface.createFromFile(j.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            j.delete();
        }
    }
}
