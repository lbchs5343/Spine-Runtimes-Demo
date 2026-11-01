package g;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import cn.trinea.android.developertools.R;
import com.tencent.bugly.crashreport.crash.anr.TraceFileHelper;
import j$.util.Objects;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* loaded from: classes3.dex */
public final class gfh implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final Object f18019a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f18020b;

    /* renamed from: c, reason: collision with root package name */
    public Object f18021c;

    public /* synthetic */ gfh(int i, Object obj, Object obj2, boolean z) {
        this.f18020b = i;
        this.f18019a = obj;
        this.f18021c = obj2;
    }

    public gfh(ebs ebsVar, View view, Rect rect) {
        this.f18020b = 13;
        this.f18021c = view;
        this.f18019a = rect;
    }

    public /* synthetic */ gfh(Object obj, int i, Object obj2) {
        this.f18020b = i;
        this.f18021c = obj;
        this.f18019a = obj2;
    }

    private final void d() {
        fkj u = ((gmu) this.f18019a).i.ax.u((String) this.f18021c);
        if (u == null || !u.ab()) {
            return;
        }
        synchronized (((gmu) this.f18019a).f18420e) {
            ((gmu) this.f18019a).l.put(awt.j(u), u);
            gmu gmuVar = (gmu) this.f18019a;
            ((gmu) this.f18019a).f18419d.put(awt.j(u), gx.b(gmuVar.f18418c, u, (cpk) ((gkr) gmuVar.k).f18321a, gmuVar));
        }
    }

    private final void e() {
        Object obj;
        ((Runnable) this.f18021c).run();
        obj = ((com.tencent.bugly.proguard.ai) this.f18019a).j;
        synchronized (obj) {
            com.tencent.bugly.proguard.ai.b((com.tencent.bugly.proguard.ai) this.f18019a);
        }
    }

    private final void f() {
        com.tencent.bugly.proguard.aq aqVar;
        Context context;
        com.tencent.bugly.proguard.aq aqVar2;
        IntentFilter intentFilter;
        try {
            aqVar = com.tencent.bugly.proguard.aq.f9602d;
            com.tencent.bugly.proguard.al.a(aqVar.getClass(), "Register broadcast receiver of Bugly.", new Object[0]);
            synchronized (((com.tencent.bugly.proguard.aq) this.f18021c)) {
                context = ((com.tencent.bugly.proguard.aq) this.f18019a).f9604b;
                aqVar2 = com.tencent.bugly.proguard.aq.f9602d;
                intentFilter = ((com.tencent.bugly.proguard.aq) this.f18019a).f9603a;
                context.registerReceiver(aqVar2, intentFilter, "com.tencent.bugly.BuglyBroadcastReceiver.permission", null);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        Throwable s;
        String str;
        boolean z;
        int i;
        int i2;
        int i3;
        boolean z2;
        egz egzVar;
        Drawable drawable;
        int i4 = 2;
        boolean z3 = false;
        int i5 = 0;
        int i6 = 1;
        switch (this.f18020b) {
            case 0:
                fkn fknVar = (fkn) this.f18019a;
                gew gewVar = (gew) this.f18021c;
                if ((gewVar instanceof ang) && (s = ((ang) gewVar).s()) != null) {
                    fknVar.e(s);
                    return;
                }
                try {
                    boolean isDone = gewVar.isDone();
                    Future future = gewVar;
                    if (!isDone) {
                        throw new IllegalStateException(eg.t("Future was expected to be done: %s", gewVar));
                    }
                    while (true) {
                        try {
                            Object obj = future.get();
                            if (z3) {
                                Thread.currentThread().interrupt();
                            }
                            Integer num = (Integer) obj;
                            int intValue = num.intValue();
                            bpy bpyVar = (bpy) fknVar.f16937a;
                            if (intValue <= 0) {
                                ((Runnable) fknVar.f16940d).run();
                                return;
                            }
                            int i7 = fknVar.f16938b;
                            int intValue2 = num.intValue();
                            bpyVar.getClass();
                            ejd s2 = edc.s(intValue2, "Billing override value was set by a license tester.");
                            bpyVar.bq(hm.LICENSE_TESTER_BILLING_OVERRIDE, i7, s2);
                            ((dts) fknVar.f16939c).accept(s2);
                            return;
                        } catch (InterruptedException unused) {
                            z3 = true;
                            future = future;
                        } catch (Throwable th) {
                            if (z3) {
                                Thread.currentThread().interrupt();
                            }
                            throw th;
                        }
                    }
                } catch (ExecutionException e2) {
                    fknVar.e(e2.getCause());
                    return;
                } catch (Throwable th2) {
                    fknVar.e(th2);
                    return;
                }
                break;
            case 1:
                String str2 = "";
                bid bidVar = (bid) this.f18019a;
                bidVar.webView.setWebViewClient(new doe(i6, this));
                str = "?skin=sons-of-obsidian";
                z = bidVar.isThemeAdaptive;
                int i8 = -16777216;
                int i9 = -1;
                if (z) {
                    int z4 = eyt.z(bidVar, R.attr.colorSurface, -1);
                    i9 = eyt.z(bidVar, R.attr.colorOnSurface, -16777216);
                    int z5 = eyt.z(bidVar, R.attr.colorOnSurfaceVariant, -12303292);
                    i2 = eyt.z(bidVar, R.attr.colorPrimary, i9);
                    i3 = eyt.z(bidVar, R.attr.colorSecondary, i2);
                    str = (bidVar.getResources().getConfiguration().uiMode & 48) != 32 ? "" : "?skin=sons-of-obsidian";
                    i8 = z4;
                    i = z5;
                } else {
                    i = -3355444;
                    i2 = -1;
                    i3 = -3355444;
                }
                bidVar.webView.setBackgroundColor(i8);
                int i10 = i8 & 16777215;
                String format = String.format("#%06X", Integer.valueOf(i10));
                String format2 = String.format("#%06X", Integer.valueOf(i9 & 16777215));
                String format3 = String.format("#%06X", Integer.valueOf(i & 16777215));
                String format4 = String.format("#%06X", Integer.valueOf(i2 & 16777215));
                String format5 = String.format("#%06X", Integer.valueOf(i3 & 16777215));
                String format6 = String.format("#%06X", Integer.valueOf(i10));
                z2 = bidVar.isThemeAdaptive;
                if (z2) {
                    StringBuilder o = tn.o("ol.linenums li{color:", format3, " !important;background:", format6, " !important;}pre.prettyprint .pln,pre.prettyprint .pun,pre.prettyprint .opn,pre.prettyprint .clo,pre.prettyprint .atn{color:");
                    awf.y(o, format2, " !important;}pre.prettyprint .com{color:", format3, " !important;}pre.prettyprint .kwd,pre.prettyprint .tag,pre.prettyprint .typ{color:");
                    str2 = awf.r(o, format4, " !important;}pre.prettyprint .str,pre.prettyprint .atv,pre.prettyprint .lit,pre.prettyprint .dec,pre.prettyprint .var,pre.prettyprint .fun{color:", format5, " !important;}");
                }
                a.a.ab abVar = bidVar.webView;
                StringBuilder o2 = tn.o("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\"><html xmlns=\"http://www.w3.org/1999/xhtml\"><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" /><meta name=\"color-scheme\" content=\"light dark\" /><script src=\"run_prettify.js", str, "\"></script><style>html,body,pre.prettyprint{background:", format, " !important;color:");
                awf.y(o2, format2, " !important;}body{margin:0;padding:0 12px 12px;}pre.prettyprint{border:0 !important;margin:0 !important;}", str2, "</style></head><body><pre class=\"prettyprint linenums\">");
                abVar.loadDataWithBaseURL("file:///android_asset/", awf.ad(o2, (String) this.f18021c, "</pre></body></html>"), "text/html", "UTF-8", null);
                return;
            case 2:
                gm.c((Activity) ((gfh) this.f18019a).f18019a, ((dsg) this.f18021c).f14707d == 0 ? R.string.accessibility_by_root_success : R.string.accessibility_by_root_fail);
                return;
            case 3:
                new Handler(Looper.getMainLooper()).post(new gfh(i4, this, ffb.bb(new String[]{tn.x("settings put secure enabled_accessibility_services ", (String) this.f18021c), "settings put secure accessibility_enabled 1"}, true, -1L), z3));
                return;
            case 4:
                csq csqVar = (csq) this.f18021c;
                esf esfVar = (esf) this.f18019a;
                ftn ftnVar = esfVar.p;
                if (ftnVar != null && (egzVar = ftnVar.h) != null) {
                    egzVar._cj(ftnVar);
                }
                View view = (View) esfVar.i;
                if (view != null && view.getWindowToken() != null) {
                    if (!csqVar.n()) {
                        if (csqVar.f12455d != null) {
                            csqVar.l(0, 0, false, false);
                        }
                    }
                    esfVar.t = csqVar;
                }
                esfVar.s = null;
                return;
            case 5:
                ((frw) this.f18021c).f17319d = this.f18019a;
                return;
            case 6:
                ((Application) this.f18021c).unregisterActivityLifecycleCallbacks((frw) this.f18019a);
                return;
            case 7:
                Object obj2 = this.f18019a;
                Object obj3 = this.f18021c;
                try {
                    Method method = dfz.f14111a;
                    if (method != null) {
                        method.invoke(obj3, obj2, Boolean.FALSE, "AppCompat recreation");
                    } else {
                        dfz.f14112b.invoke(obj3, obj2, Boolean.FALSE);
                    }
                    return;
                } catch (RuntimeException e3) {
                    if (e3.getClass() == RuntimeException.class && e3.getMessage() != null && e3.getMessage().startsWith("Unable to stop")) {
                        throw e3;
                    }
                    return;
                } catch (Throwable th3) {
                    Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th3);
                    return;
                }
            case 8:
                c.c.b bVar = (c.c.b) this.f18019a;
                int i11 = c.c.b.j;
                auj aujVar = bVar.ae;
                StringBuilder sb = new StringBuilder();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(acw.af(bVar.bb));
                String str3 = File.separator;
                sb2.append(str3);
                sb2.append("apk");
                sb.append(sb2.toString());
                sb.append(str3);
                sb.append(aujVar.j);
                sb.append(" ");
                SimpleDateFormat simpleDateFormat = doq.ac;
                SimpleDateFormat simpleDateFormat2 = dlb.f14354a;
                sb.append(dlb.d(System.currentTimeMillis(), simpleDateFormat));
                sb.append(".apk");
                File file = new File(sb.toString());
                if (!file.exists()) {
                    file.getParentFile().mkdirs();
                }
                try {
                    buj.y((String) this.f18021c, file.getPath());
                    eqi eqiVar = bVar.ah;
                    eqiVar.sendMessage(eqiVar.obtainMessage(2, file.getParentFile().getPath()));
                    return;
                } catch (Exception e4) {
                    eqi eqiVar2 = bVar.ah;
                    eqiVar2.sendMessage(eqiVar2.obtainMessage(3));
                    Log.e("PullerA", "", e4);
                    return;
                }
            case 9:
                eax eaxVar = (eax) this.f18019a;
                if (!((auj) eaxVar.f15212d).h.equals(((bcq) eaxVar.f15209a).ak.getTag()) || (drawable = (Drawable) this.f18021c) == null) {
                    return;
                }
                ((bcq) eaxVar.f15209a).ak.setImageDrawable(drawable);
                return;
            case 10:
                ((dgx) this.f18021c).f14156c.d((ArrayList) this.f18019a);
                return;
            case 11:
                fnq fnqVar = (fnq) this.f18021c;
                Typeface typeface = (Typeface) this.f18019a;
                dzm dzmVar = (dzm) fnqVar.f17099f;
                if (dzmVar != null) {
                    dzmVar.d(typeface);
                    return;
                }
                return;
            case 12:
                String str4 = (String) this.f18021c;
                b.b.b bVar2 = (b.b.b) this.f18019a;
                File file2 = new File(bVar2.k);
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                dha.a(bVar2.bb);
                try {
                    SimpleDateFormat simpleDateFormat3 = dlb.f14354a;
                    System.currentTimeMillis();
                    int av = cro.av(bVar2.bb, 0, "applist_decompile");
                    int i12 = 7;
                    if (av == 0) {
                        ur n = b.b.b.n(bVar2, str4, file2);
                        n.ar = true;
                        cqc cqcVar = new cqc(n);
                        cqcVar.aa(new eie(i12, bVar2));
                        cqcVar.u(new emr(i12, bVar2));
                        cqcVar.close();
                        ur n2 = b.b.b.n(bVar2, str4, file2);
                        n2.f20122g = true;
                        b.b.b.m(bVar2, n2);
                        cqc cqcVar2 = new cqc(n2);
                        cqcVar2.v(new eie(i12, bVar2));
                        cqcVar2.w(new emr(i12, bVar2));
                        cqcVar2.close();
                        b.b.b.p(bVar2, file2);
                    } else {
                        ur n3 = b.b.b.n(bVar2, str4, file2);
                        n3.f20122g = av == 1;
                        n3.ar = av == 2;
                        if (av == 1 || av == 0) {
                            b.b.b.m(bVar2, n3);
                        }
                        cqc cqcVar3 = new cqc(n3);
                        cqcVar3.v(new eie(i12, bVar2));
                        cqcVar3.w(new emr(i12, bVar2));
                        cqcVar3.close();
                        if (av == 1) {
                            b.b.b.p(bVar2, file2);
                        }
                    }
                    eqi eqiVar3 = bVar2.ah;
                    eqiVar3.sendMessage(eqiVar3.obtainMessage(2, file2.getPath()));
                    return;
                } catch (Exception unused2) {
                    eqi eqiVar4 = bVar2.ah;
                    eqiVar4.sendMessage(eqiVar4.obtainMessage(3));
                    return;
                }
            case 13:
                ebs.t((Rect) this.f18019a, (View) this.f18021c);
                return;
            case 14:
                ((fwj) this.f18021c).g();
                if (androidx.fragment.app.v.ao(2)) {
                    Objects.toString((androidx.fragment.app.a) this.f18019a);
                    return;
                }
                return;
            case 15:
                cyl f2 = cyl.f();
                int i13 = ehs.f15557a;
                fkj fkjVar = (fkj) this.f18021c;
                f2.getClass();
                ((ehs) this.f18019a).f15559c.r(fkjVar);
                return;
            case 16:
                ((gsn) this.f18021c).t((drl) this.f18019a);
                return;
            case 17:
                awt.ab((axu) this.f18021c)._z(eg.i((Throwable) this.f18019a));
                return;
            case 18:
                baq baqVar = (baq) this.f18019a;
                if (baqVar.isFinishing() || baqVar.isDestroyed() || baqVar.s != ((he) this.f18021c)) {
                    return;
                }
                fzn.l(baqVar.getApplicationContext()).q(new Intent("inspector_first_finish"));
                if (baqVar.p.s(baqVar.s) && !acw.o(baqVar.bc, "tips_click_zone")) {
                    gm.c(baqVar.bc, R.string.li_cd_click_to_view);
                    gm.c(baqVar.bc, R.string.li_cd_back);
                }
                if (!"com.tencent.mm".equals(baqVar.s.getPackageName()) || baqVar.s.getChildCount() <= 0) {
                    return;
                }
                Iterator<he> it = baqVar.s.getChildNodeInfoList().iterator();
                while (it.hasNext()) {
                    he next = it.next();
                    AccessibilityNodeInfo accessibilityNodeInfo = ern.f16037c;
                    if (!(next == null ? true : ern.k(next.getBoundsInScreen()))) {
                        return;
                    }
                }
                gm.c(baqVar.bc, R.string.li_new_wechat_empty_list_tips);
                return;
            case 19:
                StringBuilder sb3 = new StringBuilder();
                ka kaVar = (ka) this.f18019a;
                sb3.append(acw.af(kaVar.p));
                String str5 = File.separator;
                awf.a(str5, "layout", str5, sb3);
                he heVar = (he) this.f18021c;
                sb3.append((Object) heVar.getPackageName());
                sb3.append(str5);
                sb3.append((Object) (TextUtils.isEmpty(ka.f19523c) ? heVar.getClassName() : ka.f19523c));
                sb3.append(".txt");
                String sb4 = sb3.toString();
                File file3 = new File(sb4);
                if (!file3.exists()) {
                    file3.getParentFile().mkdirs();
                }
                try {
                    try {
                        String xMLLayout = he.toXMLLayout(kaVar.p, heVar, 0);
                        if (TextUtils.isEmpty(xMLLayout) || !buj.ag(sb4, xMLLayout, false)) {
                            throw new IOException("Cannot write layout export");
                        }
                        kaVar.t.set(false);
                        eqi eqiVar5 = kaVar.r;
                        eqiVar5.sendMessage(eqiVar5.obtainMessage(1, sb4));
                        return;
                    } catch (Exception e5) {
                        erl.ac(e5);
                        eqi eqiVar6 = kaVar.r;
                        eqiVar6.sendMessage(eqiVar6.obtainMessage(2));
                        kaVar.t.set(false);
                        return;
                    }
                } catch (Throwable th4) {
                    kaVar.t.set(false);
                    throw th4;
                }
            case 20:
                dbk dbkVar = (dbk) this.f18019a;
                cpk cpkVar = dbkVar.h;
                while (true) {
                    try {
                        ((Runnable) this.f18021c).run();
                    } catch (Throwable th5) {
                        kj.i(th5, cgq.f12850a);
                    }
                    Runnable m = dbkVar.m();
                    if (m == null) {
                        return;
                    }
                    this.f18021c = m;
                    i5++;
                    if (i5 >= 16 && cpkVar.w(dbkVar)) {
                        cpkVar.i(dbkVar, this);
                        return;
                    }
                }
                break;
            case 21:
                ((gmv) this.f18021c).accept(this.f18019a);
                return;
            case 22:
                ((gsn) this.f18019a).t((cxj) this.f18021c);
                return;
            case 23:
                try {
                    ((Runnable) this.f18019a).run();
                    synchronized (((aqv) this.f18021c).f10672c) {
                        ((aqv) this.f18021c).f();
                    }
                    return;
                } catch (Throwable th6) {
                    synchronized (((aqv) this.f18021c).f10672c) {
                        ((aqv) this.f18021c).f();
                        throw th6;
                    }
                }
            case 24:
                androidx.fragment.app.y yVar = (androidx.fragment.app.y) this.f18019a;
                ArrayList arrayList = yVar.f224d;
                androidx.fragment.app.a aVar = (androidx.fragment.app.a) this.f18021c;
                arrayList.remove(aVar);
                yVar.f225e.remove(aVar);
                return;
            case 25:
                d();
                return;
            case 26:
                StringBuilder sb5 = new StringBuilder();
                gk gkVar = (gk) this.f18019a;
                sb5.append(acw.af(gkVar.j));
                String str6 = File.separator;
                awf.a(str6, "debug", str6, sb5);
                he heVar2 = (he) this.f18021c;
                sb5.append((Object) heVar2.getPackageName());
                sb5.append(str6);
                sb5.append((Object) (TextUtils.isEmpty(heVar2.getClassName()) ? dlb.c() : heVar2.getClassName()));
                sb5.append(".txt");
                String sb6 = sb5.toString();
                File file4 = new File(sb6);
                if (!file4.exists()) {
                    file4.getParentFile().mkdirs();
                }
                try {
                    try {
                        String xMLLayout2 = he.toXMLLayout(gkVar.j, heVar2, 0);
                        if (TextUtils.isEmpty(xMLLayout2) || !buj.ag(sb6, xMLLayout2, false)) {
                            throw new IOException("Cannot write layout export");
                        }
                        gkVar.l.set(false);
                        eqi eqiVar7 = gkVar.f18294f;
                        eqiVar7.sendMessage(eqiVar7.obtainMessage(1, sb6));
                        return;
                    } catch (Throwable th7) {
                        gkVar.l.set(false);
                        throw th7;
                    }
                } catch (Exception e6) {
                    erl.ac(e6);
                    eqi eqiVar8 = gkVar.f18294f;
                    eqiVar8.sendMessage(eqiVar8.obtainMessage(2));
                    gkVar.l.set(false);
                    return;
                }
            case 27:
                e();
                return;
            case 28:
                f();
                return;
            default:
                com.tencent.bugly.proguard.ay ayVar = ((com.tencent.bugly.proguard.c) this.f18019a).f9754b;
                String str7 = (String) this.f18021c;
                if (ayVar.a(true)) {
                    try {
                        com.tencent.bugly.proguard.al.c("read trace first dump for create time!", new Object[0]);
                        TraceFileHelper.a readFirstDumpInfo = TraceFileHelper.readFirstDumpInfo(str7, false);
                        long j = readFirstDumpInfo != null ? readFirstDumpInfo.f9513c : -1L;
                        if (j == -1) {
                            com.tencent.bugly.proguard.al.d("trace dump fail could not get time!", new Object[0]);
                            j = System.currentTimeMillis();
                        }
                        if (ayVar.a(j)) {
                            return;
                        }
                        ayVar.a(j, str7);
                        return;
                    } catch (Throwable th8) {
                        if (!com.tencent.bugly.proguard.al.a(th8)) {
                            th8.printStackTrace();
                        }
                        com.tencent.bugly.proguard.al.e("handle anr error %s", th8.getClass().toString());
                        return;
                    }
                }
                return;
        }
    }

    public String toString() {
        switch (this.f18020b) {
            case 0:
                fpd fpdVar = new fpd(gfh.class.getSimpleName());
                fkn fknVar = (fkn) this.f18019a;
                akj akjVar = new akj(21);
                ((akj) fpdVar.f17188d).f10384f = akjVar;
                fpdVar.f17188d = akjVar;
                akjVar.h = fknVar;
                return fpdVar.toString();
            default:
                return super.toString();
        }
    }
}
