package g;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.Parcel;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzabi;
import com.google.android.gms.internal.ads.zzabl;
import com.google.android.gms.internal.ads.zzad;
import com.google.android.gms.internal.ads.zzakg;
import com.google.android.gms.internal.ads.zzaki;
import com.google.android.gms.internal.ads.zzci;
import com.google.android.gms.internal.ads.zzfsz;
import com.google.android.gms.internal.ads.zzgne;
import j$.util.Comparator;
import j$.util.List;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class gpu implements hdb, dym, ffg, bxi, dqr, efi, aqs, zzabi, zzakg, ano, zzfsz, zzgne, asz {

    /* renamed from: f, reason: collision with root package name */
    public static gpu f18555f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f18556g;

    public /* synthetic */ gpu(int i) {
        this.f18556g = i;
    }

    public static String h(String str, int i, int i2, int i3) {
        int i4;
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        boolean z = (i3 & 4) == 0;
        bff.p(str, "<this>");
        int i5 = i;
        while (i5 < i2) {
            char charAt = str.charAt(i5);
            if (charAt == '%' || (charAt == '+' && z)) {
                clq clqVar = new clq();
                clqVar.y(i, i5, str);
                while (i5 < i2) {
                    int codePointAt = str.codePointAt(i5);
                    if (codePointAt != 37 || (i4 = i5 + 2) >= i2) {
                        if (codePointAt == 43 && z) {
                            clqVar.al(32);
                            i5++;
                        }
                        clqVar.am(codePointAt);
                        i5 += Character.charCount(codePointAt);
                    } else {
                        int aa = erq.aa(str.charAt(i5 + 1));
                        int aa2 = erq.aa(str.charAt(i4));
                        if (aa != -1 && aa2 != -1) {
                            clqVar.al((aa << 4) + aa2);
                            i5 = Character.charCount(codePointAt) + i4;
                        }
                        clqVar.am(codePointAt);
                        i5 += Character.charCount(codePointAt);
                    }
                }
                return clqVar.x();
            }
            i5++;
        }
        String substring = str.substring(i, i2);
        bff.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static void i(StringBuilder sb, List list) {
        bff.p(list, "<this>");
        fqr ap = afo.ap(afo.ah(0, list.size()), 2);
        int i = ap.f17256b;
        int i2 = ap.f17257c;
        int i3 = ap.f17255a;
        if ((i3 <= 0 || i > i2) && (i3 >= 0 || i2 > i)) {
            return;
        }
        while (true) {
            String str = (String) list.get(i);
            String str2 = (String) list.get(i + 1);
            if (i > 0) {
                sb.append('&');
            }
            sb.append(str);
            if (str2 != null) {
                sb.append('=');
                sb.append(str2);
            }
            if (i == i2) {
                return;
            } else {
                i += i3;
            }
        }
    }

    public static ArrayList j(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i <= str.length()) {
            int bh = dcv.bh(str, '&', i, 4);
            if (bh == -1) {
                bh = str.length();
            }
            int bh2 = dcv.bh(str, '=', i, 4);
            if (bh2 == -1 || bh2 > bh) {
                String substring = str.substring(i, bh);
                bff.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                arrayList.add(substring);
                arrayList.add(null);
            } else {
                String substring2 = str.substring(i, bh2);
                bff.e(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
                arrayList.add(substring2);
                String substring3 = str.substring(bh2 + 1, bh);
                bff.e(substring3, "this as java.lang.String…ing(startIndex, endIndex)");
                arrayList.add(substring3);
            }
            i = bh + 1;
        }
        return arrayList;
    }

    public static String k(int i, int i2, int i3, String str, String str2) {
        int i4 = (i3 & 1) != 0 ? 0 : i;
        int length = (i3 & 2) != 0 ? str.length() : i2;
        boolean z = (i3 & 8) == 0;
        boolean z2 = (i3 & 16) == 0;
        boolean z3 = (i3 & 32) == 0;
        boolean z4 = (i3 & 64) == 0;
        bff.p(str, "<this>");
        int i5 = i4;
        while (i5 < length) {
            int codePointAt = str.codePointAt(i5);
            int i6 = TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
            int i7 = 32;
            if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && !z4) || dcv.bg(str2, (char) codePointAt) || ((codePointAt == 37 && (!z || (z2 && !n(i5, length, str)))) || (codePointAt == 43 && z3)))) {
                clq clqVar = new clq();
                clqVar.y(i4, i5, str);
                clq clqVar2 = null;
                while (i5 < length) {
                    int codePointAt2 = str.codePointAt(i5);
                    if (!z || (codePointAt2 != 9 && codePointAt2 != 10 && codePointAt2 != 12 && codePointAt2 != 13)) {
                        if (codePointAt2 == 43 && z3) {
                            clqVar.ap(z ? "+" : "%2B");
                        } else if (codePointAt2 < i7 || codePointAt2 == 127 || ((codePointAt2 >= i6 && !z4) || dcv.bg(str2, (char) codePointAt2) || (codePointAt2 == 37 && (!z || (z2 && !n(i5, length, str)))))) {
                            if (clqVar2 == null) {
                                clqVar2 = new clq();
                            }
                            clqVar2.am(codePointAt2);
                            while (!clqVar2.aj()) {
                                byte readByte = clqVar2.readByte();
                                clqVar.al(37);
                                char[] cArr = eyn.f16371a;
                                clqVar.al(cArr[((readByte & 255) >> 4) & 15]);
                                clqVar.al(cArr[readByte & 15]);
                            }
                        } else {
                            clqVar.am(codePointAt2);
                        }
                    }
                    i5 += Character.charCount(codePointAt2);
                    i6 = TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
                    i7 = 32;
                }
                return clqVar.x();
            }
            i5 += Character.charCount(codePointAt);
        }
        String substring = str.substring(i4, length);
        bff.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static boolean n(int i, int i2, String str) {
        int i3 = i + 2;
        return i3 < i2 && str.charAt(i) == '%' && erq.aa(str.charAt(i + 1)) != -1 && erq.aa(str.charAt(i3)) != -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0266, code lost:
    
        r7 = r0.getWindowManager().getDefaultDisplay().getSupportedModes();
     */
    @Override // g.hdb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean _bz(Context context, ert ertVar) {
        String str;
        List list;
        float refreshRate;
        Display.Mode[] supportedModes;
        String str2;
        String str3;
        String str4 = "";
        switch (this.f18556g) {
            case 0:
                fml.d(context);
                fgj.e().f(context, new Intent("android.settings.SETTINGS").setFlags(C.ENCODING_PCM_MU_LAW));
                break;
            case 4:
                Activity activity = (Activity) context;
                DisplayMetrics displayMetrics = activity.getResources().getDisplayMetrics();
                if (displayMetrics == null) {
                    str = null;
                } else {
                    String str5 = displayMetrics.densityDpi + " dp (" + fso.t(displayMetrics.densityDpi) + " " + displayMetrics.density + "x)";
                    String str6 = displayMetrics.xdpi + " * " + displayMetrics.ydpi + " dp";
                    Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
                    Point point = new Point();
                    defaultDisplay.getRealSize(point);
                    StringBuilder sb = new StringBuilder();
                    sb.append(point.x);
                    sb.append(" * ");
                    String x = awf.x(sb, point.y, " px");
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(displayMetrics.widthPixels);
                    sb2.append(" * ");
                    String x2 = awf.x(sb2, displayMetrics.heightPixels, " px");
                    double ap = fso.ap(displayMetrics, point);
                    String str7 = erl.ax(point.x / displayMetrics.xdpi, 1) + "\" * " + erl.ax(point.y / displayMetrics.ydpi, 1) + "\"";
                    Display defaultDisplay2 = activity.getWindowManager().getDefaultDisplay();
                    int i = Build.VERSION.SDK_INT;
                    if (i >= 24) {
                        if (i < 24 || supportedModes == null) {
                            list = null;
                        } else {
                            List asList = Arrays.asList(supportedModes);
                            List.b.sort(asList, Comparator.a.comparing(new qe()));
                            list = asList;
                        }
                        if (list != null) {
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                Display.Mode ac = fdj.ac(it.next());
                                if (ac != null) {
                                    if (!TextUtils.isEmpty(str4)) {
                                        str4 = awf.c(str4, ", ");
                                    }
                                    StringBuilder o = awf.o(str4);
                                    refreshRate = ac.getRefreshRate();
                                    str4 = awf.x(o, (int) refreshRate, "Hz");
                                }
                            }
                        }
                    }
                    if (TextUtils.isEmpty(str4)) {
                        StringBuilder o2 = awf.o(str4);
                        o2.append(defaultDisplay2.getRefreshRate());
                        str4 = o2.toString();
                    }
                    str = fnp.e(activity) + "\n" + String.format(activity.getString(R.string.screen_info), Double.toString(erl.ax(ap, 1)), str7, str5, str6, x, x2, Integer.valueOf((int) defaultDisplay2.getRefreshRate()), str4);
                }
                baf.ag(activity, ertVar, str);
                break;
            default:
                Activity activity2 = (Activity) context;
                if (eyt.am(activity2, "android.permission.READ_PHONE_STATE") == 0) {
                    ArrayList arrayList = new ArrayList();
                    TelephonyManager telephonyManager = (TelephonyManager) activity2.getSystemService("phone");
                    try {
                        if (dyd.bp(29)) {
                            arrayList.add(activity2.getString(R.string.id_imei, activity2.getString(R.string.no_permission_after_q)));
                        } else {
                            arrayList.add(activity2.getString(R.string.id_imei, telephonyManager.getDeviceId()));
                        }
                    } catch (Exception e2) {
                        erl.ac(e2);
                    }
                    HashMap hashMap = fnp.f17095b;
                    if (dyd.bp(29)) {
                        str3 = activity2.getString(R.string.no_permission_after_q);
                    } else if (!dyd.bp(26)) {
                        str3 = Build.SERIAL;
                    } else if (eyt.am(activity2, "android.permission.READ_PHONE_STATE") != 0) {
                        str3 = activity2.getString(R.string.no_permission_after_q);
                    } else {
                        try {
                            str3 = Build.getSerial();
                        } catch (SecurityException unused) {
                            str3 = activity2.getString(R.string.no_permission_after_q);
                        }
                    }
                    arrayList.add(activity2.getString(R.string.id_hw_id, str3));
                    try {
                        Cursor query = activity2.getContentResolver().query(Uri.parse("content://com.google.android.gsf.gservices"), null, null, new String[]{"android_id"}, null);
                        if (query != null && query.moveToFirst() && query.getColumnCount() >= 2) {
                            String string = query.getString(1);
                            query.close();
                            str4 = Long.toHexString(Long.parseLong(string)).toUpperCase().trim();
                        }
                    } catch (NumberFormatException unused2) {
                    }
                    arrayList.add(activity2.getString(R.string.id_gsf, str4));
                    arrayList.add(activity2.getString(R.string.id_imei_sv, eyt.bk(telephonyManager.getDeviceSoftwareVersion())));
                    try {
                        arrayList.add(activity2.getString(R.string.id_phone_number, eyt.bk(telephonyManager.getLine1Number())));
                        if (dyd.bp(29)) {
                            arrayList.add(activity2.getString(R.string.id_serial_number, activity2.getString(R.string.no_permission_after_q)));
                        } else {
                            arrayList.add(activity2.getString(R.string.id_serial_number, eyt.bk(telephonyManager.getSimSerialNumber())));
                        }
                        if (dyd.bp(29)) {
                            arrayList.add(activity2.getString(R.string.id_imsi, activity2.getString(R.string.no_permission_after_q)));
                        } else {
                            arrayList.add(activity2.getString(R.string.id_imsi, eyt.bk(telephonyManager.getSubscriberId())));
                        }
                    } catch (Exception unused3) {
                    }
                    arrayList.add(activity2.getString(R.string.network_mac_address, acw.bb(activity2)));
                    str2 = TextUtils.join("\r\n", arrayList);
                } else {
                    baf.bg(activity2, "android.permission.READ_PHONE_STATE", "getDeviceId", new fdy(activity2, 11, ertVar));
                    str2 = null;
                }
                baf.ag(activity2, ertVar, str2);
                break;
        }
        return true;
    }

    @Override // g.asz
    public void accept(Object obj, Object obj2) {
        gl glVar = (gl) ((fzr) obj).getService();
        gyb gybVar = new gyb(null, null);
        fhn fhnVar = new fhn((eeo) obj2);
        glVar.getClass();
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken("com.google.android.gms.appset.internal.IAppSetService");
        int i = dfo.f14095a;
        obtain.writeInt(1);
        gybVar.writeToParcel(obtain, 0);
        obtain.writeStrongBinder(fhnVar);
        Parcel obtain2 = Parcel.obtain();
        try {
            glVar.f18332a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // g.dym
    public dba e(String str) {
        return eir.f15607d;
    }

    public blj l(Class cls, ewp ewpVar) {
        return m(cls);
    }

    public blj m(Class cls) {
        try {
            Object newInstance = cls.getDeclaredConstructor(null).newInstance(null);
            bff.e(newInstance, "{\n                modelC…wInstance()\n            }");
            return (blj) newInstance;
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Cannot create an instance of " + cls, e2);
        } catch (InstantiationException e3) {
            throw new RuntimeException("Cannot create an instance of " + cls, e3);
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException("Cannot create an instance of " + cls, e4);
        }
    }

    public double o(String str, String str2) {
        int i;
        if (str.equals(str2)) {
            return 0.0d;
        }
        if (str.length() == 0) {
            i = str2.length();
        } else if (str2.length() == 0) {
            i = str.length();
        } else {
            int length = str2.length() + 1;
            int[] iArr = new int[length];
            int[] iArr2 = new int[str2.length() + 1];
            for (int i2 = 0; i2 < length; i2++) {
                iArr[i2] = i2;
            }
            int i3 = 0;
            while (i3 < str.length()) {
                int i4 = i3 + 1;
                iArr2[0] = i4;
                int i5 = 0;
                while (i5 < str2.length()) {
                    int i6 = i5 + 1;
                    iArr2[i6] = Math.min(iArr2[i5] + 1, Math.min(iArr[i6] + 1, iArr[i5] + (str.charAt(i3) == str2.charAt(i5) ? 0 : 1)));
                    i5 = i6;
                }
                int[] iArr3 = iArr2;
                iArr2 = iArr;
                iArr = iArr3;
                i3 = i4;
            }
            i = iArr[str2.length()];
        }
        return i;
    }

    @Override // g.ffg
    public void onScrollLimit(int i, int i2, int i3, boolean z) {
    }

    @Override // g.ffg
    public void onScrollProgress(int i, int i2, int i3, int i4) {
    }

    public boolean p(he heVar) {
        if (heVar.isVisibleToUser().booleanValue()) {
            return TextUtils.isEmpty(heVar.getText()) && TextUtils.isEmpty(heVar.getContentDescription()) && TextUtils.isEmpty(heVar.getPaneTitle()) && TextUtils.isEmpty(heVar.getHintText());
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzakg
    public int zza(zzad zzadVar) {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzfsz
    public ExecutorService zza(int i) {
        return zzc(1, Executors.defaultThreadFactory(), 2);
    }

    @Override // com.google.android.gms.internal.ads.zzabi
    public void zza(zzabl zzablVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzakg
    public zzaki zzb(zzad zzadVar) {
        throw new IllegalStateException("This SubtitleParser.Factory doesn't support any formats.");
    }

    @Override // com.google.android.gms.internal.ads.zzfsz
    public ExecutorService zzb(ThreadFactory threadFactory, int i) {
        return zzc(1, threadFactory, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzabi
    public void zzb(zzabl zzablVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzfsz
    public ExecutorService zzc(int i, ThreadFactory threadFactory, int i2) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    @Override // com.google.android.gms.internal.ads.zzabi
    public void zzc(zzabl zzablVar, zzci zzciVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzakg
    public boolean zzc(zzad zzadVar) {
        return false;
    }
}
