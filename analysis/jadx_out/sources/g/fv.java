package g;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class fv {

    /* renamed from: a, reason: collision with root package name */
    public final epy f17463a;

    /* renamed from: b, reason: collision with root package name */
    public final cyl f17464b;

    /* renamed from: c, reason: collision with root package name */
    public final azu f17465c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f17466d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f17467e;

    /* renamed from: f, reason: collision with root package name */
    public final cmc f17468f = (cmc) eca.f15280e.f15121f;

    public fv(azu azuVar, Context context, epy epyVar, cyl cylVar, int i) {
        this.f17466d = i;
        this.f17465c = azuVar;
        this.f17467e = context;
        this.f17463a = epyVar;
        this.f17464b = cylVar;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(63:0|1|(12:3|4|5|(3:10|(4:13|14|15|11)|18)|19|(3:24|(4:27|28|29|25)|32)|33|34|35|36|(3:43|(4:46|(3:48|49|(3:51|52|54)(1:57))(1:58)|55|44)|59)|39)|64|(2:65|66)|67|(55:(4:203|204|205|(1:214))|218|72|73|(1:75)(4:195|(2:198|196)|199|200)|76|77|78|79|(1:191)(4:83|(2:86|84)|87|88)|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|(27:109|110|111|112|(22:114|115|116|117|(1:119)|121|122|123|124|(1:126)(1:163)|127|128|129|(2:132|130)|133|134|(1:136)|137|(4:139|(6:142|143|144|146|147|140)|151|152)|153|(2:155|(1:157)(2:158|159))|161)|179|115|116|117|(0)|121|122|123|124|(0)(0)|127|128|129|(1:130)|133|134|(0)|137|(0)|153|(0)|161)|182|110|111|112|(0)|179|115|116|117|(0)|121|122|123|124|(0)(0)|127|128|129|(1:130)|133|134|(0)|137|(0)|153|(0)|161)|71|72|73|(0)(0)|76|77|78|79|(1:81)|191|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|(28:107|109|110|111|112|(0)|179|115|116|117|(0)|121|122|123|124|(0)(0)|127|128|129|(1:130)|133|134|(0)|137|(0)|153|(0)|161)|182|110|111|112|(0)|179|115|116|117|(0)|121|122|123|124|(0)(0)|127|128|129|(1:130)|133|134|(0)|137|(0)|153|(0)|161|(2:(1:169)|(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(64:0|1|(12:3|4|5|(3:10|(4:13|14|15|11)|18)|19|(3:24|(4:27|28|29|25)|32)|33|34|35|36|(3:43|(4:46|(3:48|49|(3:51|52|54)(1:57))(1:58)|55|44)|59)|39)|64|65|66|67|(55:(4:203|204|205|(1:214))|218|72|73|(1:75)(4:195|(2:198|196)|199|200)|76|77|78|79|(1:191)(4:83|(2:86|84)|87|88)|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|(27:109|110|111|112|(22:114|115|116|117|(1:119)|121|122|123|124|(1:126)(1:163)|127|128|129|(2:132|130)|133|134|(1:136)|137|(4:139|(6:142|143|144|146|147|140)|151|152)|153|(2:155|(1:157)(2:158|159))|161)|179|115|116|117|(0)|121|122|123|124|(0)(0)|127|128|129|(1:130)|133|134|(0)|137|(0)|153|(0)|161)|182|110|111|112|(0)|179|115|116|117|(0)|121|122|123|124|(0)(0)|127|128|129|(1:130)|133|134|(0)|137|(0)|153|(0)|161)|71|72|73|(0)(0)|76|77|78|79|(1:81)|191|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|(28:107|109|110|111|112|(0)|179|115|116|117|(0)|121|122|123|124|(0)(0)|127|128|129|(1:130)|133|134|(0)|137|(0)|153|(0)|161)|182|110|111|112|(0)|179|115|116|117|(0)|121|122|123|124|(0)(0)|127|128|129|(1:130)|133|134|(0)|137|(0)|153|(0)|161|(2:(1:169)|(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0358, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0361, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0364, code lost:
    
        if (r2 == null) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0407, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x029d, code lost:
    
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0285, code lost:
    
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x026d, code lost:
    
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x0224, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x0225, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x019a, code lost:
    
        r3 = r3.get(0).topActivity;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x01ae, code lost:
    
        if (r0.equals(r3.getPackageName()) != false) goto L66;
     */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02cc A[Catch: Exception -> 0x02d5, TRY_LEAVE, TryCatch #11 {Exception -> 0x02d5, blocks: (B:112:0x02c2, B:114:0x02cc), top: B:111:0x02c2 }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x02e5 A[Catch: Exception -> 0x02ed, TRY_LEAVE, TryCatch #3 {Exception -> 0x02ed, blocks: (B:117:0x02db, B:119:0x02e5), top: B:116:0x02db }] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0352 A[Catch: all -> 0x0358, TryCatch #15 {all -> 0x0358, blocks: (B:124:0x031c, B:126:0x0352, B:163:0x035a), top: B:123:0x031c }] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0376 A[LOOP:4: B:130:0x0370->B:132:0x0376, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03ec  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x035a A[Catch: all -> 0x0358, TRY_LEAVE, TryCatch #15 {all -> 0x0358, blocks: (B:124:0x031c, B:126:0x0352, B:163:0x035a), top: B:123:0x031c }] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x01ea A[Catch: Exception -> 0x0216, TryCatch #10 {Exception -> 0x0216, blocks: (B:75:0x01e6, B:195:0x01ea, B:196:0x01f2, B:198:0x01f8, B:200:0x0213), top: B:73:0x01e4 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01e6 A[Catch: Exception -> 0x0216, TRY_ENTER, TryCatch #10 {Exception -> 0x0216, blocks: (B:75:0x01e6, B:195:0x01ea, B:196:0x01f2, B:198:0x01f8, B:200:0x0213), top: B:73:0x01e4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final dcq g(dcq dcqVar) {
        boolean z;
        List<ActivityManager.RunningTaskInfo> runningTasks;
        ComponentName componentName;
        Map s;
        List iw;
        JSONArray jSONArray;
        Iterator it;
        String p;
        HashMap hashMap;
        List list;
        long j;
        long j2;
        File dq;
        List<ActivityManager.RunningTaskInfo> runningTasks2;
        ComponentName componentName2;
        ComponentName componentName3;
        int i;
        ComponentName componentName4;
        ComponentName componentName5;
        epy epyVar = this.f17463a;
        if (epyVar != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("last_create_activity", epy.s(epyVar.f15954a, epyVar.q));
                jSONObject.put("last_start_activity", epy.s(epyVar.n, epyVar.l));
                jSONObject.put("last_resume_activity", epy.s(epyVar.f15959f, epyVar.f15955b));
                jSONObject.put("last_pause_activity", epy.s(epyVar.f15957d, epyVar.k));
                jSONObject.put("last_stop_activity", epy.s(epyVar.j, epyVar.f15956c));
                JSONArray jSONArray2 = new JSONArray();
                ArrayList arrayList = epyVar.p;
                if (arrayList != null && !arrayList.isEmpty()) {
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        try {
                            jSONArray2.put(epy.s(((Long) epyVar.f15958e.get(i2)).longValue(), (String) arrayList.get(i2)));
                        } catch (Throwable unused) {
                        }
                    }
                }
                jSONObject.put("alive_activities", jSONArray2);
                JSONArray jSONArray3 = new JSONArray();
                ArrayList arrayList2 = epyVar.f15960g;
                if (arrayList2 != null && !arrayList2.isEmpty()) {
                    for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                        try {
                            jSONArray3.put(epy.s(((Long) epyVar.i.get(i3)).longValue(), (String) arrayList2.get(i3)));
                        } catch (Throwable unused2) {
                        }
                    }
                }
                jSONObject.put("finish_activities", jSONArray3);
            } catch (JSONException unused3) {
            }
            dcqVar.j("activity_trace", jSONObject);
            JSONArray jSONArray4 = new JSONArray();
            try {
                ActivityManager activityManager = (ActivityManager) epyVar.m.getSystemService(TTDownloadField.TT_ACTIVITY);
                if (activityManager != null && (runningTasks2 = activityManager.getRunningTasks(5)) != null) {
                    for (ActivityManager.RunningTaskInfo runningTaskInfo : runningTasks2) {
                        if (runningTaskInfo != null) {
                            componentName2 = runningTaskInfo.baseActivity;
                            if (componentName2 != null) {
                                try {
                                    JSONObject jSONObject2 = new JSONObject();
                                    jSONObject2.put(TTDownloadField.TT_ID, runningTaskInfo.id);
                                    componentName3 = runningTaskInfo.baseActivity;
                                    jSONObject2.put("package_name", componentName3.getPackageName());
                                    jSONObject2.put("description", runningTaskInfo.description);
                                    i = runningTaskInfo.numActivities;
                                    jSONObject2.put("number_of_activities", i);
                                    jSONObject2.put("number_of_running_activities", runningTaskInfo.numRunning);
                                    componentName4 = runningTaskInfo.topActivity;
                                    jSONObject2.put("topActivity", componentName4.toString());
                                    componentName5 = runningTaskInfo.baseActivity;
                                    jSONObject2.put("baseActivity", componentName5.toString());
                                    jSONArray4.put(jSONObject2);
                                } catch (JSONException unused4) {
                                }
                            }
                        }
                    }
                }
            } catch (Exception unused5) {
            }
            dcqVar.j("running_tasks", jSONArray4);
        }
        long j3 = eca.f15279d;
        JSONObject jSONObject3 = (JSONObject) dcqVar.f13976f;
        try {
            dcqVar.j("start_time", Long.valueOf(j3));
            dcqVar.j("app_start_time_readable", new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss", Locale.getDefault()).format(new Date(j3)));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        Context context = this.f17467e;
        if (epyVar == null || !epyVar.r) {
            if (context != null) {
                String packageName = context.getPackageName();
                try {
                    ActivityManager activityManager2 = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
                    if (activityManager2 != null && (runningTasks = activityManager2.getRunningTasks(1)) != null && !runningTasks.isEmpty() && componentName != null) {
                    }
                } catch (Throwable unused6) {
                }
            }
            z = true;
            dcqVar.j("is_background", Boolean.valueOf(z));
            dcqVar.j("pid", Integer.valueOf(Process.myPid()));
            dcqVar.j("battery", Integer.valueOf(this.f17464b.f13765e));
            cmc cmcVar = this.f17468f;
            s = cmcVar.s();
            JSONArray jSONArray5 = new JSONArray();
            if (s != null) {
                jSONObject3.put("plugin_info", jSONArray5);
            } else {
                for (String str : s.keySet()) {
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put("package_name", str);
                    jSONObject4.put("version_code", s.get(str));
                    jSONArray5.put(jSONObject4);
                }
                jSONObject3.put("plugin_info", jSONArray5);
            }
            Context context2 = eca.f15278c;
            Process process = null;
            jSONObject3.put("miniapp_id", 0);
            jSONObject3.put("miniapp_version", (Object) null);
            iw = cmcVar.iw();
            jSONArray = new JSONArray();
            if (iw != null || iw.isEmpty()) {
                dcqVar.j("patch_info", jSONArray);
            } else {
                Iterator it2 = iw.iterator();
                while (it2.hasNext()) {
                    jSONArray.put((String) it2.next());
                }
                dcqVar.j("patch_info", jSONArray);
            }
            JSONObject jSONObject5 = new JSONObject();
            long j4 = 0;
            long j5 = eyt.bc(com.bytedance.sdk.openadsdk.api.plugin.d.dq(context).getParentFile());
            jSONObject5.put("inner_app_used", j5);
            long j6 = new StatFs(Environment.getRootDirectory().getPath()).getFreeBytes();
            jSONObject5.put("inner_free", j6);
            long j7 = new StatFs(Environment.getRootDirectory().getPath()).getTotalBytes();
            jSONObject5.put("inner_total", j7);
            if ("mounted".equals(Environment.getExternalStorageState()) && (dq = com.bytedance.sdk.openadsdk.api.plugin.d.dq(context, null)) != null) {
                j = eyt.bc(dq.getParentFile());
                jSONObject5.put("sdcard_app_used", j);
                if ("mounted".equals(Environment.getExternalStorageState())) {
                    j2 = Environment.getExternalStorageDirectory().getFreeSpace();
                    jSONObject5.put("sdcard_free", j2);
                    if ("mounted".equals(Environment.getExternalStorageState())) {
                        j4 = Environment.getExternalStorageDirectory().getTotalSpace();
                    }
                    jSONObject5.put("sdcard_total", j4);
                    dcqVar.j("storage", jSONObject5);
                    Context context3 = eca.f15278c;
                    CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                    process = Runtime.getRuntime().exec(new String[]{"logcat", "-t", String.valueOf(512), new String[]{"*:V", "*:D", "*:I", "*:W", "*:E", "*:F"}[1]});
                    new fwm(process.getInputStream(), copyOnWriteArrayList).start();
                    new fwm(process.getErrorStream(), copyOnWriteArrayList).start();
                    fvf fvfVar = new fvf("LogcatDump$TimerThread");
                    fvfVar.f17473a = process;
                    fvfVar.f17474b = 3000L;
                    fvfVar.start();
                    if (Build.VERSION.SDK_INT >= 26) {
                        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                        process.waitFor(3000L, TimeUnit.MILLISECONDS);
                    } else {
                        process.waitFor();
                    }
                    process.destroy();
                    JSONArray jSONArray6 = new JSONArray();
                    it = copyOnWriteArrayList.iterator();
                    while (it.hasNext()) {
                        jSONArray6.put((String) it.next());
                    }
                    dcqVar.j("logcat", jSONArray6);
                    p = cmcVar.p();
                    if (!TextUtils.isEmpty(p)) {
                        dcqVar.j("session_id", p);
                    }
                    Context context4 = eca.f15278c;
                    dcqVar.j("business", "default");
                    hashMap = (HashMap) eca.f15276a.f17729d;
                    if (hashMap != null) {
                        JSONObject jSONObject6 = new JSONObject();
                        for (String str2 : hashMap.keySet()) {
                            try {
                                jSONObject6.put(str2, hashMap.get(str2));
                            } catch (JSONException e3) {
                                e3.printStackTrace();
                            }
                        }
                        dcqVar.j("filters", jSONObject6);
                    }
                    dcqVar.j("crash_uuid", UUID.randomUUID().toString());
                    list = (List) ((HashMap) eca.f15276a.h).get(this.f17465c);
                    if (list != null) {
                        Object jSONObject7 = new JSONObject();
                        Iterator it3 = list.iterator();
                        if (it3.hasNext()) {
                            throw tn.c(it3);
                        }
                        dcqVar.j(MediationConstant.KEY_USE_POLICY_OBJ_CUSTOM, jSONObject7);
                    }
                    return dcqVar;
                }
                j2 = 0;
                jSONObject5.put("sdcard_free", j2);
                if ("mounted".equals(Environment.getExternalStorageState())) {
                }
                jSONObject5.put("sdcard_total", j4);
                dcqVar.j("storage", jSONObject5);
                Context context32 = eca.f15278c;
                CopyOnWriteArrayList copyOnWriteArrayList2 = new CopyOnWriteArrayList();
                process = Runtime.getRuntime().exec(new String[]{"logcat", "-t", String.valueOf(512), new String[]{"*:V", "*:D", "*:I", "*:W", "*:E", "*:F"}[1]});
                new fwm(process.getInputStream(), copyOnWriteArrayList2).start();
                new fwm(process.getErrorStream(), copyOnWriteArrayList2).start();
                fvf fvfVar2 = new fvf("LogcatDump$TimerThread");
                fvfVar2.f17473a = process;
                fvfVar2.f17474b = 3000L;
                fvfVar2.start();
                if (Build.VERSION.SDK_INT >= 26) {
                }
                process.destroy();
                JSONArray jSONArray62 = new JSONArray();
                it = copyOnWriteArrayList2.iterator();
                while (it.hasNext()) {
                }
                dcqVar.j("logcat", jSONArray62);
                p = cmcVar.p();
                if (!TextUtils.isEmpty(p)) {
                }
                Context context42 = eca.f15278c;
                dcqVar.j("business", "default");
                hashMap = (HashMap) eca.f15276a.f17729d;
                if (hashMap != null) {
                }
                dcqVar.j("crash_uuid", UUID.randomUUID().toString());
                list = (List) ((HashMap) eca.f15276a.h).get(this.f17465c);
                if (list != null) {
                }
                return dcqVar;
            }
            j = 0;
            jSONObject5.put("sdcard_app_used", j);
            if ("mounted".equals(Environment.getExternalStorageState())) {
            }
            j2 = 0;
            jSONObject5.put("sdcard_free", j2);
            if ("mounted".equals(Environment.getExternalStorageState())) {
            }
            jSONObject5.put("sdcard_total", j4);
            dcqVar.j("storage", jSONObject5);
            Context context322 = eca.f15278c;
            CopyOnWriteArrayList copyOnWriteArrayList22 = new CopyOnWriteArrayList();
            process = Runtime.getRuntime().exec(new String[]{"logcat", "-t", String.valueOf(512), new String[]{"*:V", "*:D", "*:I", "*:W", "*:E", "*:F"}[1]});
            new fwm(process.getInputStream(), copyOnWriteArrayList22).start();
            new fwm(process.getErrorStream(), copyOnWriteArrayList22).start();
            fvf fvfVar22 = new fvf("LogcatDump$TimerThread");
            fvfVar22.f17473a = process;
            fvfVar22.f17474b = 3000L;
            fvfVar22.start();
            if (Build.VERSION.SDK_INT >= 26) {
            }
            process.destroy();
            JSONArray jSONArray622 = new JSONArray();
            it = copyOnWriteArrayList22.iterator();
            while (it.hasNext()) {
            }
            dcqVar.j("logcat", jSONArray622);
            p = cmcVar.p();
            if (!TextUtils.isEmpty(p)) {
            }
            Context context422 = eca.f15278c;
            dcqVar.j("business", "default");
            hashMap = (HashMap) eca.f15276a.f17729d;
            if (hashMap != null) {
            }
            dcqVar.j("crash_uuid", UUID.randomUUID().toString());
            list = (List) ((HashMap) eca.f15276a.h).get(this.f17465c);
            if (list != null) {
            }
            return dcqVar;
        }
        z = false;
        dcqVar.j("is_background", Boolean.valueOf(z));
        dcqVar.j("pid", Integer.valueOf(Process.myPid()));
        dcqVar.j("battery", Integer.valueOf(this.f17464b.f13765e));
        cmc cmcVar2 = this.f17468f;
        s = cmcVar2.s();
        JSONArray jSONArray52 = new JSONArray();
        if (s != null) {
        }
        Context context22 = eca.f15278c;
        Process process2 = null;
        jSONObject3.put("miniapp_id", 0);
        jSONObject3.put("miniapp_version", (Object) null);
        iw = cmcVar2.iw();
        jSONArray = new JSONArray();
        if (iw != null) {
        }
        dcqVar.j("patch_info", jSONArray);
        JSONObject jSONObject52 = new JSONObject();
        long j42 = 0;
        long j52 = eyt.bc(com.bytedance.sdk.openadsdk.api.plugin.d.dq(context).getParentFile());
        jSONObject52.put("inner_app_used", j52);
        long j62 = new StatFs(Environment.getRootDirectory().getPath()).getFreeBytes();
        jSONObject52.put("inner_free", j62);
        long j72 = new StatFs(Environment.getRootDirectory().getPath()).getTotalBytes();
        jSONObject52.put("inner_total", j72);
        if ("mounted".equals(Environment.getExternalStorageState())) {
            j = eyt.bc(dq.getParentFile());
            jSONObject52.put("sdcard_app_used", j);
            if ("mounted".equals(Environment.getExternalStorageState())) {
            }
            j2 = 0;
            jSONObject52.put("sdcard_free", j2);
            if ("mounted".equals(Environment.getExternalStorageState())) {
            }
            jSONObject52.put("sdcard_total", j42);
            dcqVar.j("storage", jSONObject52);
            Context context3222 = eca.f15278c;
            CopyOnWriteArrayList copyOnWriteArrayList222 = new CopyOnWriteArrayList();
            process2 = Runtime.getRuntime().exec(new String[]{"logcat", "-t", String.valueOf(512), new String[]{"*:V", "*:D", "*:I", "*:W", "*:E", "*:F"}[1]});
            new fwm(process2.getInputStream(), copyOnWriteArrayList222).start();
            new fwm(process2.getErrorStream(), copyOnWriteArrayList222).start();
            fvf fvfVar222 = new fvf("LogcatDump$TimerThread");
            fvfVar222.f17473a = process2;
            fvfVar222.f17474b = 3000L;
            fvfVar222.start();
            if (Build.VERSION.SDK_INT >= 26) {
            }
            process2.destroy();
            JSONArray jSONArray6222 = new JSONArray();
            it = copyOnWriteArrayList222.iterator();
            while (it.hasNext()) {
            }
            dcqVar.j("logcat", jSONArray6222);
            p = cmcVar2.p();
            if (!TextUtils.isEmpty(p)) {
            }
            Context context4222 = eca.f15278c;
            dcqVar.j("business", "default");
            hashMap = (HashMap) eca.f15276a.f17729d;
            if (hashMap != null) {
            }
            dcqVar.j("crash_uuid", UUID.randomUUID().toString());
            list = (List) ((HashMap) eca.f15276a.h).get(this.f17465c);
            if (list != null) {
            }
            return dcqVar;
        }
        j = 0;
        jSONObject52.put("sdcard_app_used", j);
        if ("mounted".equals(Environment.getExternalStorageState())) {
        }
        j2 = 0;
        jSONObject52.put("sdcard_free", j2);
        if ("mounted".equals(Environment.getExternalStorageState())) {
        }
        jSONObject52.put("sdcard_total", j42);
        dcqVar.j("storage", jSONObject52);
        Context context32222 = eca.f15278c;
        CopyOnWriteArrayList copyOnWriteArrayList2222 = new CopyOnWriteArrayList();
        process2 = Runtime.getRuntime().exec(new String[]{"logcat", "-t", String.valueOf(512), new String[]{"*:V", "*:D", "*:I", "*:W", "*:E", "*:F"}[1]});
        new fwm(process2.getInputStream(), copyOnWriteArrayList2222).start();
        new fwm(process2.getErrorStream(), copyOnWriteArrayList2222).start();
        fvf fvfVar2222 = new fvf("LogcatDump$TimerThread");
        fvfVar2222.f17473a = process2;
        fvfVar2222.f17474b = 3000L;
        fvfVar2222.start();
        if (Build.VERSION.SDK_INT >= 26) {
        }
        process2.destroy();
        JSONArray jSONArray62222 = new JSONArray();
        it = copyOnWriteArrayList2222.iterator();
        while (it.hasNext()) {
        }
        dcqVar.j("logcat", jSONArray62222);
        p = cmcVar2.p();
        if (!TextUtils.isEmpty(p)) {
        }
        Context context42222 = eca.f15278c;
        dcqVar.j("business", "default");
        hashMap = (HashMap) eca.f15276a.f17729d;
        if (hashMap != null) {
        }
        dcqVar.j("crash_uuid", UUID.randomUUID().toString());
        list = (List) ((HashMap) eca.f15276a.h).get(this.f17465c);
        if (list != null) {
        }
        return dcqVar;
    }
}
