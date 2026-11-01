package g;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.graphics.Rect;
import android.media.MediaCodec;
import android.os.Binder;
import android.os.Build;
import android.os.RemoteException;
import android.os.UserManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.ads.zzacu;
import com.google.android.gms.internal.ads.zzann;
import com.google.android.gms.internal.ads.zzano;
import com.google.android.gms.internal.ads.zzanw;
import com.google.android.gms.internal.ads.zzaoa;
import com.google.android.gms.internal.ads.zzbbh;
import com.google.android.gms.internal.ads.zzbjr;
import com.google.android.gms.internal.ads.zzbno;
import com.google.android.gms.internal.ads.zzbnx;
import com.google.android.gms.internal.ads.zzbpm;
import com.google.android.gms.internal.ads.zzbqh;
import com.google.android.gms.internal.ads.zzbqz;
import com.google.android.gms.internal.ads.zzcaj;
import com.google.android.gms.internal.ads.zzcao;
import com.google.android.gms.internal.ads.zzcaq;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzcry;
import com.google.android.gms.internal.ads.zzcrz;
import com.google.android.gms.internal.ads.zzcsf;
import com.google.android.gms.internal.ads.zzec;
import com.google.android.gms.internal.ads.zzed;
import com.google.android.gms.internal.ads.zzek;
import com.google.android.gms.internal.ads.zzfhx;
import com.google.android.gms.internal.ads.zzfhy;
import com.google.android.gms.internal.ads.zzgdp;
import com.google.android.gms.internal.ads.zzgee;
import com.google.android.gms.internal.ads.zzgei;
import g.dcy;
import j$.util.DesugarCollections;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class clx implements dbn, bol, ghx, dbf, zzann, lb, zzcaq, gon, zzgee {

    /* renamed from: a, reason: collision with root package name */
    public static clx f13099a;

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f13100b = {"version_code", "manifest_version_code", "aid", "update_version_code"};

    /* renamed from: c, reason: collision with root package name */
    public Object f13101c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f13102d;

    /* renamed from: e, reason: collision with root package name */
    public Object f13103e;

    public clx(int i) {
        this.f13102d = i;
        switch (i) {
            case 12:
                this.f13103e = DesugarCollections.synchronizedMap(new WeakHashMap());
                this.f13101c = DesugarCollections.synchronizedMap(new WeakHashMap());
                break;
            default:
                this.f13103e = null;
                this.f13101c = null;
                break;
        }
    }

    public clx(int i, int i2) {
        this.f13102d = 6;
        this.f13103e = new int[]{i, i2};
        this.f13101c = new float[]{TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f};
    }

    public clx(int i, int i2, int i3) {
        this.f13102d = 6;
        this.f13103e = new int[]{i, i2, i3};
        this.f13101c = new float[]{TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.5f, 1.0f};
    }

    public /* synthetic */ clx(int i, Object obj, Object obj2, boolean z) {
        this.f13102d = i;
        this.f13103e = obj;
        this.f13101c = obj2;
    }

    public /* synthetic */ clx(int i, boolean z) {
        this.f13102d = i;
    }

    public clx(Context context) {
        this.f13102d = 0;
        this.f13103e = context;
        bua buaVar = new bua(null, 1);
        this.f13101c = buaVar;
        context.getContentResolver().registerContentObserver(gsj.f18689e, true, buaVar);
    }

    public /* synthetic */ clx(MediaCodec.CryptoInfo cryptoInfo) {
        this.f13102d = 21;
        this.f13103e = cryptoInfo;
        this.f13101c = fid.m();
    }

    public clx(zzanw zzanwVar) {
        this.f13102d = 13;
        this.f13101c = zzanwVar;
        this.f13103e = new zzec(new byte[4], 4);
    }

    public clx(ezn eznVar) {
        this.f13102d = 10;
        this.f13101c = eznVar;
        this.f13103e = new Rect();
    }

    public /* synthetic */ clx(Object obj, int i, Object obj2) {
        this.f13102d = i;
        this.f13101c = obj;
        this.f13103e = obj2;
    }

    public clx(ArrayList arrayList, ArrayList arrayList2) {
        this.f13102d = 6;
        int size = arrayList.size();
        this.f13103e = new int[size];
        this.f13101c = new float[size];
        for (int i = 0; i < size; i++) {
            ((int[]) this.f13103e)[i] = ((Integer) arrayList.get(i)).intValue();
            ((float[]) this.f13101c)[i] = ((Float) arrayList2.get(i)).floatValue();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0048 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0041 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static clx f(Context context) {
        FileChannel fileChannel;
        FileLock fileLock;
        try {
            fileChannel = new RandomAccessFile(new File(context.getFilesDir(), "generatefid.lock"), "rw").getChannel();
            try {
                fileLock = fileChannel.lock();
            } catch (IOException | Error | OverlappingFileLockException e2) {
                e = e2;
                fileLock = null;
            }
        } catch (IOException | Error | OverlappingFileLockException e3) {
            e = e3;
            fileChannel = null;
            fileLock = null;
        }
        try {
            return new clx(4, fileChannel, fileLock, false);
        } catch (IOException e4) {
            e = e4;
            Log.e("CrossProcessLock", "encountered error while creating and acquiring the lock, ignoring", e);
            if (fileLock != null) {
                try {
                    fileLock.release();
                } catch (IOException unused) {
                }
            }
            if (fileChannel != null) {
                try {
                    fileChannel.close();
                } catch (IOException unused2) {
                }
            }
            return null;
        } catch (Error e5) {
            e = e5;
            Log.e("CrossProcessLock", "encountered error while creating and acquiring the lock, ignoring", e);
            if (fileLock != null) {
            }
            if (fileChannel != null) {
            }
            return null;
        } catch (OverlappingFileLockException e6) {
            e = e6;
            Log.e("CrossProcessLock", "encountered error while creating and acquiring the lock, ignoring", e);
            if (fileLock != null) {
            }
            if (fileChannel != null) {
            }
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x013f, code lost:
    
        r7.append("FLYME-");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static clx g(Context context) {
        Object obj;
        int i;
        int i2 = 1;
        clx clxVar = new clx(i2, false);
        JSONObject jSONObject = new JSONObject();
        clxVar.f13101c = jSONObject;
        clxVar.f13103e = context;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo;
            if (applicationInfo != null && (i = applicationInfo.labelRes) > 0) {
                jSONObject.put("display_name", context.getString(i));
            }
            jSONObject.put(PluginConstants.KEY_SDK_VERSION, 137);
            jSONObject.put("sdk_version_name", "0.0.1-alpha.17-cloud");
            jSONObject.put("os", "Android");
            String str = Build.VERSION.RELEASE;
            if (!str.contains(".")) {
                str = str.concat(".0");
            }
            jSONObject.put("os_version", str);
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("device_model", Build.MODEL);
            jSONObject.put("device_brand", Build.BRAND);
            jSONObject.put("device_manufacturer", Build.MANUFACTURER);
            jSONObject.put("cpu_abi", i());
        } catch (Exception unused) {
        }
        try {
            DisplayMetrics displayMetrics = ((Context) clxVar.f13103e).getResources().getDisplayMetrics();
            int i3 = displayMetrics.densityDpi;
            String str2 = i3 != 120 ? i3 != 240 ? i3 != 320 ? "mdpi" : "xhdpi" : "hdpi" : "ldpi";
            jSONObject.put("density_dpi", i3);
            jSONObject.put("display_density", str2);
            jSONObject.put("resolution", displayMetrics.heightPixels + "x" + displayMetrics.widthPixels);
        } catch (Exception unused2) {
        }
        try {
            String language = ((Context) clxVar.f13103e).getResources().getConfiguration().locale.getLanguage();
            if (!TextUtils.isEmpty(language)) {
                jSONObject.put(MediaFormat.KEY_LANGUAGE, language);
            }
            String country = Locale.getDefault().getCountry();
            if (!TextUtils.isEmpty(country)) {
                jSONObject.put("region", country);
            }
            int rawOffset = TimeZone.getDefault().getRawOffset() / 3600000;
            if (rawOffset < -12) {
                rawOffset = -12;
            }
            if (rawOffset > 12) {
                rawOffset = 12;
            }
            jSONObject.put("timezone", rawOffset);
        } catch (Exception unused3) {
        }
        StringBuilder sb = new StringBuilder();
        try {
            if (fso.ay()) {
                sb.append("MIUI-");
            } else {
                if (!Build.DISPLAY.contains("Flyme") && !Build.USER.equals("flyme")) {
                    i2 = 0;
                }
                String l = fso.l();
                if (fso.w(l)) {
                    sb.append("EMUI-");
                }
                if (!TextUtils.isEmpty(l)) {
                    sb.append(l);
                    sb.append("-");
                }
            }
            sb.append(Build.VERSION.INCREMENTAL);
            if (sb.length() > 0) {
                jSONObject.put("rom", sb.toString());
            }
            jSONObject.put("rom_version", acr.bl());
        } catch (Throwable unused4) {
        }
        try {
            jSONObject.put("access", kj.r((Context) clxVar.f13103e));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) ((Context) clxVar.f13103e).getSystemService("phone");
            if (telephonyManager != null) {
                String networkOperatorName = telephonyManager.getNetworkOperatorName();
                if (!TextUtils.isEmpty(networkOperatorName)) {
                    jSONObject.put("carrier", networkOperatorName);
                }
                String networkOperator = telephonyManager.getNetworkOperator();
                if (!TextUtils.isEmpty(networkOperator)) {
                    jSONObject.put("mcc_mnc", networkOperator);
                }
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        dzh dzhVar = eca.f15280e;
        if (dzhVar != null) {
            if (((Map) dzhVar.f15122g) == null) {
                dzhVar.f15122g = ((cmc) dzhVar.f15121f).mn();
            }
            Map map = (Map) dzhVar.f15122g;
            if (map != null) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    for (String str3 : map.keySet()) {
                        if (!TextUtils.isEmpty(str3) && (obj = map.get(str3)) != null) {
                            jSONObject2.put(str3, obj);
                        }
                    }
                    jSONObject.put(MediationConstant.KEY_USE_POLICY_OBJ_CUSTOM, jSONObject2);
                } catch (Exception unused5) {
                    Context context2 = eca.f15278c;
                }
            }
        }
        return clxVar;
    }

    public static clx h(Context context) {
        clx clxVar;
        synchronized (clx.class) {
            try {
                if (f13099a == null) {
                    f13099a = eg.p(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new clx(context) : new clx(0);
                }
                clxVar = f13099a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return clxVar;
    }

    public static String i() {
        try {
            StringBuilder sb = new StringBuilder();
            if (Build.SUPPORTED_ABIS.length > 0) {
                int i = 0;
                while (true) {
                    String[] strArr = Build.SUPPORTED_ABIS;
                    if (i >= strArr.length) {
                        break;
                    }
                    sb.append(strArr[i]);
                    if (i != strArr.length - 1) {
                        sb.append(", ");
                    }
                    i++;
                }
            } else {
                sb = new StringBuilder(Build.CPU_ABI);
            }
            return TextUtils.isEmpty(sb.toString()) ? MediationConfigUserInfoForSegment.GENDER_UNKNOWN : sb.toString();
        } catch (Exception unused) {
            Context context = eca.f15278c;
            return MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
        }
    }

    public static synchronized void j() {
        Context context;
        synchronized (clx.class) {
            try {
                clx clxVar = f13099a;
                if (clxVar != null && (context = (Context) clxVar.f13103e) != null && ((bua) clxVar.f13101c) != null) {
                    context.getContentResolver().unregisterContentObserver((bua) f13099a.f13101c);
                }
                f13099a = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void v(Throwable th) {
    }

    @Override // g.gon
    public void ac(ezz ezzVar) {
        switch (this.f13102d) {
            case 16:
                int i = ezzVar.f16447d;
                zzbpm zzbpmVar = (zzbpm) this.f13103e;
                try {
                    String canonicalName = ((zzbqh) this.f13101c).f4926c.getClass().getCanonicalName();
                    String str = ezzVar.f16448e;
                    agd.c(canonicalName + "failed to load mediation ad: ErrorCode = " + i + ". ErrorMessage = " + str + ". ErrorDomain = " + ezzVar.f16449f);
                    zzbpmVar.zzh(ezzVar.h());
                    zzbpmVar.zzi(i, str);
                    zzbpmVar.zzg(i);
                    break;
                } catch (RemoteException e2) {
                    agd.f("", e2);
                }
            default:
                try {
                    ((zzbqz) this.f13103e).zzf(ezzVar.h());
                    break;
                } catch (RemoteException e3) {
                    agd.f("", e3);
                    return;
                }
        }
    }

    @Override // g.fcc
    public Object get() {
        int i = 13;
        cuf cufVar = new cuf(i);
        fbc fbcVar = new fbc(i);
        Object obj = ((fcc) this.f13103e).get();
        fcc fccVar = (fcc) this.f13101c;
        return new cga(cufVar, fbcVar, gnn.f18458a, (hdu) obj, fccVar);
    }

    @Override // g.ghx
    public anp k(View view, anp anpVar) {
        ezn eznVar = (ezn) this.f13101c;
        anp t = goi.t(view, anpVar);
        if (t.f10526b.c()) {
            return t;
        }
        Rect rect = (Rect) this.f13103e;
        rect.left = t.h();
        rect.top = t.e();
        rect.right = t.i();
        rect.bottom = t.f();
        int childCount = eznVar.getChildCount();
        for (int i = 0; i < childCount; i++) {
            anp v = goi.v(eznVar.getChildAt(i), t);
            rect.left = Math.min(v.h(), rect.left);
            rect.top = Math.min(v.e(), rect.top);
            rect.right = Math.min(v.i(), rect.right);
            rect.bottom = Math.min(v.f(), rect.bottom);
        }
        return t.g(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void l(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (((Map) this.f13103e)) {
            hashMap = new HashMap((Map) this.f13103e);
        }
        synchronized (((Map) this.f13101c)) {
            hashMap2 = new HashMap((Map) this.f13101c);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                entry.getKey().getClass();
                throw new ClassCastException();
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((eeo) entry2.getKey()).b(new dmw(status));
            }
        }
    }

    @Override // g.dbn
    public boolean m(gtg gtgVar, Menu menu) {
        ViewGroup viewGroup = ((dre) this.f13101c).bq;
        WeakHashMap weakHashMap = goi.f18490c;
        dzc.c(viewGroup);
        return ((dbn) this.f13103e).m(gtgVar, menu);
    }

    public void n(Map map) {
        JSONObject jSONObject = (JSONObject) this.f13101c;
        try {
            for (Map.Entry entry : map.entrySet()) {
                if (!jSONObject.has((String) entry.getKey())) {
                    jSONObject.put((String) entry.getKey(), entry.getValue());
                }
            }
            String[] strArr = f13100b;
            for (int i = 0; i < 4; i++) {
                String str = strArr[i];
                if (map.containsKey(str)) {
                    try {
                        jSONObject.put(str, Integer.parseInt((String) map.get(str)));
                    } catch (Exception unused) {
                        jSONObject.put(str, map.get(str));
                    }
                }
            }
            if (map.containsKey("version_code") && !map.containsKey("manifest_version_code")) {
                jSONObject.put("manifest_version_code", Integer.parseInt((String) map.get("version_code")));
            }
            if (map.containsKey("iid")) {
                jSONObject.put("udid", map.get("iid"));
                jSONObject.remove("iid");
            }
        } catch (Throwable unused2) {
        }
    }

    @Override // g.dbf
    public int o(String str, int i, Deque deque) {
        return ((ckz) this.f13103e).b(str, i, deque, (dbf) this.f13101c);
    }

    @Override // g.lb
    public void onConnectionFailed(nk nkVar) {
        synchronized (((zzbbh) this.f13101c).f4685c) {
            ((cok) this.f13103e).zzd(new RuntimeException("Connection failed."));
        }
    }

    @Override // g.dbn
    public boolean p(gtg gtgVar, Menu menu) {
        return ((dbn) this.f13103e).p(gtgVar, menu);
    }

    @Override // g.dbn
    public boolean q(gtg gtgVar, MenuItem menuItem) {
        return ((dbn) this.f13103e).q(gtgVar, menuItem);
    }

    public void r() {
        try {
            ((FileLock) this.f13101c).release();
            ((FileChannel) this.f13103e).close();
        } catch (IOException e2) {
            Log.e("CrossProcessLock", "encountered error while releasing, ignoring", e2);
        }
    }

    public void s(String str) {
        JSONObject jSONObject = (JSONObject) this.f13101c;
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            jSONObject.put("user_id", str);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0045, code lost:
    
        if (r5.isUserRunning(android.os.Process.myUserHandle()) == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0047, code lost:
    
        r6 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String t(String str) {
        Object c2;
        int i;
        boolean z;
        boolean isUserUnlocked;
        Object systemService;
        Context context = (Context) this.f13103e;
        if (context != null) {
            UserManager userManager = ddd.f14008a;
            if (Build.VERSION.SDK_INT >= 24 && !ddd.f14009b) {
                synchronized (ddd.class) {
                    try {
                        if (!ddd.f14009b) {
                            i = 1;
                            while (true) {
                                z = false;
                                if (i <= 2) {
                                    if (ddd.f14008a == null) {
                                        systemService = context.getSystemService((Class<Object>) UserManager.class);
                                        ddd.f14008a = (UserManager) systemService;
                                    }
                                    UserManager userManager2 = ddd.f14008a;
                                    if (userManager2 != null) {
                                        isUserUnlocked = userManager2.isUserUnlocked();
                                        if (isUserUnlocked) {
                                            break;
                                        }
                                    } else {
                                        z = true;
                                        break;
                                    }
                                } else {
                                    break;
                                }
                            }
                            if (z) {
                                ddd.f14008a = null;
                            }
                            if (z) {
                                ddd.f14009b = true;
                            }
                            if (!z) {
                            }
                        }
                    } catch (NullPointerException unused) {
                        ddd.f14008a = null;
                        i++;
                    } finally {
                    }
                }
            }
            try {
                try {
                    ffm ffmVar = new ffm(this, str);
                    try {
                        c2 = ffmVar.c();
                    } catch (SecurityException unused2) {
                        long clearCallingIdentity = Binder.clearCallingIdentity();
                        try {
                            c2 = ffmVar.c();
                        } finally {
                            Binder.restoreCallingIdentity(clearCallingIdentity);
                        }
                    }
                    return (String) c2;
                } catch (SecurityException e2) {
                    e = e2;
                    Log.e("GservicesLoader", "Unable to read GServices for: ".concat(String.valueOf(str)), e);
                    return null;
                }
            } catch (IllegalStateException e3) {
                e = e3;
                Log.e("GservicesLoader", "Unable to read GServices for: ".concat(String.valueOf(str)), e);
                return null;
            } catch (NullPointerException e4) {
                e = e4;
                Log.e("GservicesLoader", "Unable to read GServices for: ".concat(String.valueOf(str)), e);
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [g.yv, java.lang.Object] */
    @Override // g.dbn
    public void u(gtg gtgVar) {
        ((dbn) this.f13103e).u(gtgVar);
        dre dreVar = (dre) this.f13101c;
        if (dreVar.bn != null) {
            dreVar.au.getDecorView().removeCallbacks(dreVar.bh);
        }
        if (dreVar.am != null) {
            elx elxVar = dreVar.al;
            if (elxVar != null) {
                elxVar.e();
            }
            elx o = goi.o(dreVar.am);
            o.d(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            dreVar.al = o;
            o.b(new gof(2, this));
        }
        dreVar.bm.onSupportActionModeFinished(dreVar.ax);
        dreVar.ax = null;
        ViewGroup viewGroup = dreVar.bq;
        WeakHashMap weakHashMap = goi.f18490c;
        dzc.c(viewGroup);
        dreVar.cw();
    }

    @Override // com.google.android.gms.internal.ads.zzcaq
    /* renamed from: zza */
    public void mo3zza() {
        agd.e("callJs > getEngine: Promise rejected");
        ((zzcao) this.f13103e).zzd(new zzbnx("Unable to obtain a JavascriptEngine."));
        ((zzbno) this.f13101c).zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzann
    public void zza(zzed zzedVar) {
        zzanw zzanwVar = (zzanw) this.f13101c;
        SparseArray sparseArray = zzanwVar.p;
        zzec zzecVar = (zzec) this.f13103e;
        if (zzedVar.zzm() == 0 && (zzedVar.zzm() & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0) {
            zzedVar.zzM(6);
            int zzb = zzedVar.zzb() / 4;
            for (int i = 0; i < zzb; i++) {
                zzedVar.zzG(zzecVar, 4);
                int zzd = zzecVar.zzd(16);
                zzecVar.zzn(3);
                if (zzd == 0) {
                    zzecVar.zzn(13);
                } else {
                    int zzd2 = zzecVar.zzd(13);
                    if (sparseArray.get(zzd2) == null) {
                        sparseArray.put(zzd2, new zzano(new vg(zzanwVar, zzd2)));
                    }
                }
            }
            sparseArray.remove(0);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        switch (this.f13102d) {
            case 18:
                ((zzgee) this.f13103e).zza(th);
                zzcaj.zze.execute(new zzcrz((zzcsf) this.f13101c));
                return;
            case 19:
                return;
            default:
                synchronized (((zzfhy) this.f13101c)) {
                    ((zzfhy) this.f13101c).f7899a = null;
                }
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzann
    public void zzb(zzek zzekVar, zzacu zzacuVar, zzaoa zzaoaVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public /* bridge */ /* synthetic */ void zzb(Object obj) {
        switch (this.f13102d) {
            case 18:
                List<dcy> list = ((zzcry) obj).zza;
                final zzgee zzgeeVar = (zzgee) this.f13103e;
                final zzcsf zzcsfVar = (zzcsf) this.f13101c;
                Executor executor = zzcsfVar.f5597b;
                if (list == null || list.isEmpty()) {
                    executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcsa
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzgee.this.zza(new zzdwn(3));
                        }
                    });
                    return;
                }
                dcy zzh = zzgei.zzh(null);
                for (final dcy dcyVar : list) {
                    zzh = zzgei.zzn(zzgei.zzf(zzh, Throwable.class, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzcsb
                        @Override // com.google.android.gms.internal.ads.zzgdp
                        public final dcy zza(Object obj2) {
                            zzgee.this.zza((Throwable) obj2);
                            return zzgei.zzh(null);
                        }
                    }, executor), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzcsc
                        @Override // com.google.android.gms.internal.ads.zzgdp
                        public final dcy zza(Object obj2) {
                            zzcsf zzcsfVar2 = zzcsf.this;
                            zzgee zzgeeVar2 = zzgeeVar;
                            dcy dcyVar2 = dcyVar;
                            zzcrq zzcrqVar = (zzcrq) obj2;
                            zzcsfVar2.getClass();
                            if (zzcrqVar != null) {
                                zzgeeVar2.zzb(zzcrqVar);
                            }
                            return zzgei.zzo(dcyVar2, ((Long) zzbfa.zza.zze()).longValue(), TimeUnit.MILLISECONDS, zzcsfVar2.f5598c);
                        }
                    }, executor);
                }
                zzgei.zzr(zzh, new fdy(26, zzcsfVar, zzgeeVar, false), executor);
                return;
            case 19:
                ((zzcfk) obj).zzaz((String) this.f13103e, (zzbjr) this.f13101c);
                return;
            default:
                synchronized (((zzfhy) this.f13101c)) {
                    try {
                        zzfhy zzfhyVar = (zzfhy) this.f13101c;
                        zzfhyVar.f7899a = null;
                        zzfhyVar.f7903e.addFirst((zzfhx) this.f13103e);
                        zzfhy zzfhyVar2 = (zzfhy) this.f13101c;
                        if (zzfhyVar2.f7900b == 1) {
                            zzfhyVar2.f();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }
}
