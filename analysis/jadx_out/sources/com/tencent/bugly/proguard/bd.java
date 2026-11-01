package com.tencent.bugly.proguard;

import android.app.ActivityManager;
import android.content.Context;
import android.text.TextUtils;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler;
import g.awf;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class bd implements NativeExceptionHandler {

    /* renamed from: a, reason: collision with root package name */
    private final Context f9674a;

    /* renamed from: b, reason: collision with root package name */
    private final as f9675b;

    /* renamed from: c, reason: collision with root package name */
    private final aa f9676c;

    /* renamed from: d, reason: collision with root package name */
    private final ac f9677d;

    public bd(Context context, aa aaVar, as asVar, ac acVar) {
        this.f9674a = context;
        this.f9675b = asVar;
        this.f9676c = aaVar;
        this.f9677d = acVar;
    }

    private static Map<String, String> a(String[] strArr) {
        HashMap hashMap = new HashMap(strArr == null ? 1 : strArr.length);
        if (strArr == null) {
            al.c("not found extraMsg", new Object[0]);
            return hashMap;
        }
        for (int i = 0; i < strArr.length; i++) {
            String str = strArr[i];
            if (str != null) {
                al.a("Extra message[%d]: %s", Integer.valueOf(i), str);
                String[] split = str.split("=");
                if (split.length == 2) {
                    hashMap.put(split[0], split[1]);
                } else {
                    al.d("bad extraMsg %s", str);
                }
            }
        }
        return hashMap;
    }

    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    public final boolean getAndUpdateAnrState() {
        if (ay.a() == null) {
            return false;
        }
        ay a2 = ay.a();
        if (a2.f9654a.get()) {
            al.c("anr is processing, return", new Object[0]);
            return false;
        }
        ActivityManager activityManager = a2.f9655b;
        if (z.a(activityManager) || az.a(activityManager, 0L) == null) {
            al.c("proc is not in anr, wait next check", new Object[0]);
            return false;
        }
        if (a2.a(System.currentTimeMillis())) {
            return false;
        }
        return a2.a(true);
    }

    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    public final void handleNativeException(int i, int i2, long j, long j2, String str, String str2, String str3, String str4, int i3, String str5, int i4, int i5, int i6, String str6, String str7) {
        al.a("Native Crash Happen v1", new Object[0]);
        handleNativeException2(i, i2, j, j2, str, str2, str3, str4, i3, str5, i4, i5, i6, str6, str7, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x009e A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:64:0x0016, B:4:0x0038, B:6:0x004b, B:8:0x0053, B:9:0x005f, B:11:0x006b, B:14:0x0072, B:15:0x007e, B:17:0x009e, B:18:0x00d1, B:20:0x00f0, B:21:0x00fc, B:24:0x0108, B:26:0x0110, B:35:0x0155, B:36:0x0159, B:38:0x0167, B:39:0x0182, B:41:0x019f, B:43:0x01a7, B:45:0x01da, B:47:0x01e2, B:49:0x01ed, B:51:0x01f5, B:53:0x01fa, B:54:0x01ff, B:60:0x00bc, B:61:0x007c), top: B:63:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00f0 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:64:0x0016, B:4:0x0038, B:6:0x004b, B:8:0x0053, B:9:0x005f, B:11:0x006b, B:14:0x0072, B:15:0x007e, B:17:0x009e, B:18:0x00d1, B:20:0x00f0, B:21:0x00fc, B:24:0x0108, B:26:0x0110, B:35:0x0155, B:36:0x0159, B:38:0x0167, B:39:0x0182, B:41:0x019f, B:43:0x01a7, B:45:0x01da, B:47:0x01e2, B:49:0x01ed, B:51:0x01f5, B:53:0x01fa, B:54:0x01ff, B:60:0x00bc, B:61:0x007c), top: B:63:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x019f A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:64:0x0016, B:4:0x0038, B:6:0x004b, B:8:0x0053, B:9:0x005f, B:11:0x006b, B:14:0x0072, B:15:0x007e, B:17:0x009e, B:18:0x00d1, B:20:0x00f0, B:21:0x00fc, B:24:0x0108, B:26:0x0110, B:35:0x0155, B:36:0x0159, B:38:0x0167, B:39:0x0182, B:41:0x019f, B:43:0x01a7, B:45:0x01da, B:47:0x01e2, B:49:0x01ed, B:51:0x01f5, B:53:0x01fa, B:54:0x01ff, B:60:0x00bc, B:61:0x007c), top: B:63:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01a7 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:64:0x0016, B:4:0x0038, B:6:0x004b, B:8:0x0053, B:9:0x005f, B:11:0x006b, B:14:0x0072, B:15:0x007e, B:17:0x009e, B:18:0x00d1, B:20:0x00f0, B:21:0x00fc, B:24:0x0108, B:26:0x0110, B:35:0x0155, B:36:0x0159, B:38:0x0167, B:39:0x0182, B:41:0x019f, B:43:0x01a7, B:45:0x01da, B:47:0x01e2, B:49:0x01ed, B:51:0x01f5, B:53:0x01fa, B:54:0x01ff, B:60:0x00bc, B:61:0x007c), top: B:63:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00bc A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:64:0x0016, B:4:0x0038, B:6:0x004b, B:8:0x0053, B:9:0x005f, B:11:0x006b, B:14:0x0072, B:15:0x007e, B:17:0x009e, B:18:0x00d1, B:20:0x00f0, B:21:0x00fc, B:24:0x0108, B:26:0x0110, B:35:0x0155, B:36:0x0159, B:38:0x0167, B:39:0x0182, B:41:0x019f, B:43:0x01a7, B:45:0x01da, B:47:0x01e2, B:49:0x01ed, B:51:0x01f5, B:53:0x01fa, B:54:0x01ff, B:60:0x00bc, B:61:0x007c), top: B:63:0x0016 }] */
    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void handleNativeException2(int i, int i2, long j, long j2, String str, String str2, String str3, String str4, int i3, String str5, int i4, int i5, int i6, String str6, String str7, String[] strArr) {
        String str8;
        String sb;
        boolean z;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        CrashDetailBean packageCrashDatas;
        al.a("Native Crash Happen v2", new Object[0]);
        if (i3 > 0) {
            try {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append("(");
                str8 = str5;
                sb2.append(str8);
                sb2.append(")");
                sb = sb2.toString();
            } catch (Throwable th) {
                if (al.a(th)) {
                    return;
                }
                th.printStackTrace();
                return;
            }
        } else {
            sb = str;
            str8 = str5;
        }
        String a2 = be.a(str3);
        Map<String, String> a3 = a(strArr);
        String str14 = a3.get("HasPendingException");
        if (str14 == null || !str14.equals("true")) {
            z = false;
        } else {
            al.a("Native crash happened with a Java pending exception.", new Object[0]);
            z = true;
        }
        aa aaVar = this.f9676c;
        String str15 = a3.get("ExceptionProcessName");
        if (str15 != null && str15.length() != 0) {
            al.c("Name of crash process: %s", str15);
            str9 = a3.get("ExceptionThreadName");
            al.c("crash thread name:%s tid:%s", str9, Integer.valueOf(i2));
            if (TextUtils.isEmpty(str9)) {
                str10 = str9 + "(" + i2 + ")";
            } else {
                str10 = Thread.currentThread().getName() + "(" + i2 + ")";
            }
            long j3 = (j * 1000) + (j2 / 1000);
            String str16 = a3.get("SysLogPath");
            String str17 = a3.get("JniLogPath");
            if (this.f9677d.b()) {
                str11 = str10;
                al.d("no remote but still store!", new Object[0]);
            } else {
                str11 = str10;
            }
            if (this.f9677d.c().f9502f && this.f9677d.b()) {
                al.e("crash report was closed by remote , will not upload to Bugly , print local for helpful!", new Object[0]);
                as.a("NATIVE_CRASH", ap.a(), str15, str11, sb + "\n" + str2 + "\n" + a2, null);
                ap.c(str4);
                return;
            }
            String str18 = str11;
            if (i3 > 0) {
                str8 = "KERNEL";
            }
            str12 = "UNKNOWN";
            if (i3 > 0) {
                str13 = str18;
                String a4 = i4 > 0 ? z.a(i4) : "UNKNOWN";
                if (a4.equals(String.valueOf(i4))) {
                    str12 = a4;
                } else {
                    str12 = a4 + "(" + i4 + ")";
                }
            } else {
                str13 = str18;
            }
            String str19 = str15;
            String str20 = str13;
            packageCrashDatas = packageCrashDatas(str19, str20, j3, sb, str2, a2, str8, str12, str4, str16, str17, str7, null, null, true, z);
            if (packageCrashDatas != null) {
                al.e("pkg crash datas fail!", new Object[0]);
                return;
            }
            as.a("NATIVE_CRASH", ap.a(), str19, str20, sb + "\n" + str2 + "\n" + a2, packageCrashDatas);
            as asVar = this.f9675b;
            if (asVar == null) {
                al.d("crashHandler is null. Won't upload native crash.", new Object[0]);
                return;
            }
            boolean a5 = asVar.a(packageCrashDatas, true);
            be.a(true, NativeCrashHandler.getInstance() != null ? NativeCrashHandler.getDumpFilePath() : null);
            if (!a5) {
                this.f9675b.b(packageCrashDatas, true);
            }
            this.f9675b.a(packageCrashDatas);
            at.a().t.b();
            return;
        }
        str15 = aaVar.f9537d;
        str9 = a3.get("ExceptionThreadName");
        al.c("crash thread name:%s tid:%s", str9, Integer.valueOf(i2));
        if (TextUtils.isEmpty(str9)) {
        }
        long j32 = (j * 1000) + (j2 / 1000);
        String str162 = a3.get("SysLogPath");
        String str172 = a3.get("JniLogPath");
        if (this.f9677d.b()) {
        }
        if (this.f9677d.c().f9502f) {
        }
        String str182 = str11;
        if (i3 > 0) {
        }
        str12 = "UNKNOWN";
        if (i3 > 0) {
        }
        String str192 = str15;
        String str202 = str13;
        packageCrashDatas = packageCrashDatas(str192, str202, j32, sb, str2, a2, str8, str12, str4, str162, str172, str7, null, null, true, z);
        if (packageCrashDatas != null) {
        }
    }

    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    public final CrashDetailBean packageCrashDatas(String str, String str2, long j, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, byte[] bArr, Map<String, String> map, boolean z, boolean z2) {
        int i;
        String str12;
        int indexOf;
        boolean i2 = at.a().i();
        if (i2) {
            al.e("This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!", new Object[0]);
        }
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        crashDetailBean.f9505b = 1;
        crashDetailBean.f9508e = this.f9676c.g();
        aa aaVar = this.f9676c;
        crashDetailBean.f9509f = aaVar.o;
        crashDetailBean.f9510g = aaVar.q();
        crashDetailBean.m = this.f9676c.f();
        crashDetailBean.n = str3;
        crashDetailBean.o = i2 ? " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]" : "";
        crashDetailBean.p = str4;
        String str13 = str5 != null ? str5 : "";
        crashDetailBean.q = str13;
        crashDetailBean.r = j;
        crashDetailBean.u = ap.c(str13.getBytes());
        crashDetailBean.A = str;
        crashDetailBean.B = str2;
        crashDetailBean.L = this.f9676c.s();
        crashDetailBean.h = this.f9676c.p();
        crashDetailBean.i = this.f9676c.A();
        crashDetailBean.v = str8;
        String dumpFilePath = NativeCrashHandler.getInstance() != null ? NativeCrashHandler.getDumpFilePath() : null;
        String a2 = be.a(dumpFilePath, str8);
        if (!ap.b(a2)) {
            crashDetailBean.Z = a2;
        }
        crashDetailBean.aa = be.b(dumpFilePath);
        crashDetailBean.w = be.a(str9, at.f9624f, at.k, at.p);
        crashDetailBean.x = be.a(str10, at.f9624f, null, true);
        crashDetailBean.N = str7;
        crashDetailBean.O = str6;
        crashDetailBean.P = str11;
        crashDetailBean.F = this.f9676c.k();
        crashDetailBean.G = this.f9676c.j();
        crashDetailBean.H = this.f9676c.l();
        crashDetailBean.I = ab.b(this.f9674a);
        crashDetailBean.J = ab.g();
        crashDetailBean.K = ab.h();
        if (!z) {
            crashDetailBean.C = -1L;
            crashDetailBean.D = -1L;
            crashDetailBean.E = -1L;
            if (crashDetailBean.w == null) {
                crashDetailBean.w = "This crash occurred at last process! Log is miss, when get an terrible ABRT Native Exception etc.";
            }
            crashDetailBean.Q = -1L;
            crashDetailBean.U = -1;
            crashDetailBean.V = -1;
            crashDetailBean.W = map;
            crashDetailBean.X = this.f9676c.y();
            crashDetailBean.z = null;
            if (str == null) {
                crashDetailBean.A = "unknown(record)";
            }
            if (bArr != null) {
                crashDetailBean.y = bArr;
            }
            return crashDetailBean;
        }
        crashDetailBean.C = ab.j();
        crashDetailBean.D = ab.f();
        crashDetailBean.E = ab.l();
        crashDetailBean.y = ao.a();
        aa aaVar2 = this.f9676c;
        crashDetailBean.Q = aaVar2.f9533a;
        crashDetailBean.R = aaVar2.a();
        crashDetailBean.z = ap.a(this.f9676c.Q, at.h);
        int indexOf2 = crashDetailBean.q.indexOf("java:\n");
        if (indexOf2 > 0 && (i = indexOf2 + 6) < crashDetailBean.q.length()) {
            String str14 = crashDetailBean.q;
            String substring = str14.substring(i, str14.length() - 1);
            if (substring.length() > 0 && crashDetailBean.z.containsKey(crashDetailBean.B) && (indexOf = (str12 = crashDetailBean.z.get(crashDetailBean.B)).indexOf(substring)) > 0) {
                String substring2 = str12.substring(indexOf);
                crashDetailBean.z.put(crashDetailBean.B, substring2);
                crashDetailBean.q = crashDetailBean.q.substring(0, i);
                crashDetailBean.q = awf.ad(new StringBuilder(), crashDetailBean.q, substring2);
            }
        }
        if (str == null) {
            crashDetailBean.A = this.f9676c.f9537d;
        }
        crashDetailBean.U = this.f9676c.z();
        aa aaVar3 = this.f9676c;
        crashDetailBean.V = aaVar3.x;
        crashDetailBean.W = aaVar3.t();
        crashDetailBean.X = this.f9676c.y();
        return crashDetailBean;
    }
}
