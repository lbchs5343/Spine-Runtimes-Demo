package com.tencent.bugly.proguard;

import android.app.ActivityManager;
import android.content.Context;
import android.os.FileObserver;
import android.os.Looper;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.anr.TraceFileHelper;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import g.awf;
import g.fig;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class ay {

    /* renamed from: f, reason: collision with root package name */
    public static ay f9653f;

    /* renamed from: b, reason: collision with root package name */
    public final ActivityManager f9655b;

    /* renamed from: c, reason: collision with root package name */
    final aa f9656c;

    /* renamed from: d, reason: collision with root package name */
    final ak f9657d;

    /* renamed from: e, reason: collision with root package name */
    String f9658e;

    /* renamed from: g, reason: collision with root package name */
    private final Context f9659g;
    private final ac h;
    private final as i;
    private FileObserver k;
    private bg m;
    private int n;

    /* renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f9654a = new AtomicBoolean(false);
    private final Object j = new Object();
    private boolean l = true;
    private long o = 0;

    public ay(Context context, ac acVar, aa aaVar, ak akVar, as asVar) {
        Context a2 = ap.a(context);
        this.f9659g = a2;
        this.f9655b = (ActivityManager) a2.getSystemService(TTDownloadField.TT_ACTIVITY);
        if (ap.b(NativeCrashHandler.getDumpFilePath())) {
            this.f9658e = context.getDir("bugly", 0).getAbsolutePath();
        } else {
            this.f9658e = NativeCrashHandler.getDumpFilePath();
        }
        this.f9656c = aaVar;
        this.f9657d = akVar;
        this.h = acVar;
        this.i = asVar;
    }

    private CrashDetailBean a(ax axVar) {
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        try {
            crashDetailBean.C = ab.j();
            crashDetailBean.D = ab.f();
            crashDetailBean.E = ab.l();
            crashDetailBean.F = this.f9656c.k();
            crashDetailBean.G = this.f9656c.j();
            crashDetailBean.H = this.f9656c.l();
            crashDetailBean.I = ab.b(this.f9659g);
            crashDetailBean.J = ab.g();
            crashDetailBean.K = ab.h();
            crashDetailBean.f9505b = 3;
            crashDetailBean.f9508e = this.f9656c.g();
            aa aaVar = this.f9656c;
            crashDetailBean.f9509f = aaVar.o;
            crashDetailBean.f9510g = aaVar.q();
            crashDetailBean.m = this.f9656c.f();
            crashDetailBean.n = "ANR_EXCEPTION";
            crashDetailBean.o = axVar.f9651f;
            crashDetailBean.q = axVar.f9652g;
            HashMap hashMap = new HashMap();
            crashDetailBean.T = hashMap;
            hashMap.put("BUGLY_CR_01", axVar.f9650e);
            String str = crashDetailBean.q;
            int indexOf = str != null ? str.indexOf("\n") : -1;
            crashDetailBean.p = indexOf > 0 ? crashDetailBean.q.substring(0, indexOf) : "GET_FAIL";
            crashDetailBean.r = axVar.f9648c;
            String str2 = crashDetailBean.q;
            if (str2 != null) {
                crashDetailBean.u = ap.c(str2.getBytes());
            }
            crashDetailBean.z = axVar.f9647b;
            crashDetailBean.A = axVar.f9646a;
            crashDetailBean.B = "main(1)";
            crashDetailBean.L = this.f9656c.s();
            crashDetailBean.h = this.f9656c.p();
            crashDetailBean.i = this.f9656c.A();
            crashDetailBean.v = axVar.f9649d;
            aa aaVar2 = this.f9656c;
            crashDetailBean.P = aaVar2.u;
            crashDetailBean.Q = aaVar2.f9533a;
            crashDetailBean.R = aaVar2.a();
            crashDetailBean.U = this.f9656c.z();
            aa aaVar3 = this.f9656c;
            crashDetailBean.V = aaVar3.x;
            crashDetailBean.W = aaVar3.t();
            crashDetailBean.X = this.f9656c.y();
            crashDetailBean.y = ao.a();
            return crashDetailBean;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return crashDetailBean;
        }
    }

    public static synchronized ay a() {
        ay ayVar;
        synchronized (ay.class) {
            ayVar = f9653f;
        }
        return ayVar;
    }

    private static String a(List<ba> list, long j) {
        if (list == null || list.isEmpty()) {
            return "main thread stack not enable";
        }
        StringBuilder sb = new StringBuilder(4096);
        sb.append("\n>>>>> 以下为anr过程中主线程堆栈记录，可根据堆栈出现次数推测在该堆栈阻塞的时间，出现次数越多对anr贡献越大，越可能是造成anr的原因 >>>>>\n\n>>>>> Thread Stack Traces Records Start >>>>>\n");
        for (int i = 0; i < list.size(); i++) {
            ba baVar = list.get(i);
            sb.append("Thread name:");
            sb.append(baVar.f9660a);
            sb.append("\n");
            long j2 = baVar.f9661b - j;
            awf.a("Got ", j2 <= 0 ? "before " : "after ", "anr:", sb);
            sb.append(Math.abs(j2));
            sb.append("ms\n");
            sb.append(baVar.f9662c);
            sb.append("\n");
            if (sb.length() * 2 >= 101376) {
                break;
            }
        }
        sb.append("\n<<<<< Thread Stack Traces Records End <<<<<\n");
        return sb.toString();
    }

    public static /* synthetic */ void a(ay ayVar) {
        long currentTimeMillis = (System.currentTimeMillis() + at.j) - ap.b();
        am.a(ayVar.f9658e, "bugly_trace_", ".txt", currentTimeMillis);
        am.a(ayVar.f9658e, "manual_bugly_trace_", ".txt", currentTimeMillis);
        am.a(ayVar.f9658e, "main_stack_record_", ".txt", currentTimeMillis);
        am.a(ayVar.f9658e, "main_stack_record_", ".txt.merged", currentTimeMillis);
    }

    private static boolean a(String str, String str2, String str3) {
        Map<String, String[]> map;
        TraceFileHelper.a readTargetDumpInfo = TraceFileHelper.readTargetDumpInfo(str3, str, true);
        if (readTargetDumpInfo == null || (map = readTargetDumpInfo.f9514d) == null || map.isEmpty()) {
            al.e("not found trace dump for %s", str3);
            return false;
        }
        StringBuilder sb = new StringBuilder(1024);
        String[] strArr = readTargetDumpInfo.f9514d.get("main");
        if (strArr != null && strArr.length >= 3) {
            sb.append("\"main\" tid=");
            sb.append(strArr[2]);
            sb.append(" :\n");
            sb.append(strArr[0]);
            sb.append("\n");
            sb.append(strArr[1]);
            sb.append("\n\n");
        }
        for (Map.Entry<String, String[]> entry : readTargetDumpInfo.f9514d.entrySet()) {
            if (!entry.getKey().equals("main") && entry.getValue() != null && entry.getValue().length >= 3) {
                sb.append("\"");
                sb.append(entry.getKey());
                sb.append("\" tid=");
                sb.append(entry.getValue()[2]);
                sb.append(" :\n");
                sb.append(entry.getValue()[0]);
                sb.append("\n");
                sb.append(entry.getValue()[1]);
                sb.append("\n\n");
            }
        }
        return am.a(str2, sb.toString(), sb.length() * 2);
    }

    private synchronized void c() {
        if (e()) {
            al.d("start when started!", new Object[0]);
            return;
        }
        c cVar = new c(this);
        this.k = cVar;
        try {
            cVar.startWatching();
            al.a("start anr monitor!", new Object[0]);
            this.f9657d.a(new fig(this, 0));
        } catch (Throwable th) {
            this.k = null;
            al.d("start anr monitor failed!", new Object[0]);
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private synchronized void c(boolean z) {
        if (z) {
            g();
        } else {
            h();
        }
    }

    private synchronized void d() {
        if (!e()) {
            al.d("close when closed!", new Object[0]);
            return;
        }
        try {
            this.k.stopWatching();
            this.k = null;
            al.d("close anr monitor!", new Object[0]);
        } catch (Throwable th) {
            al.d("stop anr monitor failed!", new Object[0]);
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private synchronized void d(boolean z) {
        if (this.l != z) {
            al.a("user change anr %b", Boolean.valueOf(z));
            this.l = z;
        }
    }

    private synchronized boolean e() {
        return this.k != null;
    }

    private synchronized boolean f() {
        return this.l;
    }

    private synchronized void g() {
        if (e()) {
            al.d("start when started!", new Object[0]);
            return;
        }
        if (TextUtils.isEmpty(this.f9658e)) {
            return;
        }
        synchronized (this.j) {
            try {
                bg bgVar = this.m;
                if (bgVar != null) {
                    if (!bgVar.isAlive()) {
                    }
                }
                bg bgVar2 = new bg();
                this.m = bgVar2;
                boolean z = this.f9656c.S;
                bgVar2.f9687b = z;
                al.c("set record stack trace enable:".concat(String.valueOf(z)), new Object[0]);
                bg bgVar3 = this.m;
                StringBuilder sb = new StringBuilder("Bugly-ThreadMonitor");
                int i = this.n;
                this.n = i + 1;
                sb.append(i);
                bgVar3.setName(sb.toString());
                this.m.b();
            } catch (Throwable th) {
                throw th;
            }
        }
        c cVar = new c(this, this.f9658e);
        this.k = cVar;
        try {
            cVar.startWatching();
            al.a("startWatchingPrivateAnrDir! dumFilePath is %s", this.f9658e);
            this.f9657d.a(new fig(this, 1));
        } catch (Throwable th2) {
            this.k = null;
            al.d("startWatchingPrivateAnrDir failed!", new Object[0]);
            if (al.a(th2)) {
                return;
            }
            th2.printStackTrace();
        }
    }

    private synchronized void h() {
        if (!e()) {
            al.d("close when closed!", new Object[0]);
            return;
        }
        synchronized (this.j) {
            try {
                bg bgVar = this.m;
                if (bgVar != null) {
                    bgVar.a();
                    this.m = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        al.a("stopWatchingPrivateAnrDir", new Object[0]);
        try {
            this.k.stopWatching();
            this.k = null;
            al.d("close anr monitor!", new Object[0]);
        } catch (Throwable th2) {
            al.d("stop anr monitor failed!", new Object[0]);
            if (al.a(th2)) {
                return;
            }
            th2.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0070 A[Catch: all -> 0x005c, TryCatch #4 {all -> 0x005c, blocks: (B:3:0x0007, B:4:0x0017, B:10:0x002d, B:12:0x004d, B:14:0x0053, B:18:0x0060, B:21:0x0070, B:23:0x0081, B:27:0x008c, B:29:0x00a9, B:30:0x00ad, B:33:0x00cb, B:35:0x00fe, B:38:0x010b, B:40:0x0134, B:41:0x0162, B:42:0x0164, B:49:0x0176, B:50:0x0187, B:51:0x0197, B:53:0x01a8, B:54:0x01b7, B:56:0x01db, B:57:0x01e0, B:58:0x01e7, B:70:0x0201, B:71:0x01b0, B:77:0x018f, B:78:0x014c, B:79:0x0190, B:80:0x00c7, B:82:0x0079, B:87:0x0203, B:44:0x0165, B:46:0x0169, B:47:0x0173, B:60:0x01e8, B:62:0x01ec, B:63:0x01fb, B:6:0x0018, B:8:0x001c, B:9:0x002c), top: B:2:0x0007, inners: #0, #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0081 A[Catch: all -> 0x005c, TRY_LEAVE, TryCatch #4 {all -> 0x005c, blocks: (B:3:0x0007, B:4:0x0017, B:10:0x002d, B:12:0x004d, B:14:0x0053, B:18:0x0060, B:21:0x0070, B:23:0x0081, B:27:0x008c, B:29:0x00a9, B:30:0x00ad, B:33:0x00cb, B:35:0x00fe, B:38:0x010b, B:40:0x0134, B:41:0x0162, B:42:0x0164, B:49:0x0176, B:50:0x0187, B:51:0x0197, B:53:0x01a8, B:54:0x01b7, B:56:0x01db, B:57:0x01e0, B:58:0x01e7, B:70:0x0201, B:71:0x01b0, B:77:0x018f, B:78:0x014c, B:79:0x0190, B:80:0x00c7, B:82:0x0079, B:87:0x0203, B:44:0x0165, B:46:0x0169, B:47:0x0173, B:60:0x01e8, B:62:0x01ec, B:63:0x01fb, B:6:0x0018, B:8:0x001c, B:9:0x002c), top: B:2:0x0007, inners: #0, #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008c A[Catch: all -> 0x005c, TRY_ENTER, TryCatch #4 {all -> 0x005c, blocks: (B:3:0x0007, B:4:0x0017, B:10:0x002d, B:12:0x004d, B:14:0x0053, B:18:0x0060, B:21:0x0070, B:23:0x0081, B:27:0x008c, B:29:0x00a9, B:30:0x00ad, B:33:0x00cb, B:35:0x00fe, B:38:0x010b, B:40:0x0134, B:41:0x0162, B:42:0x0164, B:49:0x0176, B:50:0x0187, B:51:0x0197, B:53:0x01a8, B:54:0x01b7, B:56:0x01db, B:57:0x01e0, B:58:0x01e7, B:70:0x0201, B:71:0x01b0, B:77:0x018f, B:78:0x014c, B:79:0x0190, B:80:0x00c7, B:82:0x0079, B:87:0x0203, B:44:0x0165, B:46:0x0169, B:47:0x0173, B:60:0x01e8, B:62:0x01ec, B:63:0x01fb, B:6:0x0018, B:8:0x001c, B:9:0x002c), top: B:2:0x0007, inners: #0, #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01a8 A[Catch: all -> 0x005c, TryCatch #4 {all -> 0x005c, blocks: (B:3:0x0007, B:4:0x0017, B:10:0x002d, B:12:0x004d, B:14:0x0053, B:18:0x0060, B:21:0x0070, B:23:0x0081, B:27:0x008c, B:29:0x00a9, B:30:0x00ad, B:33:0x00cb, B:35:0x00fe, B:38:0x010b, B:40:0x0134, B:41:0x0162, B:42:0x0164, B:49:0x0176, B:50:0x0187, B:51:0x0197, B:53:0x01a8, B:54:0x01b7, B:56:0x01db, B:57:0x01e0, B:58:0x01e7, B:70:0x0201, B:71:0x01b0, B:77:0x018f, B:78:0x014c, B:79:0x0190, B:80:0x00c7, B:82:0x0079, B:87:0x0203, B:44:0x0165, B:46:0x0169, B:47:0x0173, B:60:0x01e8, B:62:0x01ec, B:63:0x01fb, B:6:0x0018, B:8:0x001c, B:9:0x002c), top: B:2:0x0007, inners: #0, #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01db A[Catch: all -> 0x005c, TryCatch #4 {all -> 0x005c, blocks: (B:3:0x0007, B:4:0x0017, B:10:0x002d, B:12:0x004d, B:14:0x0053, B:18:0x0060, B:21:0x0070, B:23:0x0081, B:27:0x008c, B:29:0x00a9, B:30:0x00ad, B:33:0x00cb, B:35:0x00fe, B:38:0x010b, B:40:0x0134, B:41:0x0162, B:42:0x0164, B:49:0x0176, B:50:0x0187, B:51:0x0197, B:53:0x01a8, B:54:0x01b7, B:56:0x01db, B:57:0x01e0, B:58:0x01e7, B:70:0x0201, B:71:0x01b0, B:77:0x018f, B:78:0x014c, B:79:0x0190, B:80:0x00c7, B:82:0x0079, B:87:0x0203, B:44:0x0165, B:46:0x0169, B:47:0x0173, B:60:0x01e8, B:62:0x01ec, B:63:0x01fb, B:6:0x0018, B:8:0x001c, B:9:0x002c), top: B:2:0x0007, inners: #0, #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01e8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01b0 A[Catch: all -> 0x005c, TryCatch #4 {all -> 0x005c, blocks: (B:3:0x0007, B:4:0x0017, B:10:0x002d, B:12:0x004d, B:14:0x0053, B:18:0x0060, B:21:0x0070, B:23:0x0081, B:27:0x008c, B:29:0x00a9, B:30:0x00ad, B:33:0x00cb, B:35:0x00fe, B:38:0x010b, B:40:0x0134, B:41:0x0162, B:42:0x0164, B:49:0x0176, B:50:0x0187, B:51:0x0197, B:53:0x01a8, B:54:0x01b7, B:56:0x01db, B:57:0x01e0, B:58:0x01e7, B:70:0x0201, B:71:0x01b0, B:77:0x018f, B:78:0x014c, B:79:0x0190, B:80:0x00c7, B:82:0x0079, B:87:0x0203, B:44:0x0165, B:46:0x0169, B:47:0x0173, B:60:0x01e8, B:62:0x01ec, B:63:0x01fb, B:6:0x0018, B:8:0x001c, B:9:0x002c), top: B:2:0x0007, inners: #0, #1, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(long j, String str) {
        ActivityManager.ProcessErrorStateInfo a2;
        CrashDetailBean a3;
        List<ba> c2;
        boolean z;
        try {
            al.c("anr time:%s", Long.valueOf(j));
            synchronized (this.j) {
                try {
                    if (this.m != null) {
                        al.c("Disable record main stack trace.", new Object[0]);
                        this.m.c();
                    }
                } finally {
                }
            }
            String a4 = ap.a(Looper.getMainLooper().getThread());
            Map<String, String> a5 = ap.a(this.f9656c.R, at.h);
            if (this.f9656c.a()) {
                if (!ab.o() && !ab.p()) {
                    z = false;
                    al.c("isAnrCrashDevice:%s", Boolean.valueOf(z));
                    if (z) {
                        a2 = az.a(this.f9655b, 21000L);
                        if (a2 != null) {
                            al.c("proc state is invisible or not my proc!", new Object[0]);
                            return;
                        }
                        ax axVar = new ax();
                        axVar.f9648c = j;
                        axVar.f9646a = a2.processName;
                        axVar.f9651f = a2.shortMsg;
                        axVar.f9650e = a2.longMsg;
                        axVar.f9647b = a5;
                        axVar.f9652g = a4;
                        if (TextUtils.isEmpty(a4)) {
                            axVar.f9652g = "main stack is null , some error may be encountered.";
                        }
                        Long valueOf = Long.valueOf(axVar.f9648c);
                        String str2 = axVar.f9649d;
                        String str3 = axVar.f9646a;
                        String str4 = axVar.f9652g;
                        String str5 = axVar.f9651f;
                        String str6 = axVar.f9650e;
                        Map<String, String> map = axVar.f9647b;
                        al.c("anr time:%d\ntrace file:%s\nproc:%s\nmain stack:%s\nshort msg:%s\nlong msg:%s\n threads:%d", valueOf, str2, str3, str4, str5, str6, Integer.valueOf(map == null ? 0 : map.size()));
                        al.a("found visible anr , start to upload!", new Object[0]);
                        al.c("trace file:%s", str);
                        if (!TextUtils.isEmpty(str) && new File(str).exists()) {
                            File file = new File(this.f9658e, "bugly_trace_" + j + ".txt");
                            al.c("trace file exists", new Object[0]);
                            if (str.startsWith("/data/anr/")) {
                                al.a("backup trace isOK:%s", Boolean.valueOf(a(str, file.getAbsolutePath(), axVar.f9646a)));
                            } else {
                                al.a("trace file rename :%s", Boolean.valueOf(new File(str).renameTo(file)));
                            }
                            synchronized (this.j) {
                                try {
                                    bg bgVar = this.m;
                                    c2 = bgVar != null ? bgVar.f9686a.c() : null;
                                } finally {
                                }
                            }
                            if (c2 != null) {
                                String a6 = a(c2, j);
                                al.c("save main stack trace", new Object[0]);
                                am.a(file, a6, 2147483647L, true);
                            }
                            axVar.f9649d = file.getAbsolutePath();
                            a3 = a(axVar);
                            at.a().a(a3);
                            if (a3.f9504a < 0) {
                                al.a("backup anr record success!", new Object[0]);
                            } else {
                                al.d("backup anr record fail!", new Object[0]);
                            }
                            as.a("ANR", ap.a(j), axVar.f9646a, "main", axVar.f9652g, a3);
                            if (!this.i.a(a3, !ab.r())) {
                                this.i.b(a3, true);
                            }
                            this.i.a(a3);
                            synchronized (this.j) {
                                try {
                                    if (this.m != null) {
                                        al.c("Finish anr process.", new Object[0]);
                                        this.m.d();
                                    }
                                } finally {
                                }
                            }
                            return;
                        }
                        al.c("trace file is null or not exists, just ignore", new Object[0]);
                        a3 = a(axVar);
                        at.a().a(a3);
                        if (a3.f9504a < 0) {
                        }
                        as.a("ANR", ap.a(j), axVar.f9646a, "main", axVar.f9652g, a3);
                        if (!this.i.a(a3, !ab.r())) {
                        }
                        this.i.a(a3);
                        synchronized (this.j) {
                        }
                    }
                }
                z = true;
                al.c("isAnrCrashDevice:%s", Boolean.valueOf(z));
                if (z) {
                }
            }
            a2 = az.a(this.f9655b, 0L);
            if (a2 != null) {
            }
        } catch (Throwable th) {
            try {
                al.b(th);
            } finally {
                a(false);
            }
        }
    }

    public final boolean a(long j) {
        if (Math.abs(j - this.o) < ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT) {
            al.d("should not process ANR too Fre in %dms", 10000);
            return true;
        }
        this.o = j;
        return false;
    }

    public final boolean a(boolean z) {
        boolean compareAndSet = this.f9654a.compareAndSet(!z, z);
        al.c("tryChangeAnrState to %s, success:%s", Boolean.valueOf(z), Boolean.valueOf(compareAndSet));
        return compareAndSet;
    }

    public final synchronized void b() {
        al.d("customer decides whether to open or close.", new Object[0]);
    }

    public final void b(boolean z) {
        d(z);
        boolean f2 = f();
        ac a2 = ac.a();
        if (a2 != null) {
            f2 = f2 && a2.c().f9502f;
        }
        if (f2 != e()) {
            al.a("anr changed to %b", Boolean.valueOf(f2));
            c(f2);
        }
    }
}
