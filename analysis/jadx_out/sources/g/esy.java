package g;

import android.R;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebSettings;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbdo;
import com.google.android.gms.internal.ads.zzbwh;
import com.google.android.gms.internal.ads.zzcfb;
import com.google.android.gms.internal.ads.zzcgn;
import com.google.android.gms.internal.ads.zzdpq;
import com.google.android.gms.internal.ads.zzfet;
import com.google.android.gms.internal.ads.zzfew;
import com.google.android.gms.internal.ads.zzfwf;
import com.google.android.gms.internal.ads.zzfxd;
import com.google.android.gms.internal.ads.zzhgq;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class esy {

    /* renamed from: a, reason: collision with root package name */
    public static final gfx f16117a = new gfx(Looper.getMainLooper());

    /* renamed from: b, reason: collision with root package name */
    public volatile String f16118b;
    public String l;

    /* renamed from: f, reason: collision with root package name */
    public final AtomicReference f16122f = new AtomicReference(null);
    public final AtomicReference i = new AtomicReference(null);
    public final AtomicReference k = new AtomicReference(new Bundle());

    /* renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f16120d = new AtomicBoolean();

    /* renamed from: e, reason: collision with root package name */
    public boolean f16121e = true;

    /* renamed from: g, reason: collision with root package name */
    public final Object f16123g = new Object();
    public boolean h = false;
    public boolean j = false;

    /* renamed from: c, reason: collision with root package name */
    public final ExecutorService f16119c = Executors.newSingleThreadExecutor();

    public static ArrayList aa() {
        zzbce zzbceVar = zzbcn.zza;
        List zzb = edt.f15376a.f15377b.zzb();
        ArrayList arrayList = new ArrayList();
        Iterator it = zzb.iterator();
        while (it.hasNext()) {
            Iterator it2 = zzfxd.zzb(zzfwf.zzc(',')).zzc((String) it.next()).iterator();
            while (it2.hasNext()) {
                try {
                    arrayList.add(Long.valueOf((String) it2.next()));
                } catch (NumberFormatException unused) {
                    agd.e("Experiment ID is not a number");
                }
            }
        }
        return arrayList;
    }

    public static final boolean ab(Context context) {
        Bundle bundle;
        try {
            try {
                bundle = chk.c(context).b(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME, context.getPackageName()).metaData;
            } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
                agd.h();
                bundle = null;
            }
            String string = bundle.getString("com.google.android.gms.ads.INTEGRATION_MANAGER");
            if (TextUtils.isEmpty(aq(bundle))) {
                return !TextUtils.isEmpty(string);
            }
            return false;
        } catch (RemoteException unused2) {
            return false;
        }
    }

    public static int ac(int i) {
        if (i >= 5000) {
            return i;
        }
        if (i <= 0) {
            return 60000;
        }
        agd.b("HTTP timeout too low: " + i + " milliseconds. Reverting to default timeout: 60000 milliseconds.");
        return 60000;
    }

    public static final void ad(Context context, Intent intent) {
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkH)).booleanValue()) {
            try {
                context.startActivity(intent);
                return;
            } catch (Throwable unused) {
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
                context.startActivity(intent);
                return;
            }
        }
        try {
            try {
                context.startActivity(intent);
            } catch (Throwable unused2) {
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
                context.startActivity(intent);
            }
        } catch (SecurityException e2) {
            zzfxd zzfxdVar = agd.f10175a;
            ti.f20033a.f20034ab.zzw(e2, "AdUtil.startActivityWithUnknownContext");
        }
    }

    public static final int[] ae(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        return (window == null || (findViewById = window.findViewById(R.id.content)) == null) ? new int[]{0, 0} : new int[]{findViewById.getWidth(), findViewById.getHeight()};
    }

    public static final AlertDialog.Builder af(Context context) {
        lp lpVar = ti.f20033a.k;
        return new AlertDialog.Builder(context, R.style.Theme.Material.Dialog.Alert);
    }

    public static final boolean ag(Context context) {
        try {
            if (awt.f10996a == null) {
                awt.f10996a = Boolean.valueOf(dyd.aq() && context.getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE"));
            }
            return awt.f10996a.booleanValue();
        } catch (NoSuchMethodError unused) {
            return false;
        }
    }

    public static final void ah(Context context, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            new bfn(context, str, (String) it.next()).zzb();
        }
    }

    public static final void ai(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            z(context, intent);
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            context.startActivity(intent);
            agd.c("Opening " + uri.toString() + " in a new browser.");
        } catch (ActivityNotFoundException e2) {
            agd.f("No browser is found.", e2);
        }
    }

    public static int aj(Context context, Uri uri) {
        if (context == null) {
            agd.e("Trying to open chrome custom tab on a null context");
            return 3;
        }
        if (!(context instanceof Activity)) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            context.startActivity(intent);
            return 2;
        }
        zzbce zzbceVar = zzbcn.zzeF;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            fdy h = new dxb(ti.f20033a.s.zza()).h();
            Intent intent2 = (Intent) h.f16634c;
            intent2.setPackage(zzhgq.zza(context));
            intent2.setData(uri);
            context.startActivity(intent2, (Bundle) h.f16632a);
            return 5;
        }
        if (((Boolean) edtVar.f15379d.zza(zzbcn.zzeD)).booleanValue()) {
            zzbdo zzbdoVar = new zzbdo();
            zzbdoVar.zze(new fpd((Object) zzbdoVar, (Object) context, (Object) uri, 20, (byte) 0));
            zzbdoVar.zzb((Activity) context);
            return 5;
        }
        Intent intent3 = new Intent("android.intent.action.VIEW");
        intent3.setData(uri);
        intent3.addFlags(C.ENCODING_PCM_MU_LAW);
        context.startActivity(intent3);
        return 9;
    }

    public static boolean ak(String str, AtomicReference atomicReference, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Pattern pattern = (Pattern) atomicReference.get();
            if (pattern == null || !str2.equals(pattern.pattern())) {
                pattern = Pattern.compile(str2);
                atomicReference.set(pattern);
            }
            return pattern.matcher(str).matches();
        } catch (PatternSyntaxException unused) {
            return false;
        }
    }

    public static final String al() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        return str2.startsWith(str) ? str2 : awf.i(str, " ", str2);
    }

    public static final boolean am(String str) {
        if (!dzz.g()) {
            return false;
        }
        zzbce zzbceVar = zzbcn.zzeX;
        edt edtVar = edt.f15376a;
        if (!((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            return false;
        }
        String str2 = (String) edtVar.f15379d.zza(zzbcn.zzeZ);
        if (!str2.isEmpty()) {
            for (String str3 : str2.split(";")) {
                if (str3.equals(str)) {
                    return false;
                }
            }
        }
        String str4 = (String) edt.f15376a.f15379d.zza(zzbcn.zzeY);
        if (str4.isEmpty()) {
            return true;
        }
        for (String str5 : str4.split(";")) {
            if (str5.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static final dvw an(Context context) {
        try {
            Object newInstance = context.getClassLoader().loadClass("com.google.android.gms.ads.internal.util.WorkManagerUtil").getDeclaredConstructor(null).newInstance(null);
            if (!(newInstance instanceof IBinder)) {
                agd.d("Instantiated WorkManagerUtil not instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) newInstance;
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
            return queryLocalInterface instanceof dvw ? (dvw) queryLocalInterface : new exv("com.google.android.gms.ads.internal.util.IWorkManagerUtil", iBinder);
        } catch (Exception e2) {
            ti.f20033a.f20034ab.zzw(e2, "Failed to instantiate WorkManagerUtil");
            return null;
        }
    }

    public static final String ao() {
        StringBuilder sb = new StringBuilder(256);
        sb.append("Mozilla/5.0 (Linux; U; Android");
        String str = Build.VERSION.RELEASE;
        if (str != null) {
            sb.append(" ");
            sb.append(str);
        }
        sb.append("; ");
        sb.append(Locale.getDefault());
        String str2 = Build.DEVICE;
        if (str2 != null) {
            sb.append("; ");
            sb.append(str2);
            String str3 = Build.DISPLAY;
            if (str3 != null) {
                sb.append(" Build/");
                sb.append(str3);
            }
        }
        sb.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return sb.toString();
    }

    public static final boolean ap(Context context) {
        Window window;
        if ((context instanceof Activity) && (window = ((Activity) context).getWindow()) != null && window.getDecorView() != null) {
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            window.getDecorView().getGlobalVisibleRect(rect, null);
            window.getDecorView().getWindowVisibleDisplayFrame(rect2);
            if (rect.bottom != 0 && rect2.bottom != 0 && rect.top == rect2.top) {
                return true;
            }
        }
        return false;
    }

    public static String aq(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        String string = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
        return !TextUtils.isEmpty(string) ? (string.matches("^ca-app-pub-[0-9]{16}~[0-9]{10}$") || string.matches("^/\\d+~.+$")) ? string : "" : "";
    }

    public static final void m(int i, View view) {
        String str;
        int i2;
        int i3;
        int i4;
        String str2;
        zzfet zzD;
        zzfew zzR;
        View view2 = view;
        int[] iArr = new int[2];
        Rect rect = new Rect();
        try {
            String packageName = view2.getContext().getPackageName();
            if (view2 instanceof zzdpq) {
                view2 = ((zzdpq) view2).getChildAt(0);
            }
            if (view2 instanceof dii) {
                str = "NATIVE";
                i2 = 1;
            } else {
                str = "UNKNOWN";
                i2 = 0;
            }
            if (view2.getLocalVisibleRect(rect)) {
                i4 = rect.width();
                i3 = rect.height();
            } else {
                i3 = 0;
                i4 = 0;
            }
            esy esyVar = ti.f20033a.z;
            long o = o(view2);
            view2.getLocationOnScreen(iArr);
            int i5 = iArr[0];
            int i6 = iArr[1];
            boolean z = view2 instanceof zzcgn;
            String str3 = LiveConfigKey.NONE;
            if (!z || (zzR = ((zzcgn) view2).zzR()) == null) {
                str2 = LiveConfigKey.NONE;
            } else {
                str2 = zzR.zzb;
                view2.setContentDescription(str2 + ":" + view2.hashCode());
            }
            if ((view2 instanceof zzcfb) && (zzD = ((zzcfb) view2).zzD()) != null) {
                str = zzfet.zza(zzD.zzb);
                i2 = zzD.zze;
                str3 = zzD.zzE;
            }
            Locale locale = Locale.US;
            agd.k("<Ad hashCode=" + view2.hashCode() + ", package=" + packageName + ", adNetCls=" + str3 + ", gwsQueryId=" + str2 + ", format=" + str + ", impType=" + i2 + ", class=" + view2.getClass().getName() + ", x=" + i5 + ", y=" + i6 + ", width=" + view2.getWidth() + ", height=" + view2.getHeight() + ", vWidth=" + i4 + ", vHeight=" + i3 + ", alpha=" + o + ", state=" + Integer.toString(i, 2) + ">");
        } catch (Exception e2) {
            agd.f("Failure getting view location.", e2);
        }
    }

    public static final int n(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e2) {
            agd.b("Could not parse value:".concat(e2.toString()));
            return 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v6, types: [android.view.ViewParent] */
    public static final long o(View view) {
        float f2;
        float f3 = Float.MAX_VALUE;
        do {
            boolean z = view instanceof View;
            f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            if (!z) {
                break;
            }
            View view2 = (View) view;
            f3 = Math.min(f3, view2.getAlpha());
            view = view2.getParent();
        } while (f3 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        if (f3 >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            f2 = f3;
        }
        return Math.round(f2 * 100.0f);
    }

    public static final boolean p(View view, PowerManager powerManager, KeyguardManager keyguardManager) {
        boolean z = ti.f20033a.z.f16121e || keyguardManager == null || !keyguardManager.inKeyguardRestrictedInputMode() || t(view);
        long o = o(view);
        if (view.getVisibility() == 0 && view.isShown() && ((powerManager == null || powerManager.isScreenOn()) && z)) {
            zzbce zzbceVar = zzbcn.zzbs;
            edt edtVar = edt.f15376a;
            zzbcl zzbclVar = edtVar.f15379d;
            zzbcl zzbclVar2 = edtVar.f15379d;
            if ((!((Boolean) zzbclVar.zza(zzbceVar)).booleanValue() || view.getLocalVisibleRect(new Rect()) || view.getGlobalVisibleRect(new Rect())) && (!((Boolean) zzbclVar2.zza(zzbcn.zzkk)).booleanValue() || o >= ((Integer) zzbclVar2.zza(zzbcn.zzkm)).intValue())) {
                return true;
            }
        }
        return false;
    }

    public static final HashMap q(String str) {
        HashMap hashMap = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                HashSet hashSet = new HashSet();
                JSONArray optJSONArray = jSONObject.optJSONArray(next);
                if (optJSONArray != null) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        String optString = optJSONArray.optString(i);
                        if (optString != null) {
                            hashSet.add(optString);
                        }
                    }
                    hashMap.put(next, hashSet);
                }
            }
            return hashMap;
        } catch (JSONException e2) {
            ti.f20033a.f20034ab.zzw(e2, "AdUtil.getMapOfFileNamesToKeysFromJsonString");
            return hashMap;
        }
    }

    public static final int[] r(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        int[] iArr = (window == null || (findViewById = window.findViewById(R.id.content)) == null) ? new int[]{0, 0} : new int[]{findViewById.getTop(), findViewById.getBottom()};
        cbv cbvVar = cbv.f12612a;
        return new int[]{cbvVar.f12615d.s(activity, iArr[0]), cbvVar.f12615d.s(activity, iArr[1])};
    }

    public static final boolean s(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi");
            return false;
        } catch (ClassNotFoundException unused) {
            return true;
        } catch (Throwable th) {
            agd.f("Error loading class.", th);
            ti.f20033a.f20034ab.zzw(th, "AdUtil.isLiteSdk");
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0016 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean t(View view) {
        Activity activity;
        View rootView = view.getRootView();
        if (rootView != null) {
            Context context = rootView.getContext();
            if (context instanceof Activity) {
                activity = (Activity) context;
                if (activity != null) {
                    return false;
                }
                Window window = activity.getWindow();
                WindowManager.LayoutParams attributes = window != null ? window.getAttributes() : null;
                return (attributes == null || (attributes.flags & 524288) == 0) ? false : true;
            }
        }
        activity = null;
        if (activity != null) {
        }
    }

    public static final HashMap u(Uri uri) {
        if (uri == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (String str : uri.getQueryParameterNames()) {
            if (!TextUtils.isEmpty(str)) {
                hashMap.put(str, uri.getQueryParameter(str));
            }
        }
        return hashMap;
    }

    public static final boolean v(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        PowerManager powerManager;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    if (runningAppProcessInfo.importance == 100 && !keyguardManager.inKeyguardRestrictedInputMode() && (powerManager = (PowerManager) context.getSystemService("power")) != null) {
                        return !powerManager.isScreenOn();
                    }
                    return true;
                }
            }
            return true;
        } catch (Throwable unused) {
        }
        return false;
    }

    public static final boolean w(Context context, String str) {
        Context zza = zzbwh.zza(context);
        return chk.c(zza).f12624a.getPackageManager().checkPermission(str, zza.getPackageName()) == 0;
    }

    public static final String x(Context context, String str) {
        Context context2;
        if (str == null) {
            return ao();
        }
        String str2 = null;
        try {
            if (fwk.f17519b == null) {
                fwk.f17519b = new fwk();
            }
            fwk fwkVar = fwk.f17519b;
            if (TextUtils.isEmpty(fwkVar.f17520c)) {
                AtomicBoolean atomicBoolean = evp.f16244c;
                try {
                    context2 = context.createPackageContext("com.google.android.gms", 3);
                } catch (PackageManager.NameNotFoundException unused) {
                    context2 = null;
                }
                fwkVar.f17520c = (String) acw.p(context, new fal(4, context2, context, false));
            }
            str2 = fwkVar.f17520c;
        } catch (Exception unused2) {
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = WebSettings.getDefaultUserAgent(context);
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = ao();
        }
        String i = awf.i(str2, " (Mobile; ", str);
        try {
            if (chk.c(context).d()) {
                i = i + ";aia";
            }
        } catch (Exception e2) {
            ti.f20033a.f20034ab.zzw(e2, "AdUtil.getUserAgent");
        }
        return i.concat(")");
    }

    public static final String y(Context context) {
        Bundle bundle;
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        try {
            bundle = chk.c(context).b(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME, context.getPackageName()).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            agd.h();
            bundle = null;
        }
        return aq(bundle);
    }

    public static final void z(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
        extras.putBinder("android.support.customtabs.extra.SESSION", null);
        extras.putString("com.android.browser.application_id", context.getPackageName());
        intent.putExtras(extras);
    }

    public final void ar(Context context) {
        if (this.h) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        zzbcn.zza(context);
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkG)).booleanValue() || Build.VERSION.SDK_INT < 33) {
            context.getApplicationContext().registerReceiver(new sr(18, this), intentFilter);
        } else {
            context.getApplicationContext().registerReceiver(new sr(18, this), intentFilter, 4);
        }
        this.h = true;
    }

    public final void as(Context context) {
        if (this.j) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED");
        zzbcn.zza(context);
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkG)).booleanValue() || Build.VERSION.SDK_INT < 33) {
            context.getApplicationContext().registerReceiver(new djh(1), intentFilter);
        } else {
            context.getApplicationContext().registerReceiver(new djh(1), intentFilter, 4);
        }
        this.j = true;
    }

    public final String at(Context context, String str) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkT)).booleanValue()) {
            if (this.f16118b != null) {
                return this.f16118b;
            }
            this.f16118b = x(context, str);
            return this.f16118b;
        }
        synchronized (this.f16123g) {
            try {
                String str2 = this.l;
                if (str2 != null) {
                    return str2;
                }
                String x = x(context, str);
                this.l = x;
                return x;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void au(Context context, String str, HttpURLConnection httpURLConnection, int i) {
        int ac = ac(i);
        agd.k("HTTP timeout: " + ac + " milliseconds.");
        httpURLConnection.setConnectTimeout(ac);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(ac);
        if (TextUtils.isEmpty(httpURLConnection.getRequestProperty("User-Agent"))) {
            httpURLConnection.setRequestProperty("User-Agent", at(context, str));
        }
        httpURLConnection.setUseCaches(false);
    }
}
