package g;

import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class aah implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final cei f9847a;

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f9848b = false;

    public aah(cei ceiVar) {
        dyn dynVar = new dyn(16, this);
        this.f9847a = ceiVar;
        File file = new File("/data/anr/traces.txt");
        if (file.exists()) {
            file.lastModified();
        }
        gnv.b(2L);
        fag.l().o(4500L, dynVar, 1, 0L);
        fag.l().o(PushUIConfig.dismissTime, this, 40, PushUIConfig.dismissTime);
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x02d3, code lost:
    
        r0.put("mainStackFromTrace", r9);
        r0.put("thread_number", 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x02de, code lost:
    
        g.bfc.o(r3);
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x037d A[Catch: all -> 0x03b8, TryCatch #2 {all -> 0x03b8, blocks: (B:39:0x030d, B:41:0x037d, B:42:0x03a4, B:44:0x03aa, B:46:0x03b0, B:47:0x03b7), top: B:38:0x030d }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x03b0 A[Catch: all -> 0x03b8, TryCatch #2 {all -> 0x03b8, blocks: (B:39:0x030d, B:41:0x037d, B:42:0x03a4, B:44:0x03aa, B:46:0x03b0, B:47:0x03b7), top: B:38:0x030d }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        char c2;
        String str;
        JSONObject jSONObject;
        ActivityManager.ProcessErrorStateInfo next;
        String str2;
        JSONObject jSONObject2;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        int i;
        if (this.f9848b) {
            return;
        }
        File file = new File("/data/anr/traces.txt");
        if (file.exists() && file.canRead()) {
            str = "/data/anr/traces.txt";
            c2 = 200;
        } else {
            c2 = 'd';
            str = null;
        }
        cei ceiVar = this.f9847a;
        ceiVar.getClass();
        try {
            jSONObject = baf.aw();
        } catch (Throwable th) {
            th.printStackTrace();
            jSONObject = null;
        }
        ActivityManager activityManager = (ActivityManager) ceiVar.f12737b.getSystemService(TTDownloadField.TT_ACTIVITY);
        if (activityManager != null) {
            loop2: for (int i2 = 0; i2 < 25; i2++) {
                SystemClock.sleep(200L);
                List<ActivityManager.ProcessErrorStateInfo> processesInErrorState = activityManager.getProcessesInErrorState();
                if (processesInErrorState != null) {
                    Iterator<ActivityManager.ProcessErrorStateInfo> it = processesInErrorState.iterator();
                    while (it.hasNext()) {
                        next = it.next();
                        if (next.condition == 2) {
                            break loop2;
                        }
                    }
                }
            }
        }
        next = null;
        if (next == null || Process.myPid() != next.pid) {
            str2 = null;
        } else {
            StringBuilder sb = new StringBuilder("|------------- processErrorStateInfo--------------|\n");
            sb.append("condition: " + next.condition + "\n");
            sb.append("processName: " + next.processName + "\n");
            sb.append("pid: " + next.pid + "\n");
            sb.append("uid: " + next.uid + "\n");
            sb.append("tag: " + next.tag + "\n");
            sb.append("shortMsg : " + next.shortMsg + "\n");
            sb.append("longMsg : " + next.longMsg + "\n");
            sb.append("-----------------------end----------------------------");
            str2 = sb.toString();
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            fur furVar = (fur) eca.f15276a.i;
            if (furVar != null) {
                if (furVar.dq()) {
                    if (c2 == 200) {
                        int myPid = Process.myPid();
                        String packageName = ceiVar.f12737b.getPackageName();
                        if (TextUtils.isEmpty(str)) {
                            jSONObject2 = null;
                        } else {
                            File file2 = new File(str);
                            if (file2.exists() && file2.canRead()) {
                                try {
                                    bufferedReader2 = new BufferedReader(new FileReader(file2));
                                    try {
                                        try {
                                            Pattern compile = Pattern.compile("-{5}\\spid\\s\\d+\\sat\\s\\d+-\\d+-\\d+\\s\\d{2}:\\d{2}:\\d{2}\\s-{5}");
                                            Pattern compile2 = Pattern.compile("-{5}\\send\\s\\d+\\s-{5}");
                                            Pattern compile3 = Pattern.compile("Cmd\\sline:\\s(\\S+)");
                                            Pattern compile4 = Pattern.compile("\".+\"\\s(daemon\\s){0,1}prio=\\d+\\stid=\\d+\\s.*");
                                            try {
                                                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
                                                Object[] f2 = cei.f(bufferedReader2, compile);
                                                if (f2 != null) {
                                                    long parseLong = Long.parseLong(f2[1].toString().split("\\s")[2]);
                                                    long time = simpleDateFormat.parse(f2[1].toString().split("\\s")[4] + " " + f2[1].toString().split("\\s")[5]).getTime();
                                                    Object[] f3 = cei.f(bufferedReader2, compile3);
                                                    if (f3 != null) {
                                                        String str3 = f3[1].toString().split("\\s")[2];
                                                        int i3 = 1;
                                                        if (parseLong == myPid && str3.equalsIgnoreCase(packageName) && (ceiVar.f12738c == 0 || Math.abs(ceiVar.f12738c - time) >= 20000)) {
                                                            ceiVar.f12738c = time;
                                                            SharedPreferences sharedPreferences = ceiVar.f12736a;
                                                            if (sharedPreferences != null) {
                                                                sharedPreferences.edit().putLong("trace_anr_happen_time", ceiVar.f12738c).apply();
                                                            }
                                                            jSONObject2 = new JSONObject();
                                                            jSONObject2.put("anrTime", time);
                                                            while (true) {
                                                                Pattern[] patternArr = new Pattern[2];
                                                                patternArr[0] = compile2;
                                                                patternArr[i3] = compile4;
                                                                Object[] f4 = cei.f(bufferedReader2, patternArr);
                                                                if (f4 == null || f4[0] != compile4) {
                                                                    break;
                                                                }
                                                                Matcher matcher = Pattern.compile("\".+\"").matcher(f4[i3].toString());
                                                                String substring = matcher.find() ? matcher.group().substring(i3, matcher.group().length() - i3) : "";
                                                                Matcher matcher2 = Pattern.compile("tid=\\d+").matcher(f4[1].toString());
                                                                if (matcher2.find()) {
                                                                    String group = matcher2.group();
                                                                    i = Integer.parseInt(group.substring(group.indexOf("=") + 1));
                                                                } else {
                                                                    i = -1;
                                                                }
                                                                String e2 = cei.e(bufferedReader2);
                                                                if (i != -1 && !TextUtils.isEmpty(substring) && !TextUtils.isEmpty(e2) && substring.equalsIgnoreCase("main")) {
                                                                    break;
                                                                } else {
                                                                    i3 = 1;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            } catch (Exception e3) {
                                                e = e3;
                                                e.printStackTrace();
                                                bfc.o(bufferedReader2);
                                                jSONObject2 = null;
                                                if (jSONObject2 != null) {
                                                    jSONObject = jSONObject2;
                                                }
                                                if (jSONObject != null) {
                                                    try {
                                                        jSONObject.put("pid", Process.myPid());
                                                        jSONObject.put("package", ceiVar.f12737b.getPackageName());
                                                        jSONObject.put("is_remote_process", 0);
                                                        JSONObject jSONObject3 = new JSONObject();
                                                        dcq dcqVar = new dcq(false);
                                                        dcqVar.f13976f = jSONObject3;
                                                        dcqVar.j("data", jSONObject.toString());
                                                        dcqVar.j("is_anr", 1);
                                                        dcqVar.j("timestamp", Long.valueOf(System.currentTimeMillis()));
                                                        dcqVar.j("event_type", "anr");
                                                        dcqVar.j("anr_time", Long.valueOf(System.currentTimeMillis()));
                                                        dcqVar.j("crash_time", Long.valueOf(System.currentTimeMillis()));
                                                        dcqVar.j("anr_info", str2);
                                                        if (duw.f14862a != null) {
                                                        }
                                                    } catch (Throwable unused) {
                                                        Context context = eca.f15278c;
                                                    }
                                                }
                                                this.f9848b = true;
                                            }
                                        } catch (Exception e4) {
                                            e = e4;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        bufferedReader = bufferedReader2;
                                        bfc.o(bufferedReader);
                                        throw th;
                                    }
                                } catch (Exception e5) {
                                    e = e5;
                                    bufferedReader2 = null;
                                } catch (Throwable th3) {
                                    th = th3;
                                    bufferedReader = null;
                                    bfc.o(bufferedReader);
                                    throw th;
                                }
                                bfc.o(bufferedReader2);
                            }
                            jSONObject2 = null;
                        }
                        if (jSONObject2 != null && jSONObject2.length() > 0) {
                            jSONObject = jSONObject2;
                        }
                    }
                    if (jSONObject != null && jSONObject.length() > 0) {
                        jSONObject.put("pid", Process.myPid());
                        jSONObject.put("package", ceiVar.f12737b.getPackageName());
                        jSONObject.put("is_remote_process", 0);
                        JSONObject jSONObject32 = new JSONObject();
                        dcq dcqVar2 = new dcq(false);
                        dcqVar2.f13976f = jSONObject32;
                        dcqVar2.j("data", jSONObject.toString());
                        dcqVar2.j("is_anr", 1);
                        dcqVar2.j("timestamp", Long.valueOf(System.currentTimeMillis()));
                        dcqVar2.j("event_type", "anr");
                        dcqVar2.j("anr_time", Long.valueOf(System.currentTimeMillis()));
                        dcqVar2.j("crash_time", Long.valueOf(System.currentTimeMillis()));
                        dcqVar2.j("anr_info", str2);
                        if (duw.f14862a != null) {
                            throw new IllegalArgumentException("CrashContextAssembly not init");
                        }
                        duw duwVar = duw.f14862a;
                        azu azuVar = azu.ANR;
                        dcq t = duwVar.t(azuVar, dcqVar2);
                        cro.v(ceiVar.f12737b, azuVar.b(), null);
                        bnc.c().d((JSONObject) t.f13976f);
                        Iterator it2 = ((CopyOnWriteArrayList) eca.f15276a.f17731f).iterator();
                        while (it2.hasNext()) {
                            it2.next();
                        }
                    }
                    this.f9848b = true;
                }
            }
        } catch (Throwable unused2) {
        }
    }
}
