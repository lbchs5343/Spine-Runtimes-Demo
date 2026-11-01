package g;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.res.ColorStateList;
import android.database.Cursor;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.ButtonBarLayout;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.widget.NestedScrollView;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkDatabase_Impl;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.fxe;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class cro {
    public static volatile JSONObject n;
    public static final hy o = new hy("CLOSED", 1);
    public static boolean p;
    public static cuf q;

    public static void aa(Activity activity, ert ertVar) {
        bli.n = ertVar;
        if (TextUtils.isEmpty(acr.av(activity, ertVar.q))) {
            fso.y(activity, ertVar.q, "fail_accessibility_not_in_scope");
            gm.f(activity, R.string.error_not_accessible);
            bli.n = null;
        } else {
            if (afo.ao(activity, true)) {
                return;
            }
            bli.n = null;
        }
    }

    public static String ab(String str) {
        BufferedReader bufferedReader = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(str);
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
            while (true) {
                try {
                    String readLine = bufferedReader2.readLine();
                    if (readLine == null) {
                        bfc.o(bufferedReader2);
                        return sb.toString();
                    }
                    sb.append(readLine);
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    bfc.o(bufferedReader);
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static final void ac(WorkDatabase workDatabase, flk flkVar, pc pcVar) {
        int i;
        bff.p(workDatabase, "workDatabase");
        bff.p(flkVar, "configuration");
        if (Build.VERSION.SDK_INT < 24) {
            return;
        }
        ArrayList d2 = grj.d(pcVar);
        int i2 = 0;
        while (!d2.isEmpty()) {
            List list = ((pc) eko.b(d2)).h;
            bff.e(list, "current.work");
            if (list.isEmpty()) {
                i = 0;
            } else {
                Iterator it = list.iterator();
                i = 0;
                while (it.hasNext()) {
                    if (((dze) it.next()).f15118b.r.l() && (i = i + 1) < 0) {
                        throw new ArithmeticException("Count overflow has happened.");
                    }
                }
            }
            i2 += i;
        }
        if (i2 == 0) {
            return;
        }
        gg a2 = workDatabase.a();
        a2.getClass();
        fcg o2 = fcg.o(0, "Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)");
        WorkDatabase_Impl workDatabase_Impl = a2.h;
        workDatabase_Impl.al();
        Cursor ag = workDatabase_Impl.ag(o2);
        try {
            int i3 = ag.moveToFirst() ? ag.getInt(0) : 0;
            ag.close();
            o2.p();
            int i4 = flkVar.k;
            if (i3 + i2 > i4) {
                throw new IllegalArgumentException(awf.x(awf.z(i4, i3, "Too many workers with contentUriTriggers are enqueued:\ncontentUriTrigger workers limit: ", ";\nalready enqueued count: ", ";\ncurrent enqueue operation count: "), i2, ".\nTo address this issue you can: \n1. enqueue less workers or batch some of workers with content uri triggers together;\n2. increase limit via Configuration.Builder.setContentUriTriggerWorkersLimit;\nPlease beware that workers with content uri triggers immediately occupy slots in JobScheduler so no updates to content uris are missed."));
            }
        } catch (Throwable th) {
            ag.close();
            o2.p();
            throw th;
        }
    }

    public static void ad(Context context) {
        String str;
        int i = fnp.p() ? R.string.tuner_risk_tips1 : R.string.tuner_risk_tips2;
        Bundle bundle = new Bundle();
        bundle.putString(abn.EXTRA_TITLE, context.getString(R.string.tuner_risk_tips_title));
        bundle.putString("message", context.getString(i));
        bundle.putBoolean("message_is_html", true);
        if (fml.e(context)) {
            str = context.getString(byh.aj(context) ? R.string.ad_unit_id_ui_standard_c : R.string.ad_unit_id_ui_standard_g);
        } else {
            str = null;
        }
        bundle.putString("adUnitId", eyt.bp(str));
        int i2 = fnp.p() ? -1 : R.color.colorPrimary;
        dao daoVar = new dao();
        String string = context.getString(R.string.alert_dialog_cancel);
        int i3 = fnp.p() ? -1 : R.color.gray;
        dvt dvtVar = new dvt(context, 0);
        String string2 = context.getString(R.string.alert_dialog_ok);
        Activity activity = (Activity) context;
        gqo gqoVar = new gqo();
        TextView textView = gqoVar.f18592f;
        if (textView != null) {
            textView.setVisibility(0);
        }
        gqoVar.x(i3, dvtVar, string2);
        gqoVar.h = 8;
        TextView textView2 = gqoVar.l;
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
        gqoVar.z(-1, null, null);
        TextView textView3 = gqoVar.f18590d;
        if (textView3 != null) {
            textView3.setVisibility(0);
        }
        gqoVar.y(i2, daoVar, string);
        gqoVar.f18591e = null;
        gqoVar.m = 0;
        kj.t(activity, gqoVar, bundle, false);
    }

    public static long ae(Context context, String str, long j) {
        return context.getSharedPreferences("TrineaAndroidCommon", 0).getLong(str, j);
    }

    public static boolean af(Context context, String str, boolean z) {
        SharedPreferences.Editor edit = context.getSharedPreferences("TrineaAndroidCommon", 0).edit();
        edit.putBoolean(str, z);
        return edit.commit();
    }

    public static ja ag(String str) {
        try {
            JSONObject jSONObject = new JSONObject(ab(str));
            ja jaVar = new ja(2);
            jaVar.f19456a = jSONObject.optString(abn.EXTRA_URL);
            jaVar.f19457b = jSONObject.optJSONObject("body");
            jSONObject.optString("dump_file");
            jaVar.f19459d = jSONObject.optBoolean("encrypt", false);
            return jaVar;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static gey ah(Object obj) {
        if (obj == null) {
            return gey.i;
        }
        if (obj instanceof String) {
            return new bsa((String) obj);
        }
        if (obj instanceof Double) {
            return new hbz((Double) obj);
        }
        if (obj instanceof Long) {
            return new hbz(Double.valueOf(((Long) obj).doubleValue()));
        }
        if (obj instanceof Integer) {
            return new hbz(Double.valueOf(((Integer) obj).doubleValue()));
        }
        if (obj instanceof Boolean) {
            return new bbk((Boolean) obj);
        }
        if (!(obj instanceof Map)) {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            gwa gwaVar = new gwa();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                gwaVar.r(gwaVar.s(), ah(it.next()));
            }
            return gwaVar;
        }
        byt bytVar = new byt();
        Map map = (Map) obj;
        for (Object obj2 : map.keySet()) {
            gey ah = ah(map.get(obj2));
            if (obj2 != null) {
                if (!(obj2 instanceof String)) {
                    obj2 = obj2.toString();
                }
                bytVar.a((String) obj2, ah);
            }
        }
        return bytVar;
    }

    public static gey ai(aqu aquVar) {
        if (aquVar == null) {
            return gey.o;
        }
        int i = aquVar.i() - 1;
        if (i == 1) {
            return aquVar.e() ? new bsa(aquVar.c()) : gey.p;
        }
        if (i == 2) {
            return aquVar.j() ? new hbz(Double.valueOf(aquVar.d())) : new hbz(null);
        }
        if (i == 3) {
            return aquVar.h() ? new bbk(Boolean.valueOf(aquVar.f())) : new bbk(null);
        }
        if (i != 4) {
            throw new IllegalArgumentException("Unknown type found. Cannot convert entity");
        }
        cwe b2 = aquVar.b();
        ArrayList arrayList = new ArrayList();
        Iterator it = b2.iterator();
        while (it.hasNext()) {
            arrayList.add(ai((aqu) it.next()));
        }
        return new fud(arrayList, aquVar.g());
    }

    public static cgg aj(Intent intent) {
        cuf cufVar = q;
        if (cufVar == null) {
            return null;
        }
        cufVar.getClass();
        cgg cggVar = intent != null ? (cgg) intent.getParcelableExtra("ts") : null;
        return cggVar != null ? cggVar : new cgg(0, 0, false);
    }

    public static String ak(Context context, String str, String str2) {
        return context.getSharedPreferences("TrineaAndroidCommon", 0).getString(str, str2);
    }

    public static void al(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static final fkj am(List list, fkj fkjVar) {
        fkj fkjVar2;
        bff.p(list, "schedulers");
        bff.p(fkjVar, "workSpec");
        boolean e2 = fkjVar.f16932g.e("androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME");
        boolean e3 = fkjVar.f16932g.e("androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME");
        boolean e4 = fkjVar.f16932g.e("androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME");
        if (!e2 && e3 && e4) {
            String str = fkjVar.u;
            evf evfVar = new evf(7);
            LinkedHashMap linkedHashMap = (LinkedHashMap) evfVar.f16224f;
            dwa dwaVar = fkjVar.f16932g;
            bff.p(dwaVar, "data");
            evfVar.r(dwaVar.f14916b);
            linkedHashMap.put("androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME", str);
            dwa dwaVar2 = new dwa(linkedHashMap);
            bff.k(dwaVar2);
            fkjVar2 = fkj.y(fkjVar, null, null, "androidx.work.multiprocess.RemoteListenableDelegatingWorker", dwaVar2, 0, 0L, 0, 0, 0L, 0, 16777195);
        } else {
            fkjVar2 = fkjVar;
        }
        int i = Build.VERSION.SDK_INT;
        if (23 <= i && i < 26) {
            return ay(fkjVar2);
        }
        if (i > 22) {
            return fkjVar2;
        }
        try {
            Class<?> cls = Class.forName("androidx.work.impl.background.gcm.GcmScheduler");
            if (list.isEmpty()) {
                return fkjVar2;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (cls.isAssignableFrom(((giw) it.next()).getClass())) {
                    return ay(fkjVar2);
                }
            }
            return fkjVar2;
        } catch (ClassNotFoundException unused) {
            return fkjVar2;
        }
    }

    public static boolean an(Context context, String str, boolean z) {
        return context.getSharedPreferences("TrineaAndroidCommon", 0).getBoolean(str, z);
    }

    public static void ao(File file, String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        file.getParentFile().mkdirs();
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file, z);
            try {
                fileOutputStream2.write(str.getBytes());
                fileOutputStream2.flush();
                bfc.o(fileOutputStream2);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                bfc.o(fileOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static String ap(File file, String str, JSONObject jSONObject) {
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, str);
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put(abn.EXTRA_URL, "https://apmplus.volces.com/apm/collect/crash");
            jSONObject2.put("body", jSONObject);
            jSONObject2.put("dump_file", "");
            jSONObject2.put("encrypt", true);
            ao(file2, jSONObject2.toString(), false);
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        return file2.getAbsolutePath();
    }

    public static final void aq(int i, int i2) {
        if (i <= i2) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i + ") is greater than size (" + i2 + ").");
    }

    public static void ar(TextView textView, String str, String str2) {
        ColorStateList textColors = textView.getTextColors();
        bff.g(textView, R.style.TextAppearance_Material3_BodyLarge);
        textView.setTextColor(textColors);
        SpannableStringBuilder append = new SpannableStringBuilder(str).append('\n').append((CharSequence) str2);
        append.setSpan(new TextAppearanceSpan(textView.getContext(), R.style.SettingRowSummary), str.length() + 1, append.length(), 33);
        textView.setText(append);
        textView.setMinHeight(textView.getResources().getDimensionPixelSize(R.dimen.setting_row_summary_min_height));
        int dimensionPixelSize = textView.getResources().getDimensionPixelSize(R.dimen.setting_row_summary_padding_vertical);
        textView.setPaddingRelative(textView.getPaddingStart(), dimensionPixelSize, textView.getPaddingEnd(), dimensionPixelSize);
    }

    public static long as(InputStream inputStream, OutputStream outputStream, boolean z) {
        byte[] bArr = new byte[1024];
        long j = 0;
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, 1024);
                if (read == -1) {
                    break;
                }
                j += read;
                outputStream.write(bArr, 0, read);
            } catch (Throwable th) {
                if (z) {
                    al(inputStream);
                    al(outputStream);
                }
                throw th;
            }
        }
        if (z) {
            al(inputStream);
            al(outputStream);
        }
        return j;
    }

    public static void at(JSONObject jSONObject) {
        Object obj;
        dzh dzhVar = eca.f15280e;
        if (dzhVar == null || jSONObject == null) {
            return;
        }
        if (((Map) dzhVar.f15122g) == null) {
            dzhVar.f15122g = ((cmc) dzhVar.f15121f).mn();
        }
        Map map = (Map) dzhVar.f15122g;
        if (map != null) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                for (String str : map.keySet()) {
                    if (!TextUtils.isEmpty(str) && (obj = map.get(str)) != null) {
                        jSONObject2.put(str, obj);
                    }
                }
                jSONObject.put(MediationConstant.KEY_USE_POLICY_OBJ_CUSTOM, jSONObject2);
            } catch (Exception unused) {
                Context context = eca.f15278c;
            }
        }
    }

    public static void au(PackageInfo packageInfo, File file) {
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(new File(file, "profileinstaller_profileWrittenFor_lastUpdateTime.dat")));
            try {
                dataOutputStream.writeLong(packageInfo.lastUpdateTime);
                dataOutputStream.close();
            } finally {
            }
        } catch (IOException unused) {
        }
    }

    public static int av(Context context, int i, String str) {
        return context.getSharedPreferences("TrineaAndroidCommon", 0).getInt(str, i);
    }

    public static void aw(Window window, boolean z) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 35) {
            eyf.a(window, z);
        } else {
            if (i >= 30) {
                eyf.f(window, z);
                return;
            }
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(z ? systemUiVisibility & (-1793) : systemUiVisibility | 1792);
        }
    }

    public static void ax(SwitchCompat switchCompat) {
        if (switchCompat.getParent() instanceof View) {
            View view = (View) switchCompat.getParent();
            CharSequence text = switchCompat.getText();
            if (TextUtils.isEmpty(text) && (view instanceof ViewGroup)) {
                text = bb((ViewGroup) view, switchCompat);
            }
            view.setContentDescription(text);
            view.setOnClickListener(new ld(8, switchCompat));
            switchCompat.setClickable(false);
            switchCompat.setFocusable(false);
            WeakHashMap weakHashMap = goi.f18490c;
            switchCompat.setImportantForAccessibility(2);
            goi.ab(view, new akz(6, switchCompat));
        }
    }

    public static final fkj ay(fkj fkjVar) {
        bho bhoVar = fkjVar.r;
        String str = fkjVar.u;
        if (bff.n(str, ConstraintTrackingWorker.class.getName()) || !(bhoVar.f11594d || bhoVar.f11596f)) {
            return fkjVar;
        }
        evf evfVar = new evf(7);
        LinkedHashMap linkedHashMap = (LinkedHashMap) evfVar.f16224f;
        dwa dwaVar = fkjVar.f16932g;
        bff.p(dwaVar, "data");
        evfVar.r(dwaVar.f14916b);
        linkedHashMap.put("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME", str);
        dwa dwaVar2 = new dwa(linkedHashMap);
        bff.k(dwaVar2);
        return fkj.y(fkjVar, null, null, ConstraintTrackingWorker.class.getName(), dwaVar2, 0, 0L, 0, 0, 0L, 0, 16777195);
    }

    public static void az(Context context, int i, String str) {
        SharedPreferences.Editor edit = context.getSharedPreferences("TrineaAndroidCommon", 0).edit();
        edit.putInt(str, i);
        edit.commit();
    }

    public static boolean ba(dms dmsVar, cgg cggVar) {
        if (q == null) {
            return false;
        }
        if (cggVar.getMode() != 1) {
            return true;
        }
        if (cux.au(dmsVar, cggVar)) {
            int av = cggVar.isMultiProcess() ? byh.av(dmsVar, 0, cux.az(cggVar.getCode())) : av(dmsVar, 0, cux.az(cggVar.getCode()));
            fxe.a j = atf.g(dmsVar).j();
            if (av < (j != null ? j.mTC : 0)) {
                if (cggVar.isMultiProcess()) {
                    String az = cux.az(cggVar.getCode());
                    byh.bb(dmsVar, byh.av(dmsVar, 0, az) + 1, az);
                    return true;
                }
                String az2 = cux.az(cggVar.getCode());
                az(dmsVar, av(dmsVar, 0, az2) + 1, az2);
                return true;
            }
        }
        gm.c(dmsVar, R.string.donation_version_trial_exceed_tips);
        return false;
    }

    public static StringBuilder bb(ViewGroup viewGroup, View view) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt != view) {
                if (childAt instanceof TextView) {
                    CharSequence text = ((TextView) childAt).getText();
                    if (!TextUtils.isEmpty(text)) {
                        if (sb.length() > 0) {
                            sb.append(' ');
                        }
                        sb.append(text);
                    }
                } else if (childAt instanceof ViewGroup) {
                    StringBuilder bb = bb((ViewGroup) childAt, view);
                    if (!TextUtils.isEmpty(bb)) {
                        if (sb.length() > 0) {
                            sb.append(' ');
                        }
                        sb.append((CharSequence) bb);
                    }
                }
            }
        }
        return sb;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [g.fu, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v2, types: [g.fu] */
    public static final Object bc(long j, ggb ggbVar) {
        bwn bwnVar = bwn.f12322a;
        while (true) {
            long j2 = ggbVar.f17418b;
            if (j2 >= j && !ggbVar.g()) {
                return ggbVar;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = aym.i;
            Object obj = atomicReferenceFieldUpdater.get(ggbVar);
            hy hyVar = o;
            if (obj == hyVar) {
                return hyVar;
            }
            ?? r4 = (fu) ((aym) obj);
            if (r4 != 0) {
                ggbVar = r4;
            } else {
                ?? r1 = (fu) bwnVar.d(Long.valueOf(j2 + 1), ggbVar);
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(ggbVar, null, r1)) {
                        if (ggbVar.g()) {
                            ggbVar.k();
                        }
                        ggbVar = r1;
                    } else if (atomicReferenceFieldUpdater.get(ggbVar) != null) {
                        break;
                    }
                }
            }
        }
    }

    public static List r(Object obj) {
        List singletonList = Collections.singletonList(obj);
        bff.e(singletonList, "singletonList(...)");
        return singletonList;
    }

    public static void s(fpl fplVar, View view) {
        Rect rect = new Rect();
        fplVar.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        View findViewById = fplVar.findViewById(R.id.topPanel);
        View findViewById2 = fplVar.findViewById(R.id.buttonPanel);
        int height = ((rect.height() - findViewById.getMeasuredHeight()) - findViewById2.getMeasuredHeight()) - Math.round(view.getResources().getDisplayMetrics().density * 48.0f);
        NestedScrollView nestedScrollView = (NestedScrollView) view;
        int min = Math.min(nestedScrollView.getPaddingBottom() + nestedScrollView.getPaddingTop() + nestedScrollView.getChildAt(0).getMeasuredHeight(), Math.max(1, height));
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (min <= 0 || layoutParams.height == min) {
            return;
        }
        layoutParams.height = min;
        view.setLayoutParams(layoutParams);
    }

    public static fpl t(Context context, boolean z, gtf gtfVar) {
        gmn z2 = ckd.z(context);
        final View inflate = LayoutInflater.from(((die) z2.z).i).inflate(R.layout.ns_dialog_image, (ViewGroup) null);
        String string = context.getString(R.string.new_second_desc);
        if (z || !fnp.p()) {
            string = context.getString(R.string.not_support_tuner_tips) + string;
        }
        if (z && Build.VERSION.SDK_INT < 24) {
            StringBuilder l = tn.l(string, "\n\n");
            l.append(context.getString(R.string.tuner_need_manual_open));
            string = l.toString();
        }
        ((TextView) inflate.findViewById(R.id.new_second_message)).setText(string);
        z2.p(R.string.whether_show_second);
        z2.v(inflate);
        z2.s(R.string.download_new_second_app, new dvt(context, 1));
        z2.t(R.string.alert_dialog_cancel, null);
        if (gtfVar != null) {
            z2.y(R.string.open_tuner_continue, new aip(1, gtfVar));
        }
        final fpl r = z2.r();
        r.setOnShowListener(new DialogInterface.OnShowListener() { // from class: g.ael
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                int[] iArr = {-1, -2, -3};
                int i = 0;
                while (true) {
                    final fpl fplVar = fpl.this;
                    if (i >= 3) {
                        TextView textView = (TextView) fplVar.findViewById(R.id.alertTitle);
                        textView.setSingleLine(false);
                        textView.setMaxLines(he.UNDEFINED_ITEM_ID);
                        textView.setEllipsize(null);
                        View decorView = fplVar.getWindow().getDecorView();
                        final View view = inflate;
                        decorView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: g.ma
                            @Override // android.view.View.OnLayoutChangeListener
                            public final void onLayoutChange(View view2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                                cro.s(fpl.this, view);
                            }
                        });
                        decorView.post(new dsf(fplVar, 7, view));
                        return;
                    }
                    Button l2 = fplVar.l(iArr[i]);
                    l2.setSingleLine(false);
                    l2.setMaxLines(he.UNDEFINED_ITEM_ID);
                    l2.setEllipsize(null);
                    i++;
                }
            }
        });
        return r;
    }

    public static void u(final Activity activity, ert ertVar, String str) {
        fso.y(activity, ertVar.q, "fail_accessibility_switch_fail");
        if (ertVar.f16056e) {
            acw.aa(activity);
        }
        ark q2 = ark.q(activity);
        final qy qyVar = q2.x() ? qy.UPDATE : !q2.r() ? qy.START : !q2.w() ? qy.AUTHORIZE : ("connection_failed".equals(str) || "connection_timeout".equals(str)) ? qy.CONNECTION : qy.RESULT_UNKNOWN;
        int i = 1;
        if (activity.isFinishing() || activity.isDestroyed()) {
            gm.k(activity.getApplicationContext(), activity.getString(x(qyVar), ertVar.z(activity)));
            return;
        }
        int i2 = bqn.f12025a[qyVar.ordinal()];
        int i3 = i2 != 1 ? i2 != 2 ? i2 != 3 ? R.string.shizuku_operation_action_inspect : R.string.shizuku_authorization_title : R.string.shizuku_operation_action_start : R.string.shizuku_operation_action_update;
        gmn z = ckd.z(activity);
        z.p(R.string.shizuku_operation_failure_title);
        ((die) z.z).m = activity.getString(x(qyVar), ertVar.z(activity));
        z.s(i3, new DialogInterface.OnClickListener() { // from class: g.avd
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                qy qyVar2 = qy.CONNECTION;
                qy qyVar3 = qy.this;
                Activity activity2 = activity;
                if (qyVar3 == qyVar2 || qyVar3 == qy.RESULT_UNKNOWN) {
                    afo.ao(activity2, true);
                } else {
                    int i5 = bus.f12241a;
                    bus.s(activity2, new Bundle());
                }
            }
        });
        z.y(R.string.shizuku_return_accessibility, new esm(activity, i));
        z.t(android.R.string.cancel, null);
        fpl r = z.r();
        r.create();
        LinearLayout linearLayout = (LinearLayout) r.l(-1).getParent();
        if (linearLayout instanceof ButtonBarLayout) {
            ((ButtonBarLayout) linearLayout).setAllowStacking(false);
        }
        linearLayout.setOrientation(1);
        linearLayout.setGravity(8388613);
        View findViewById = linearLayout.findViewById(R.id.spacer);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
        int[] iArr = {-1, -2, -3};
        for (int i4 = 0; i4 < 3; i4++) {
            linearLayout.bringChildToFront(r.l(iArr[i4]));
        }
        int currentTextColor = ((TextView) r.findViewById(android.R.id.message)).getCurrentTextColor();
        r.l(-2).setTextColor(currentTextColor);
        r.l(-3).setTextColor(currentTextColor);
        r.show();
    }

    public static void v(Context context, String str, String str2) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(System.currentTimeMillis());
            sb.append(" ");
            if (str == null) {
                str = "null";
            }
            sb.append(str);
            sb.append(" ");
            if (str2 == null) {
                str2 = "null";
            }
            sb.append(str2);
            sb.append("\n");
            ao(new File(afo.as(context), "crash_history"), sb.toString(), true);
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public static gbb w(boj bojVar, bto btoVar) {
        dwt dwtVar = dwt.DEFAULT;
        bff.p(bojVar, "context");
        bff.p(dwtVar, "start");
        return bfc.e(new gkn(bojVar, dwtVar, btoVar));
    }

    public static int x(qy qyVar) {
        int i = bqn.f12025a[qyVar.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? R.string.shizuku_operation_unconfirmed : R.string.shizuku_operation_connection : R.string.shizuku_operation_unauthorized : R.string.shizuku_operation_stopped : R.string.shizuku_operation_update;
    }

    public static JSONObject y(Map map) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("magic_tag", "ss_app_log");
        if (n == null) {
            Context context = eca.f15278c;
            try {
                JSONObject jSONObject2 = new JSONObject();
                n = jSONObject2;
                jSONObject2.put("os", "Android");
                n.put("platform", "Android");
                n.put("sdk_lib", "Android");
                JSONObject jSONObject3 = n;
                String str = Build.VERSION.RELEASE;
                if (!str.contains(".")) {
                    str = str.concat(".0");
                }
                jSONObject3.put("os_version", str);
                n.put("os_api", Build.VERSION.SDK_INT);
                n.put("use_apm_sdk", "1");
                n.put(PluginConstants.KEY_SDK_VERSION, 137);
                n.put("sdk_version_code", 137);
                n.put("sdk_version_name", "0.0.1-alpha.17-cloud");
                String str2 = Build.MODEL;
                String str3 = Build.BRAND;
                if (str2 == null) {
                    str2 = str3;
                } else if (str3 != null && !str2.contains(str3)) {
                    str2 = str3 + ' ' + str2;
                }
                n.put("device_model", str2);
                n.put("device_brand", str3);
                n.put("device_manufacturer", Build.MANUFACTURER);
                n.put("aid", String.valueOf(map.get("aid")));
                n.put("app_version", map.get("app_version"));
                n.put("version_code", map.get("version_code"));
                n.put("update_version_code", map.get("update_version_code"));
                n.put("manifest_version_code", map.get("version_code"));
                n.put("channel", map.get("channel"));
                n.put("bd_did", eca.f().h());
                n.put("package", context.getPackageName());
                n.put("display_name", context.getApplicationInfo().name);
                at(n);
            } catch (Exception unused) {
            }
        }
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        jSONObject.put("header", n);
        jSONObject.put("local_time", currentTimeMillis);
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject4 = new JSONObject();
        long currentTimeMillis2 = System.currentTimeMillis();
        jSONObject4.put("local_time_ms", currentTimeMillis2);
        jSONObject4.put("tea_event_index", AVMDLDataLoader.KeyIsStoPlayDldWinSizeKBNM);
        jSONObject4.put("session_id", UUID.randomUUID().toString());
        jSONObject4.put("datetime", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(new Date(currentTimeMillis2)));
        jSONArray.put(jSONObject4);
        jSONObject.put("launch", jSONArray);
        return jSONObject;
    }

    public static void z(View view) {
        if (view instanceof SwitchCompat) {
            ax((SwitchCompat) view);
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                z(viewGroup.getChildAt(i));
            }
        }
    }

    public abstract fwe f(alw alwVar);

    public abstract boolean g(alw alwVar, fwe fweVar, fwe fweVar2);

    public abstract cye h(alw alwVar);

    public abstract boolean i(ail ailVar, Object obj, Object obj2);

    public abstract void j(cye cyeVar, Thread thread);

    public abstract void k(cye cyeVar, cye cyeVar2);

    public abstract boolean l(ail ailVar, cye cyeVar, cye cyeVar2);
}
