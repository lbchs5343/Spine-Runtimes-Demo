package g;

import android.app.ActivityManager;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import android.os.UserManager;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.pangle.provider.ContentProviderManager;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ato implements dvf {

    /* renamed from: a, reason: collision with root package name */
    public Context f10813a;

    /* JADX WARN: Code restructure failed: missing block: B:84:0x01bf, code lost:
    
        if (r2.length() > 0) goto L80;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0235  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void b(long j, Thread thread, Throwable th) {
        JSONObject jSONObject;
        Map<Thread, StackTraceElement[]> allStackTraces;
        JSONObject jSONObject2;
        Context context = this.f10813a;
        boolean z = true;
        long currentTimeMillis = j == 0 ? System.currentTimeMillis() : j;
        dcq dcqVar = new dcq(22);
        dcqVar.j("isJava", 1);
        dcqVar.j("event_type", "java_crash");
        dcqVar.j("timestamp", Long.valueOf(System.currentTimeMillis()));
        dcqVar.j("data", cux.x(th));
        if (th != null) {
            int i = 0;
            for (Throwable th2 = th; th2 != null; th2 = th2.getCause()) {
                if (th2 instanceof OutOfMemoryError) {
                    break;
                }
                if (i > 20) {
                    break;
                }
                i++;
                try {
                } catch (Throwable unused) {
                }
            }
        }
        z = false;
        dcqVar.j("isOOM", Boolean.valueOf(z));
        dcqVar.j("crash_time", Long.valueOf(currentTimeMillis));
        dcqVar.j(ContentProviderManager.PLUGIN_PROCESS_NAME, acw.av());
        String av = acw.av();
        if ((av != null && av.contains(":")) || ((av == null || !av.equals(context.getPackageName())) && (av == null || !av.equals(context.getApplicationInfo().processName)))) {
            dcqVar.j("remote_process", 1);
        }
        JSONObject jSONObject3 = (JSONObject) dcqVar.f13976f;
        try {
            acw.q(jSONObject3);
            ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
            if (activityManager != null) {
                acw.m(jSONObject3, activityManager);
            }
            acw.ar(jSONObject3, activityManager);
        } catch (Throwable unused2) {
        }
        String name = thread == null ? null : thread.getName();
        if (name != null) {
            dcqVar.j("crash_thread_name", name);
        }
        try {
            allStackTraces = Thread.getAllStackTraces();
            jSONObject2 = new JSONObject();
        } catch (Throwable unused3) {
        }
        if (allStackTraces != null) {
            jSONObject2.put("thread_all_count", allStackTraces.size());
            JSONArray jSONArray = new JSONArray();
            for (Map.Entry<Thread, StackTraceElement[]> entry : allStackTraces.entrySet()) {
                JSONObject jSONObject4 = new JSONObject();
                Thread key = entry.getKey();
                String name2 = key.getName();
                HashSet hashSet = asg.f10746a;
                if (!hashSet.contains(name2)) {
                    Iterator it = hashSet.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            String str = (String) it.next();
                            if (TextUtils.isEmpty(name2) || !name2.startsWith(str)) {
                            }
                        } else {
                            if (name != null) {
                                if (!name.equals(name2) && !name2.startsWith(name) && !name2.endsWith(name)) {
                                }
                            }
                            StringBuilder sb = new StringBuilder();
                            sb.append(key.getName());
                            sb.append("(");
                            String str2 = name;
                            sb.append(key.getId());
                            sb.append(")");
                            jSONObject4.put("thread_name", sb.toString());
                            StackTraceElement[] value = entry.getValue();
                            if (value != null) {
                                JSONArray jSONArray2 = new JSONArray();
                                for (StackTraceElement stackTraceElement : value) {
                                    jSONArray2.put(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + "(" + stackTraceElement.getLineNumber() + ")");
                                }
                                jSONObject4.put("thread_stack", jSONArray2);
                            }
                            jSONArray.put(jSONObject4);
                            name = str2;
                        }
                    }
                }
            }
            jSONObject2.put("thread_stacks", jSONArray);
            jSONObject = jSONObject2;
            dcqVar.j("all_thread_stacks", jSONObject);
            Context context2 = this.f10813a;
            azu azuVar = azu.JAVA;
            cro.v(context2, azuVar.b(), Thread.currentThread().getName());
            if (duw.f14862a != null) {
                throw new IllegalArgumentException("CrashContextAssembly not init");
            }
            dcq t = duw.f14862a.t(azuVar, dcqVar);
            bnc c2 = bnc.c();
            JSONObject jSONObject5 = (JSONObject) t.f13976f;
            c2.getClass();
            if (jSONObject5 == null || jSONObject5.length() <= 0) {
                return;
            }
            try {
                eca.f15280e.ag();
                cro.ap(new File(afo.as(c2.f11862b), "CrashLogJava"), "java_" + String.valueOf(System.nanoTime()) + ".npth", jSONObject5);
                return;
            } catch (Throwable unused4) {
                return;
            }
        }
        jSONObject = null;
        dcqVar.j("all_thread_stacks", jSONObject);
        Context context22 = this.f10813a;
        azu azuVar2 = azu.JAVA;
        cro.v(context22, azuVar2.b(), Thread.currentThread().getName());
        if (duw.f14862a != null) {
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:6|(4:8|(1:10)|11|12)|13|(4:15|(1:17)|11|12)|18|(1:20)(1:90)|(2:22|(1:24))|25|26|27|28|29|30|(1:32)(1:82)|33|(9:35|36|37|38|39|(2:40|(3:42|(3:57|58|59)(7:44|45|(2:47|(1:50))|51|(1:53)|54|55)|56)(1:60))|61|62|63)(1:81)|64|12) */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0078, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0079, code lost:
    
        android.util.Log.e("HermeticFileOverrides", "no data dir", r3);
        r6 = g.dfh.f14091a;
     */
    @Override // g.dvf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object zza() {
        exu exuVar;
        StrictMode.ThreadPolicy allowThreadDiskReads;
        exu exuVar2;
        boolean isDeviceProtectedStorage;
        Context context = this.f10813a;
        Object obj = duh.f14825c;
        synchronized (dzm.class) {
            try {
                exuVar = dzm.k;
                if (exuVar == null) {
                    String str = Build.TYPE;
                    String str2 = Build.TAGS;
                    if (!str.equals("eng")) {
                        if (str.equals("userdebug")) {
                        }
                        exuVar = dfh.f14091a;
                        dzm.k = exuVar;
                    }
                    if (!str2.contains("dev-keys")) {
                        if (str2.contains("test-keys")) {
                        }
                        exuVar = dfh.f14091a;
                        dzm.k = exuVar;
                    }
                    UserManager userManager = ddd.f14008a;
                    if (Build.VERSION.SDK_INT >= 24) {
                        isDeviceProtectedStorage = context.isDeviceProtectedStorage();
                        if (!isDeviceProtectedStorage) {
                            context = context.createDeviceProtectedStorageContext();
                        }
                    }
                    allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    StrictMode.allowThreadDiskWrites();
                    File file = new File(context.getDir("phenotype_hermetic", 0), "overrides.txt");
                    exu exuVar3 = file.exists() ? new gla(file) : dfh.f14091a;
                    if (exuVar3.c()) {
                        File file2 = (File) exuVar3.b();
                        try {
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file2)));
                            try {
                                bcp bcpVar = new bcp(0);
                                HashMap hashMap = new HashMap();
                                while (true) {
                                    String readLine = bufferedReader.readLine();
                                    if (readLine == null) {
                                        break;
                                    }
                                    String[] split = readLine.split(" ", 3);
                                    if (split.length != 3) {
                                        Log.e("HermeticFileOverrides", "Invalid: " + readLine);
                                    } else {
                                        String str3 = new String(split[0]);
                                        String decode = Uri.decode(new String(split[1]));
                                        String str4 = (String) hashMap.get(split[2]);
                                        if (str4 == null) {
                                            String str5 = new String(split[2]);
                                            str4 = Uri.decode(str5);
                                            if (str4.length() < 1024 || str4 == str5) {
                                                hashMap.put(str5, str4);
                                            }
                                        }
                                        if (!bcpVar.containsKey(str3)) {
                                            bcpVar.put(str3, new bcp(0));
                                        }
                                        ((bcp) bcpVar.get(str3)).put(decode, str4);
                                    }
                                }
                                file2.toString();
                                context.getPackageName();
                                dbo dboVar = new dbo(bcpVar);
                                bufferedReader.close();
                                exuVar2 = new gla(dboVar);
                            } finally {
                                try {
                                    bufferedReader.close();
                                } catch (Throwable th) {
                                    try {
                                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th);
                                    } catch (Exception unused) {
                                    }
                                }
                            }
                        } catch (IOException e2) {
                            throw new RuntimeException(e2);
                        }
                    } else {
                        exuVar2 = dfh.f14091a;
                    }
                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                    exuVar = exuVar2;
                    dzm.k = exuVar;
                }
            } catch (Throwable th2) {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                throw th2;
            } finally {
            }
        }
        return exuVar;
    }
}
