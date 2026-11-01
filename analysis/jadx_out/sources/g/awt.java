package g;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.app.Application;
import android.app.UiAutomation;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzagf;
import com.google.android.gms.internal.ads.zzagl;
import com.google.android.gms.internal.ads.zzagu;
import com.google.android.gms.internal.ads.zzdt;
import com.google.android.gms.internal.ads.zzed;
import com.google.android.gms.internal.ads.zzev;
import com.google.android.gms.internal.ads.zzfzo;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.ProtocolException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class awt {

    /* renamed from: a, reason: collision with root package name */
    public static Boolean f10996a;

    /* renamed from: b, reason: collision with root package name */
    public static Boolean f10997b;

    /* renamed from: c, reason: collision with root package name */
    public static Boolean f10998c;

    /* renamed from: e, reason: collision with root package name */
    public static Boolean f11000e;

    /* renamed from: f, reason: collision with root package name */
    public static String f11001f;
    public static Boolean h;
    public static Boolean i;

    /* renamed from: d, reason: collision with root package name */
    public static final Object f10999d = new Object();

    /* renamed from: g, reason: collision with root package name */
    public static final Object f11002g = new Object();

    public static boolean aa(Context context) {
        if (f10998c == null) {
            PackageManager packageManager = context.getPackageManager();
            boolean z = false;
            if (packageManager.hasSystemFeature("com.google.android.feature.services_updater") && packageManager.hasSystemFeature("cn.google.services")) {
                z = true;
            }
            f10998c = Boolean.valueOf(z);
        }
        return f10998c.booleanValue();
    }

    public static bdp ab(bdp bdpVar) {
        bff.p(bdpVar, "<this>");
        w wVar = bdpVar instanceof w ? (w) bdpVar : null;
        if (wVar == null || (bdpVar = wVar._cn) != null) {
            return bdpVar;
        }
        dic dicVar = (dic) wVar.getContext()._x(bmr.j);
        bdp skVar = dicVar != null ? new sk((cpk) dicVar, wVar) : wVar;
        wVar._cn = skVar;
        return skVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x003a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Object ac(Object obj, String str, boolean z) {
        Field field;
        Field field2;
        try {
        } catch (NoSuchFieldException unused) {
            field = null;
        }
        if (z) {
            field2 = obj.getClass().getField(str);
            if (field2 != null) {
                try {
                    return field2.get(obj);
                } catch (IllegalAccessException unused2) {
                }
            }
            return null;
        }
        field = obj.getClass().getDeclaredField(str);
        try {
            field.setAccessible(true);
            field2 = field;
        } catch (NoSuchFieldException unused3) {
            try {
                if (z) {
                    field2 = obj.getClass().getDeclaredField(str);
                    try {
                        field2.setAccessible(true);
                    } catch (NoSuchFieldException unused4) {
                    }
                } else {
                    field2 = obj.getClass().getField(str);
                }
            } catch (NoSuchFieldException unused5) {
            }
            if (field2 != null) {
            }
            return null;
        }
        if (field2 != null) {
        }
        return null;
    }

    public static AccessibilityNodeInfo ad(UiAutomation uiAutomation, String str, String str2, int i2, boolean z) {
        int i3;
        int i4;
        List<AccessibilityWindowInfo> windows = uiAutomation.getWindows();
        if (windows != null) {
            Iterator<AccessibilityWindowInfo> it = windows.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                AccessibilityWindowInfo next = it.next();
                if (next.getType() == 1 && next.isFocused()) {
                    AccessibilityNodeInfo root = next.getRoot();
                    if (root != null) {
                        if (TextUtils.equals(str, root.getPackageName())) {
                            ComponentName af = af();
                            if (z && af != null && TextUtils.equals(str, af.getPackageName()) && ("b.d.ab".equals(af.getClassName()) || "b.d.a".equals(af.getClassName()))) {
                                ArrayList arrayList = new ArrayList();
                                ArrayList arrayList2 = new ArrayList();
                                Iterator<AccessibilityWindowInfo> it2 = windows.iterator();
                                while (true) {
                                    i3 = 0;
                                    i4 = -1;
                                    if (!it2.hasNext()) {
                                        break;
                                    }
                                    AccessibilityWindowInfo next2 = it2.next();
                                    if (next2.getType() == 1 && next2.getLayer() < next.getLayer()) {
                                        AccessibilityNodeInfo root2 = next2.getRoot();
                                        arrayList.add(new dtk(next2.getType(), next2.getId(), next2.getLayer(), root2 == null ? null : root2.getPackageName(), ah(root2, null, -1) && root2.getWindowId() == next2.getId()));
                                        arrayList2.add(root2);
                                    }
                                }
                                int layer = next.getLayer();
                                boolean isEmpty = TextUtils.isEmpty(str2);
                                if ((!isEmpty) == (i2 >= 0)) {
                                    int i5 = -1;
                                    while (true) {
                                        if (i3 >= arrayList.size()) {
                                            i4 = i5;
                                            break;
                                        }
                                        dtk dtkVar = (dtk) arrayList.get(i3);
                                        int i6 = dtkVar.f14774c;
                                        CharSequence charSequence = dtkVar.f14772a;
                                        if (i6 == 1 && dtkVar.f14776e < layer && dtkVar.f14773b && !TextUtils.isEmpty(charSequence) && !TextUtils.equals(str, charSequence) && !TextUtils.equals("com.android.systemui", charSequence) && (isEmpty || (TextUtils.equals(str2, charSequence) && i2 == dtkVar.f14775d))) {
                                            if (i5 >= 0) {
                                                break;
                                            }
                                            i5 = i3;
                                        }
                                        i3++;
                                    }
                                }
                                if (i4 >= 0) {
                                    return (AccessibilityNodeInfo) arrayList2.get(i4);
                                }
                            }
                        } else if (ah(root, str2, i2)) {
                            return root;
                        }
                    }
                }
            }
        }
        return null;
    }

    public static gbb ae(ghn ghnVar) {
        return bfc.e(new aoi(9, ghnVar));
    }

    public static ComponentName af() {
        try {
            boolean z = Build.VERSION.SDK_INT >= 29;
            Class<?> cls = Class.forName(z ? "android.app.ActivityTaskManager" : "android.app.ActivityManager");
            Class<?> cls2 = Class.forName(z ? "android.app.IActivityTaskManager" : "android.app.IActivityManager");
            Object invoke = cls.getMethod("getService", null).invoke(null, null);
            String[] strArr = {"getFocusedRootTaskInfo", "getFocusedStackInfo"};
            for (int i2 = 0; i2 < 2; i2++) {
                try {
                    Object invoke2 = cls2.getMethod(strArr[i2], null).invoke(invoke, null);
                    if (invoke2 == null) {
                        return null;
                    }
                    return (ComponentName) invoke2.getClass().getField("topActivity").get(invoke2);
                } catch (NoSuchMethodException unused) {
                }
            }
            Integer num = (Integer) cls2.getMethod("getFocusedStackId", null).invoke(invoke, null);
            num.intValue();
            Object invoke3 = cls2.getMethod("getStackInfo", Integer.TYPE).invoke(invoke, num);
            if (invoke3 == null) {
                return null;
            }
            return (ComponentName) invoke3.getClass().getField("topActivity").get(invoke3);
        } catch (Exception unused2) {
            return null;
        }
    }

    public static Object ag(Object obj, String str) {
        Method method;
        try {
            try {
                method = obj.getClass().getMethod(str, null);
            } catch (NoSuchMethodException unused) {
                method = null;
            }
        } catch (NoSuchMethodException unused2) {
            method = obj.getClass().getDeclaredMethod(str, null);
            try {
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }
        if (method != null) {
            try {
                return method.invoke(obj, null);
            } catch (IllegalAccessException | InvocationTargetException unused4) {
            }
        }
        return null;
    }

    public static boolean ah(AccessibilityNodeInfo accessibilityNodeInfo, String str, int i2) {
        if (accessibilityNodeInfo == null || TextUtils.isEmpty(accessibilityNodeInfo.getPackageName()) || !accessibilityNodeInfo.isVisibleToUser() || ern.i(accessibilityNodeInfo.getPackageName()) || TextUtils.equals("com.android.systemui", accessibilityNodeInfo.getPackageName())) {
            return false;
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.equals(str, accessibilityNodeInfo.getPackageName())) {
            return false;
        }
        if (i2 >= 0 && i2 != accessibilityNodeInfo.getWindowId()) {
            return false;
        }
        accessibilityNodeInfo.getBoundsInScreen(new Rect());
        return !ern.k(r3);
    }

    public static boolean ai(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (h == null) {
            h = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        if (h.booleanValue() && Build.VERSION.SDK_INT < 24) {
            return true;
        }
        if (u(context)) {
            return !dyd.bj() || dyd.aq();
        }
        return false;
    }

    public static int aj(zzed zzedVar) {
        int zzg = zzedVar.zzg();
        if (zzedVar.zzg() == 1684108385) {
            zzedVar.zzM(8);
            int i2 = zzg - 16;
            if (i2 == 1) {
                return zzedVar.zzm();
            }
            if (i2 == 2) {
                return zzedVar.zzq();
            }
            if (i2 == 3) {
                return zzedVar.zzo();
            }
            if (i2 == 4 && (zzedVar.zzf() & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) == 0) {
                return zzedVar.zzp();
            }
        }
        zzdt.zzf("MetadataUtil", "Failed to parse data atom to int");
        return -1;
    }

    public static void ak(long j, clq clqVar, int i2, ArrayList arrayList, int i3, int i4, ArrayList arrayList2) {
        int i5;
        int i6;
        ArrayList arrayList3;
        long j2;
        int i7;
        int i8 = i2;
        ArrayList arrayList4 = arrayList;
        ArrayList arrayList5 = arrayList2;
        if (i3 >= i4) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        for (int i9 = i3; i9 < i4; i9++) {
            if (((gei) arrayList4.get(i9)).d() < i8) {
                throw new IllegalArgumentException("Failed requirement.");
            }
        }
        gei geiVar = (gei) arrayList.get(i3);
        gei geiVar2 = (gei) arrayList4.get(i4 - 1);
        if (i8 == geiVar.d()) {
            int intValue = ((Number) arrayList5.get(i3)).intValue();
            int i10 = i3 + 1;
            gei geiVar3 = (gei) arrayList4.get(i10);
            i5 = i10;
            i6 = intValue;
            geiVar = geiVar3;
        } else {
            i5 = i3;
            i6 = -1;
        }
        if (geiVar.m(i8) == geiVar2.m(i8)) {
            int min = Math.min(geiVar.d(), geiVar2.d());
            int i11 = 0;
            for (int i12 = i8; i12 < min && geiVar.m(i12) == geiVar2.m(i12); i12++) {
                i11++;
            }
            long j3 = 4;
            long j4 = (clqVar.f13080b / j3) + j + 2 + i11 + 1;
            clqVar.r(-i11);
            clqVar.r(i6);
            int i13 = i8 + i11;
            while (i8 < i13) {
                clqVar.r(geiVar.m(i8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                i8++;
            }
            if (i5 + 1 == i4) {
                if (i13 != ((gei) arrayList4.get(i5)).d()) {
                    throw new IllegalStateException("Check failed.");
                }
                clqVar.r(((Number) arrayList5.get(i5)).intValue());
                return;
            } else {
                clq clqVar2 = new clq();
                clqVar.r(((int) ((clqVar2.f13080b / j3) + j4)) * (-1));
                ak(j4, clqVar2, i13, arrayList4, i5, i4, arrayList5);
                clqVar.ae(clqVar2);
                return;
            }
        }
        int i14 = 1;
        for (int i15 = i5 + 1; i15 < i4; i15++) {
            if (((gei) arrayList4.get(i15 - 1)).m(i8) != ((gei) arrayList4.get(i15)).m(i8)) {
                i14++;
            }
        }
        long j5 = 4;
        long j6 = (clqVar.f13080b / j5) + j + 2 + (i14 * 2);
        clqVar.r(i14);
        clqVar.r(i6);
        for (int i16 = i5; i16 < i4; i16++) {
            int m = ((gei) arrayList4.get(i16)).m(i8);
            if (i16 == i5 || m != ((gei) arrayList4.get(i16 - 1)).m(i8)) {
                clqVar.r(m & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            }
        }
        clq clqVar3 = new clq();
        int i17 = i5;
        while (i17 < i4) {
            byte m2 = ((gei) arrayList4.get(i17)).m(i8);
            int i18 = i17 + 1;
            int i19 = i18;
            while (true) {
                if (i19 >= i4) {
                    i19 = i4;
                    break;
                } else if (m2 != ((gei) arrayList4.get(i19)).m(i8)) {
                    break;
                } else {
                    i19++;
                }
            }
            if (i18 == i19 && i8 + 1 == ((gei) arrayList4.get(i17)).d()) {
                clqVar.r(((Number) arrayList5.get(i17)).intValue());
                arrayList3 = arrayList5;
                j2 = j6;
                i7 = i19;
            } else {
                clqVar.r(((int) ((clqVar3.f13080b / j5) + j6)) * (-1));
                arrayList3 = arrayList5;
                j2 = j6;
                i7 = i19;
                ak(j2, clqVar3, i8 + 1, arrayList, i17, i7, arrayList3);
                arrayList4 = arrayList;
            }
            j6 = j2;
            i17 = i7;
            arrayList5 = arrayList3;
        }
        clqVar.ae(clqVar3);
    }

    public static zzagu al(int i2, String str, zzed zzedVar) {
        int zzg = zzedVar.zzg();
        if (zzedVar.zzg() == 1684108385 && zzg >= 22) {
            zzedVar.zzM(10);
            int zzq = zzedVar.zzq();
            if (zzq > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(zzq);
                String sb2 = sb.toString();
                int zzq2 = zzedVar.zzq();
                if (zzq2 > 0) {
                    sb2 = sb2 + "/" + zzq2;
                }
                return new zzagu(str, null, zzfzo.zzo(sb2));
            }
        }
        zzdt.zzf("MetadataUtil", "Failed to parse index/count attribute: ".concat(zzev.zze(i2)));
        return null;
    }

    public static int am(int i2) {
        return (-(i2 & 1)) ^ (i2 >>> 1);
    }

    public static cqz[] an(gqc gqcVar, int i2) {
        cqz cqzVar;
        cqz[] cqzVarArr = new cqz[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int ap = gqcVar.ap();
            if (ap == 3 || ap == 4) {
                cqzVar = cqz.WIDE;
            } else if (ap == 7 || ap == 8) {
                gqcVar.ai();
                cqzVar = cqz.NARROW;
            } else {
                cqzVar = cqz.NARROW;
            }
            cqzVarArr[i3] = cqzVar;
        }
        return cqzVarArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a0, code lost:
    
        if (r0 == null) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0027 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String ao() {
        String processName;
        String str;
        BufferedReader bufferedReader;
        Object invoke;
        if (!TextUtils.isEmpty(f11001f)) {
            return f11001f;
        }
        String str2 = null;
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                processName = Application.getProcessName();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            f11001f = processName;
            if (TextUtils.isEmpty(processName)) {
                return f11001f;
            }
            try {
                Method declaredMethod = Class.forName("android.app.ActivityThread", false, Application.class.getClassLoader()).getDeclaredMethod("currentProcessName", null);
                declaredMethod.setAccessible(true);
                invoke = declaredMethod.invoke(null, null);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (invoke instanceof String) {
                str = (String) invoke;
                f11001f = str;
                if (TextUtils.isEmpty(str)) {
                    return f11001f;
                }
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + Process.myPid() + "/cmdline"), "iso-8859-1"));
                    try {
                        StringBuilder sb = new StringBuilder();
                        while (true) {
                            int read = bufferedReader.read();
                            if (read <= 0) {
                                break;
                            }
                            sb.append((char) read);
                        }
                        str2 = sb.toString();
                    } catch (Throwable unused) {
                    }
                } catch (Throwable unused2) {
                    bufferedReader = null;
                }
                try {
                    bufferedReader.close();
                } catch (IOException unused3) {
                }
                f11001f = str2;
                return str2;
            }
            str = null;
            f11001f = str;
            if (TextUtils.isEmpty(str)) {
            }
        }
        processName = null;
        f11001f = processName;
        if (TextUtils.isEmpty(processName)) {
        }
    }

    public static boolean ap(enb enbVar, daw dawVar) {
        bff.p(dawVar, "request");
        int i2 = enbVar.f15840g;
        if (i2 != 200 && i2 != 410 && i2 != 414 && i2 != 501 && i2 != 203 && i2 != 204) {
            if (i2 != 307) {
                if (i2 != 308 && i2 != 404 && i2 != 405) {
                    switch (i2) {
                        case TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX /* 300 */:
                        case MediaPlayer.MEDIA_PLAYER_OPTION_NOTIFY_DEAD_LOCK /* 301 */:
                            break;
                        case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_AUDIO_EFFECT /* 302 */:
                            break;
                        default:
                            return false;
                    }
                }
            }
            if (enb.o("Expires", enbVar) == null && enbVar.r().m == -1 && !enbVar.r().h && !enbVar.r().f11704f) {
                return false;
            }
        }
        if (enbVar.r().k) {
            return false;
        }
        bjl bjlVar = (bjl) dawVar.f13888g;
        if (bjlVar == null) {
            bjl bjlVar2 = bjl.f11699a;
            bjlVar = afo.ax((dvq) dawVar.f13882a);
            dawVar.f13888g = bjlVar;
        }
        return !bjlVar.k;
    }

    public static final gxm j(fkj fkjVar) {
        bff.p(fkjVar, "<this>");
        return new gxm(fkjVar.h, fkjVar.t);
    }

    public static zzagl k(int i2, String str, zzed zzedVar, boolean z, boolean z2) {
        int aj = aj(zzedVar);
        if (z2) {
            aj = Math.min(1, aj);
        }
        if (aj >= 0) {
            return z ? new zzagu(str, null, zzfzo.zzo(Integer.toString(aj))) : new zzagf("und", str, Integer.toString(aj));
        }
        zzdt.zzf("MetadataUtil", "Failed to parse uint8 attribute: ".concat(zzev.zze(i2)));
        return null;
    }

    public static String l(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        for (String str3 : t(str).split(":")) {
            if (!str3.isEmpty() && !r(str3, str2)) {
                if (sb.length() > 0) {
                    sb.append(':');
                }
                sb.append(str3);
            }
        }
        return sb.toString();
    }

    public static long m(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public static fxb n(Context context) {
        bff.p(context, "context");
        fxb be = fxb.be(context);
        bff.e(be, "getInstance(context)");
        return be;
    }

    public static he o(String str, int i2, String str2, boolean z) {
        UiAutomation uiAutomation;
        AccessibilityNodeInfo ad;
        HandlerThread handlerThread = new HandlerThread("DebugLayoutCallbacks");
        handlerThread.start();
        try {
            uiAutomation = (UiAutomation) UiAutomation.class.getConstructor(Looper.class, Class.forName("android.app.IUiAutomationConnection")).newInstance(handlerThread.getLooper(), Class.forName("android.app.UiAutomationConnection").getDeclaredConstructor(null).newInstance(null));
            try {
                UiAutomation.class.getMethod("connect", Integer.TYPE).invoke(uiAutomation, 1);
                AccessibilityServiceInfo serviceInfo = uiAutomation.getServiceInfo();
                serviceInfo.flags |= 82;
                uiAutomation.setServiceInfo(serviceInfo);
                long uptimeMillis = SystemClock.uptimeMillis() + ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT;
                do {
                    ad = ad(uiAutomation, str, str2, i2, z);
                    if (ad != null) {
                        break;
                    }
                    SystemClock.sleep(150L);
                } while (SystemClock.uptimeMillis() < uptimeMillis);
                if (ad == null) {
                    throw new IOException("No inspectable foreground application");
                }
                ComponentName af = af();
                he y = y(ad, (af == null || !TextUtils.equals(af.getPackageName(), ad.getPackageName())) ? ad.getClassName() == null ? "" : ad.getClassName().toString() : af.getClassName(), uptimeMillis);
                AccessibilityNodeInfo ad2 = ad(uiAutomation, str, str2, i2, z);
                if (ad2 == null || ad2.getWindowId() != ad.getWindowId() || !TextUtils.equals(ad2.getPackageName(), ad.getPackageName())) {
                    throw new IOException("Foreground application changed during capture");
                }
                try {
                    UiAutomation.class.getMethod("disconnect", null).invoke(uiAutomation, null);
                } catch (Exception unused) {
                }
                handlerThread.quitSafely();
                return y;
            } catch (Throwable th) {
                th = th;
                if (uiAutomation != null) {
                    try {
                        UiAutomation.class.getMethod("disconnect", null).invoke(uiAutomation, null);
                    } catch (Exception unused2) {
                    }
                }
                handlerThread.quitSafely();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            uiAutomation = null;
        }
    }

    public static Object p(bto btoVar, Object obj, bdp bdpVar) {
        bff.p(btoVar, "<this>");
        boj context = bdpVar.getContext();
        Object druVar = context == cgq.f12850a ? new dru(bdpVar) : new gjg(bdpVar, context);
        baf.bc(2, btoVar);
        return btoVar.d(obj, druVar);
    }

    public static void q() {
        synchronized (f10999d) {
            throw new IllegalStateException("EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
        }
    }

    public static boolean r(String str, String str2) {
        for (String str3 : t(str).split(":")) {
            int indexOf = str3.indexOf(47);
            if (indexOf >= 0 && str2.equals(str3.substring(0, indexOf))) {
                String substring = str3.substring(indexOf + 1);
                if (substring.startsWith(".")) {
                    substring = str2.concat(substring);
                }
                if ("com.google.android.accessibility.selecttospeak.SelectToSpeakService".equals(substring)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String s(String str, String str2) {
        String t = t(str);
        if (r(t, str2)) {
            return t;
        }
        String c2 = awf.c(str2, "/com.google.android.accessibility.selecttospeak.SelectToSpeakService");
        if (t.isEmpty()) {
            return c2;
        }
        return awf.ad(awf.o(t), t.endsWith(":") ? "" : ":", c2);
    }

    public static String t(String str) {
        return (str == null || "null".equals(str.trim())) ? "" : str.trim();
    }

    public static boolean u(Context context) {
        if (f10997b == null) {
            f10997b = Boolean.valueOf(context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return f10997b.booleanValue();
    }

    public static String v(Context context) {
        try {
            return context.getResources().getResourcePackageName(R.string.common_google_play_services_unknown_issue);
        } catch (Resources.NotFoundException unused) {
            return context.getPackageName();
        }
    }

    public static ParcelFileDescriptor w(String str, int i2, String str2, boolean z) {
        if (Process.myUid() != 2000 && Process.myUid() != 0) {
            throw new SecurityException("Layout capture requires an authorized shell process");
        }
        ParcelFileDescriptor[] createReliablePipe = ParcelFileDescriptor.createReliablePipe();
        new Thread(new bkq(createReliablePipe, str, str2, i2, z), "DebugLayoutCapture").start();
        return createReliablePipe[0];
    }

    public static dsg x(String str) {
        aqt aqtVar;
        int i2;
        String str2;
        bff.p(str, "statusLine");
        if (dmc.bw(str, "HTTP/1.", false)) {
            i2 = 9;
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            int charAt = str.charAt(7) - '0';
            if (charAt == 0) {
                aqtVar = aqt.HTTP_1_0;
            } else {
                if (charAt != 1) {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                aqtVar = aqt.HTTP_1_1;
            }
        } else {
            if (!dmc.bw(str, "ICY ", false)) {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            aqtVar = aqt.HTTP_1_0;
            i2 = 4;
        }
        int i3 = i2 + 3;
        if (str.length() < i3) {
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
        try {
            String substring = str.substring(i2, i3);
            bff.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            int parseInt = Integer.parseInt(substring);
            if (str.length() <= i3) {
                str2 = "";
            } else {
                if (str.charAt(i3) != ' ') {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                str2 = str.substring(i2 + 4);
                bff.e(str2, "this as java.lang.String).substring(startIndex)");
            }
            return new dsg(aqtVar, parseInt, str2);
        } catch (NumberFormatException unused) {
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
    }

    public static he y(AccessibilityNodeInfo accessibilityNodeInfo, String str, long j) {
        he heVar = new he(accessibilityNodeInfo, 1, str);
        ArrayDeque arrayDeque = new ArrayDeque();
        HashSet hashSet = new HashSet();
        hashSet.add(accessibilityNodeInfo);
        arrayDeque.add(new dxf(accessibilityNodeInfo, heVar, 1));
        while (!arrayDeque.isEmpty()) {
            if (SystemClock.uptimeMillis() >= j) {
                throw new IOException("Layout capture timed out");
            }
            dxf dxfVar = (dxf) arrayDeque.remove();
            int i2 = 0;
            while (true) {
                AccessibilityNodeInfo accessibilityNodeInfo2 = dxfVar.f15009a;
                int i3 = dxfVar.f15011c;
                if (i2 < accessibilityNodeInfo2.getChildCount()) {
                    AccessibilityNodeInfo child = dxfVar.f15009a.getChild(i2);
                    if (child != null && hashSet.add(child)) {
                        if (hashSet.size() > 5000) {
                            throw new IOException("Layout is too large to capture");
                        }
                        int i4 = i3 + 1;
                        he heVar2 = new he(child, i4, str);
                        heVar2.setParentNodeInfo(dxfVar.f15010b);
                        arrayDeque.add(new dxf(child, heVar2, i4));
                    }
                    i2++;
                }
            }
        }
        return heVar;
    }

    public static zzagu z(int i2, String str, zzed zzedVar) {
        int zzg = zzedVar.zzg();
        if (zzedVar.zzg() == 1684108385) {
            zzedVar.zzM(8);
            return new zzagu(str, null, zzfzo.zzo(zzedVar.zzA(zzg - 16)));
        }
        zzdt.zzf("MetadataUtil", "Failed to parse text attribute: ".concat(zzev.zze(i2)));
        return null;
    }

    public abstract void aq(Object obj, float f2);

    public void ar(gmw gmwVar) {
        bff.p(gmwVar, "request");
        List r = cro.r(gmwVar);
        fxb fxbVar = (fxb) this;
        if (r.isEmpty()) {
            throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
        }
        new pc(fxbVar, null, dne.KEEP, r, 0).j();
    }

    public abstract float as(Object obj);
}
