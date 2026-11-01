package g;

import a.u.e.TUE;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.os.Environment;
import android.os.Looper;
import android.os.StatFs;
import android.os.SystemClock;
import android.text.Editable;
import android.text.Selection;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzacs;
import com.google.android.gms.internal.ads.zzadp;
import com.google.android.gms.internal.ads.zzadq;
import com.google.android.gms.internal.ads.zzcrq;
import com.google.android.gms.internal.ads.zzfsj;
import com.google.android.gms.internal.ads.zzgee;
import com.google.android.gms.internal.ads.zzhac;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.tencent.bugly.crashreport.CrashReport;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.TimeZone;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class fbc implements hdb, eya, bsx, bol, dle, cqi, gmo, cld, arm, ano, zzgee, gkj, zzfsj, ere, gpw {
    public final /* synthetic */ int m;

    public /* synthetic */ fbc(int i) {
        this.m = i;
    }

    public fbc(JSONObject jSONObject) {
        this.m = 9;
        jSONObject.optString("billingPeriod");
        jSONObject.optString("priceCurrencyCode");
        jSONObject.optString("formattedPrice");
        jSONObject.optLong("priceAmountMicros");
        jSONObject.optInt("recurrenceMode");
        jSONObject.optInt("billingCycleCount");
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0045, code lost:
    
        if (java.lang.Character.isHighSurrogate(r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0082, code lost:
    
        if (java.lang.Character.isLowSurrogate(r5) != false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0075, code lost:
    
        if (r11 != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00a2, code lost:
    
        if (r10 != (-1)) goto L70;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean n(dql dqlVar, Editable editable, int i, int i2, boolean z) {
        int min;
        if (editable != null && i >= 0 && i2 >= 0) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd) {
                if (z) {
                    int max = Math.max(i, 0);
                    int length = editable.length();
                    if (selectionStart >= 0 && length >= selectionStart && max >= 0) {
                        loop0: while (true) {
                            boolean z2 = false;
                            while (true) {
                                if (max == 0) {
                                    break loop0;
                                }
                                selectionStart--;
                                if (selectionStart >= 0) {
                                    char charAt = editable.charAt(selectionStart);
                                    if (z2) {
                                        break;
                                    }
                                    if (!Character.isSurrogate(charAt)) {
                                        max--;
                                    } else {
                                        if (Character.isHighSurrogate(charAt)) {
                                            break loop0;
                                        }
                                        z2 = true;
                                    }
                                } else if (!z2) {
                                    selectionStart = 0;
                                }
                            }
                            max--;
                        }
                    }
                    selectionStart = -1;
                    int max2 = Math.max(i2, 0);
                    min = editable.length();
                    if (selectionEnd >= 0 && min >= selectionEnd && max2 >= 0) {
                        loop2: while (true) {
                            boolean z3 = false;
                            while (true) {
                                if (max2 == 0) {
                                    min = selectionEnd;
                                    break loop2;
                                }
                                if (selectionEnd < min) {
                                    char charAt2 = editable.charAt(selectionEnd);
                                    if (z3) {
                                        break;
                                    }
                                    if (!Character.isSurrogate(charAt2)) {
                                        max2--;
                                        selectionEnd++;
                                    } else {
                                        if (Character.isLowSurrogate(charAt2)) {
                                            break loop2;
                                        }
                                        selectionEnd++;
                                        z3 = true;
                                    }
                                }
                            }
                            max2--;
                            selectionEnd++;
                        }
                    }
                    min = -1;
                    if (selectionStart != -1) {
                    }
                } else {
                    selectionStart = Math.max(selectionStart - i, 0);
                    min = Math.min(selectionEnd + i2, editable.length());
                }
                agc[] agcVarArr = (agc[]) editable.getSpans(selectionStart, min, agc.class);
                if (agcVarArr != null && agcVarArr.length > 0) {
                    for (agc agcVar : agcVarArr) {
                        int spanStart = editable.getSpanStart(null);
                        int spanEnd = editable.getSpanEnd(null);
                        selectionStart = Math.min(spanStart, selectionStart);
                        min = Math.max(spanEnd, min);
                    }
                    int max3 = Math.max(selectionStart, 0);
                    int min2 = Math.min(min, editable.length());
                    dqlVar.beginBatchEdit();
                    editable.delete(max3, min2);
                    dqlVar.endBatchEdit();
                    return true;
                }
            }
        }
        return false;
    }

    public static final boolean o() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static final zzhac q(Object obj, Object obj2) {
        zzhac zzhacVar = (zzhac) obj;
        zzhac zzhacVar2 = (zzhac) obj2;
        if (!zzhacVar2.isEmpty()) {
            if (!zzhacVar.zze()) {
                zzhacVar = zzhacVar.zzb();
            }
            zzhacVar.zzd(zzhacVar2);
        }
        return zzhacVar;
    }

    public static void r(ggu gguVar, boolean z) {
        gqc gqcVar = gguVar.f18131g;
        fce fceVar = gguVar.i;
        int i = gqcVar.f18566ab;
        int i2 = fceVar.f16553ab;
        gqcVar.at(3 - (i2 % 4));
        int af = gqcVar.af() + i2;
        int af2 = gqcVar.af();
        int af3 = (gqcVar.af() - af2) + 1;
        if (z) {
            gqcVar.at(af3 * 4);
        } else {
            gguVar.n(0);
            int[] iArr = new int[af3];
            int[] iArr2 = new int[af3];
            for (int i3 = 0; i3 < af3; i3++) {
                int af4 = gqcVar.af() + i2;
                iArr[i3] = af2 + i3;
                iArr2[i3] = af4;
                gguVar.q(af4);
            }
            fceVar.s = af;
            gguVar.q(af);
            fceVar.q = new ddo(af3, iArr, iArr2);
        }
        fceVar.v = gqcVar.f18566ab - i;
    }

    public static boolean s(Context context, Intent intent) {
        ComponentName component;
        if (intent != null && (component = intent.getComponent()) != null) {
            String className = component.getClassName();
            if (!TextUtils.isEmpty(className) && context.getPackageName().equals(component.getPackageName())) {
                try {
                    if (eha.class.isAssignableFrom(Class.forName(className))) {
                        return acr.bu(context);
                    }
                } catch (Exception e2) {
                    CrashReport.postCatchedException(new TUE(e2));
                }
            }
        }
        return true;
    }

    public static final ou t(Object obj, Object obj2) {
        ou ouVar = (ou) obj;
        ou ouVar2 = (ou) obj2;
        if (!ouVar2.isEmpty()) {
            if (!ouVar.d()) {
                ouVar = ouVar.e();
            }
            ouVar.f();
            if (!ouVar2.isEmpty()) {
                ouVar.putAll(ouVar2);
            }
        }
        return ouVar;
    }

    @Override // g.dle
    public void _bt(ggu gguVar) {
        r(gguVar, false);
    }

    @Override // g.gmo
    public float _bu() {
        return 1.0f;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0187 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x014f  */
    @Override // g.hdb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean _bz(Context context, ert ertVar) {
        String str;
        String o;
        long[] jArr;
        long blockSize;
        long availableBlocks;
        long blockCount;
        DisplayMetrics displayMetrics;
        switch (this.m) {
            case 0:
                fml.d(context);
                HashMap hashMap = fnp.f17095b;
                if (!"meizu".equalsIgnoreCase(Build.MANUFACTURER)) {
                    if (!fgj.e().f(context, new Intent("android.settings.LOCALE_SETTINGS"))) {
                        Intent intent = new Intent("android.intent.action.MAIN");
                        intent.setClassName("com.android.settings", "com.android.settings.LanguageSettings").setFlags(C.ENCODING_PCM_A_LAW);
                        fgj.e().f(context, intent);
                        break;
                    }
                } else {
                    Intent intent2 = new Intent("android.intent.action.MAIN");
                    intent2.setClassName("com.android.settings", "com.android.settings.LanguageSettings").setFlags(C.ENCODING_PCM_A_LAW);
                    fgj.e().f(context, intent2);
                    break;
                }
                break;
            case 4:
                Activity activity = (Activity) context;
                ArrayList arrayList = new ArrayList();
                arrayList.add(fnp.e(activity));
                String r = fnp.r(activity);
                if (!TextUtils.isEmpty(r)) {
                    String str2 = Build.MODEL;
                    if (!r.equals(str2)) {
                        arrayList.add(activity.getString(R.string.device_model, r + " (" + str2 + ")"));
                        arrayList.add(activity.getString(R.string.device_manufacturer, Build.MANUFACTURER));
                        arrayList.add(activity.getString(R.string.device_board, Build.BOARD));
                        arrayList.add(activity.getString(R.string.device_device, Build.DEVICE));
                        arrayList.add(activity.getString(R.string.device_product, Build.PRODUCT));
                        arrayList.add(activity.getString(R.string.cpu_number, Integer.toString(Runtime.getRuntime().availableProcessors())));
                        str = "32-Bit";
                        if (dyd.bp(21) && TextUtils.join(", ", Build.SUPPORTED_ABIS).contains("64")) {
                            str = "64-Bit";
                        }
                        arrayList.add(activity.getString(R.string.cpu_bits, str));
                        o = fnp.o();
                        if (o != null) {
                            arrayList.add(activity.getString(R.string.cpu_hardware, o));
                        }
                        ActivityManager activityManager = (ActivityManager) activity.getSystemService(TTDownloadField.TT_ACTIVITY);
                        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                        activityManager.getMemoryInfo(memoryInfo);
                        long[] jArr2 = !dyd.bp(16) ? new long[]{memoryInfo.totalMem, memoryInfo.availMem} : new long[]{-1, memoryInfo.availMem};
                        arrayList.add(activity.getString(R.string.internal_memory, fnp.k(jArr2[0]), fnp.k(jArr2[1])));
                        if (Environment.getExternalStorageState().equals("mounted")) {
                            jArr = new long[]{-1, -1};
                        } else {
                            try {
                                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                                if (dyd.bp(18)) {
                                    blockSize = statFs.getBlockSizeLong();
                                    availableBlocks = statFs.getAvailableBlocksLong();
                                    blockCount = statFs.getBlockCountLong();
                                } else {
                                    blockSize = statFs.getBlockSize();
                                    availableBlocks = statFs.getAvailableBlocks();
                                    blockCount = statFs.getBlockCount();
                                }
                                jArr = new long[]{blockCount * blockSize, availableBlocks * blockSize};
                            } catch (Exception unused) {
                                jArr = new long[]{-1, -1};
                            }
                        }
                        arrayList.add(activity.getString(R.string.external_storage, fnp.k(jArr[0]), fnp.k(jArr[1])));
                        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
                        Point point = new Point();
                        defaultDisplay.getRealSize(point);
                        displayMetrics = activity.getResources().getDisplayMetrics();
                        StringBuilder sb = new StringBuilder();
                        sb.append(point.x);
                        sb.append(" * ");
                        String x = awf.x(sb, point.y, " px");
                        if (displayMetrics != null) {
                            x = awf.x(tn.l(x, " / "), displayMetrics.densityDpi, " dp");
                            double ap = fso.ap(displayMetrics, point);
                            erl.ax(point.x / displayMetrics.xdpi, 1);
                            erl.ax(point.y / displayMetrics.ydpi, 1);
                            erl.ax(ap, 1);
                        }
                        arrayList.add(activity.getString(R.string.screen_resolution, x));
                        arrayList.add(activity.getString(R.string.screen_size, Double.toString(erl.ax(fso.ap(displayMetrics, point), 1)), erl.ax(point.x / displayMetrics.xdpi, 1) + "\" * " + erl.ax(point.y / displayMetrics.ydpi, 1) + "\""));
                        baf.ag(activity, ertVar, TextUtils.join("\r\n", arrayList));
                        break;
                    }
                }
                arrayList.add(activity.getString(R.string.device_model, Build.MODEL));
                arrayList.add(activity.getString(R.string.device_manufacturer, Build.MANUFACTURER));
                arrayList.add(activity.getString(R.string.device_board, Build.BOARD));
                arrayList.add(activity.getString(R.string.device_device, Build.DEVICE));
                arrayList.add(activity.getString(R.string.device_product, Build.PRODUCT));
                arrayList.add(activity.getString(R.string.cpu_number, Integer.toString(Runtime.getRuntime().availableProcessors())));
                str = "32-Bit";
                if (dyd.bp(21)) {
                    str = "64-Bit";
                }
                arrayList.add(activity.getString(R.string.cpu_bits, str));
                o = fnp.o();
                if (o != null) {
                }
                ActivityManager activityManager2 = (ActivityManager) activity.getSystemService(TTDownloadField.TT_ACTIVITY);
                ActivityManager.MemoryInfo memoryInfo2 = new ActivityManager.MemoryInfo();
                activityManager2.getMemoryInfo(memoryInfo2);
                if (!dyd.bp(16)) {
                }
                arrayList.add(activity.getString(R.string.internal_memory, fnp.k(jArr2[0]), fnp.k(jArr2[1])));
                if (Environment.getExternalStorageState().equals("mounted")) {
                }
                arrayList.add(activity.getString(R.string.external_storage, fnp.k(jArr[0]), fnp.k(jArr[1])));
                Display defaultDisplay2 = activity.getWindowManager().getDefaultDisplay();
                Point point2 = new Point();
                defaultDisplay2.getRealSize(point2);
                displayMetrics = activity.getResources().getDisplayMetrics();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(point2.x);
                sb2.append(" * ");
                String x2 = awf.x(sb2, point2.y, " px");
                if (displayMetrics != null) {
                }
                arrayList.add(activity.getString(R.string.screen_resolution, x2));
                arrayList.add(activity.getString(R.string.screen_size, Double.toString(erl.ax(fso.ap(displayMetrics, point2), 1)), erl.ax(point2.x / displayMetrics.xdpi, 1) + "\" * " + erl.ax(point2.y / displayMetrics.ydpi, 1) + "\""));
                baf.ag(activity, ertVar, TextUtils.join("\r\n", arrayList));
            default:
                fml.d(context);
                if (fnp.m()) {
                    try {
                        Intent intent3 = new Intent("miui.intent.action.APP_MANAGER");
                        intent3.setClassName("com.miui.securitycenter", "com.miui.appmanager.AppManagerMainActivity");
                        intent3.addFlags(C.ENCODING_PCM_MU_LAW);
                        context.startActivity(intent3);
                        break;
                    } catch (Exception e2) {
                        erl.ac(e2);
                    }
                }
                Intent intent4 = new Intent("android.settings.APPLICATION_SETTINGS");
                intent4.addFlags(C.ENCODING_PCM_MU_LAW);
                fgj.e().f(context, intent4);
                break;
        }
        return true;
    }

    @Override // g.dle
    public void _ct(ggu gguVar) {
        r(gguVar, true);
    }

    @Override // g.eya
    public Object ak(Object obj) {
        dpd dpdVar = bdx.f11355a;
        TimeZone timeZone = ex.f16310d;
        cxa cxaVar = new cxa(ex.f16309c, new gar[0]);
        try {
            new cnu(cxaVar, cbq.f12606a).r(obj);
            try {
                byte[] bytes = new String(cxaVar.l, 0, cxaVar.m).getBytes("UTF-8");
                cxaVar.close();
                bff.p(bytes, "content");
                int length = bytes.length;
                erq.ac(bytes.length, 0, length);
                return new bab(dpdVar, length, bytes);
            } catch (UnsupportedEncodingException e2) {
                throw new bfj("toBytes error", (Throwable) e2);
            }
        } catch (Throwable th) {
            cxaVar.close();
            throw th;
        }
    }

    @Override // g.arm
    public long c(zzacs zzacsVar) {
        return -1L;
    }

    @Override // g.gmo
    public flj d() {
        throw new IllegalStateException("not implemented");
    }

    @Override // g.gmo
    public boolean dq() {
        return true;
    }

    @Override // g.gmo
    public boolean dq(float f2) {
        return false;
    }

    public String f(Method method, int i) {
        return "parameter #" + (i + 1);
    }

    @Override // g.gmo
    public boolean g(float f2) {
        throw new IllegalStateException("not implemented");
    }

    @Override // g.fcc
    public Object get() {
        cuf cufVar = new cuf(13);
        HashMap hashMap = new HashMap();
        cq cqVar = cq.DEFAULT;
        Set set = Collections.EMPTY_SET;
        if (set == null) {
            throw new NullPointerException("Null flags");
        }
        hashMap.put(cqVar, new emw(30000L, AdBaseConstants.DEFAULT_DELAY_TIMESTAMP, set));
        cq cqVar2 = cq.HIGHEST;
        if (set == null) {
            throw new NullPointerException("Null flags");
        }
        hashMap.put(cqVar2, new emw(1000L, AdBaseConstants.DEFAULT_DELAY_TIMESTAMP, set));
        cq cqVar3 = cq.VERY_LOW;
        if (set == null) {
            throw new NullPointerException("Null flags");
        }
        Set unmodifiableSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(ftx.DEVICE_IDLE)));
        if (unmodifiableSet == null) {
            throw new NullPointerException("Null flags");
        }
        hashMap.put(cqVar3, new emw(AdBaseConstants.DEFAULT_DELAY_TIMESTAMP, AdBaseConstants.DEFAULT_DELAY_TIMESTAMP, unmodifiableSet));
        if (hashMap.keySet().size() < cq.values().length) {
            throw new IllegalStateException("Not all priorities have been configured");
        }
        new HashMap();
        return new hau(cufVar, hashMap);
    }

    @Override // g.bsx
    public boolean h() {
        return false;
    }

    @Override // g.bsx
    public boolean i(auj aujVar) {
        return aujVar == null || (aujVar.f10866b & 1) != 0;
    }

    public Object j(Method method, Class cls, Object obj, Object[] objArr) {
        throw new AssertionError();
    }

    public boolean k(Method method) {
        return false;
    }

    @Override // g.cqi
    public long l() {
        return SystemClock.elapsedRealtime();
    }

    @Override // g.gmo
    public float ox() {
        return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    @Override // g.cld
    public Object p(JSONObject jSONObject, Object[] objArr) {
        if (objArr == null || objArr.length <= 0) {
            return Boolean.FALSE;
        }
        try {
            Double.parseDouble(String.valueOf(objArr[0]));
            return Boolean.TRUE;
        } catch (NumberFormatException unused) {
            return Boolean.FALSE;
        }
    }

    @Override // g.gpw
    public boolean u(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return "secure-playback".equals(str) && "video/avc".equals(str2);
    }

    @Override // g.ere
    public br v(Context context, String str, hc hcVar) {
        int a2;
        br brVar = new br();
        int b2 = hcVar.b(context, str);
        brVar.f12061a = b2;
        int i = 1;
        int i2 = 0;
        if (b2 != 0) {
            a2 = hcVar.a(context, str, false);
            brVar.f12062b = a2;
        } else {
            a2 = hcVar.a(context, str, true);
            brVar.f12062b = a2;
        }
        int i3 = brVar.f12061a;
        if (i3 != 0) {
            i2 = i3;
        } else if (a2 == 0) {
            i = 0;
            brVar.f12063c = i;
            return brVar;
        }
        if (i2 >= a2) {
            i = -1;
        }
        brVar.f12063c = i;
        return brVar;
    }

    @Override // g.gpw
    public boolean w(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return false;
    }

    @Override // g.gpw
    public int zza() {
        return MediaCodecList.getCodecCount();
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
    }

    @Override // g.gpw
    public MediaCodecInfo zzb(int i) {
        return MediaCodecList.getCodecInfoAt(i);
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public /* synthetic */ void zzb(Object obj) {
        ((zzcrq) obj).zzr();
    }

    @Override // g.arm
    public zzadq zze() {
        return new zzadp(-9223372036854775807L, 0L);
    }

    @Override // g.gpw
    /* renamed from: zze, reason: collision with other method in class */
    public boolean mo11zze() {
        return false;
    }

    @Override // g.arm
    public void zzg(long j) {
    }
}
