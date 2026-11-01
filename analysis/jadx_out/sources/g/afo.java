package g;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.widget.Button;
import android.widget.TextView;
import androidx.lifecycle.SavedStateHandleAttacher;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import androidx.work.impl.background.systemjob.SystemJobService;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzftl;
import com.google.android.gms.internal.ads.zzftm;
import com.google.android.gms.internal.ads.zzftn;
import com.google.android.gms.internal.ads.zzfwf;
import com.google.android.gms.internal.ads.zzfxd;
import com.google.android.material.snackbar.SnackbarContentLayout;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class afo {
    public static gcd aa;
    public static boolean ac;
    public static final String[] ad = new String[0];
    public static final cuf y = new cuf(10);
    public static final cfg z = new cfg(11);

    /* renamed from: ab, reason: collision with root package name */
    public static final bli f10142ab = new bli(10);

    /* JADX WARN: Removed duplicated region for block: B:5:0x0014  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bundle ae(Context context, String str) {
        JSONArray jSONArray;
        Object obj;
        SharedPreferences sharedPreferences;
        String str2;
        if (!TextUtils.isEmpty(str)) {
            try {
                jSONArray = new JSONArray(str);
            } catch (JSONException unused) {
                zzfxd zzfxdVar = agd.f10175a;
            }
            if (jSONArray != null) {
                return Bundle.EMPTY;
            }
            Bundle bundle = new Bundle();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                String optString = optJSONObject.optString("bk");
                String optString2 = optJSONObject.optString("sk");
                int optInt = optJSONObject.optInt("type", -1);
                int i2 = optInt != 0 ? optInt != 1 ? optInt != 2 ? 0 : 3 : 2 : 1;
                if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2) && i2 != 0) {
                    List zze = zzfxd.zzb(zzfwf.zzc('/')).zze(optString2);
                    if (zze.size() > 2 || zze.isEmpty()) {
                        obj = null;
                    } else {
                        if (zze.size() == 1) {
                            sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                            str2 = (String) zze.get(0);
                        } else {
                            sharedPreferences = context.getSharedPreferences((String) zze.get(0), 0);
                            str2 = (String) zze.get(1);
                        }
                        obj = sharedPreferences.getAll().get(str2);
                    }
                    if (obj != null) {
                        int i3 = i2 - 1;
                        if (i3 != 0) {
                            if (i3 != 1) {
                                if (obj instanceof Boolean) {
                                    bundle.putBoolean(optString, ((Boolean) obj).booleanValue());
                                }
                            } else if (obj instanceof Integer) {
                                bundle.putInt(optString, ((Integer) obj).intValue());
                            } else if (obj instanceof Long) {
                                bundle.putLong(optString, ((Long) obj).longValue());
                            } else if (obj instanceof Float) {
                                bundle.putFloat(optString, ((Float) obj).floatValue());
                            }
                        } else if (obj instanceof String) {
                            bundle.putString(optString, (String) obj);
                        }
                    }
                }
            }
            return bundle;
        }
        jSONArray = null;
        if (jSONArray != null) {
        }
    }

    public static boolean af(int i, int i2) {
        return (i & i2) != 0;
    }

    public static final gev ag(final ao aoVar, final String str, final aqv aqvVar, final cvw cvwVar) {
        bff.p(aoVar, "tracer");
        bff.p(str, TTDownloadField.TT_LABEL);
        bff.p(aqvVar, "executor");
        final cet cetVar = new cet(0);
        bfc.e(new dbd() { // from class: g.fby
            @Override // g.dbd
            public final Object g(final eje ejeVar) {
                final ao aoVar2 = aoVar;
                final String str2 = str;
                final cvw cvwVar2 = cvwVar;
                final cet cetVar2 = cetVar;
                aqvVar.execute(new Runnable() { // from class: g.eyb
                    @Override // java.lang.Runnable
                    public final void run() {
                        String str3 = str2;
                        cvw cvwVar3 = cvwVar2;
                        cet cetVar3 = cetVar2;
                        eje ejeVar2 = ejeVar;
                        ao.this.getClass();
                        boolean am = baf.am();
                        if (am) {
                            try {
                                bff.p(str3, TTDownloadField.TT_LABEL);
                                Trace.beginSection(baf.y(str3));
                            } finally {
                                if (am) {
                                    Trace.endSection();
                                }
                            }
                        }
                        try {
                            cvwVar3.invoke();
                            bki bkiVar = gev.f18004a;
                            cetVar3.aa(bkiVar);
                            ejeVar2.e(bkiVar);
                        } catch (Throwable th) {
                            cetVar3.aa(new gwh(th));
                            ejeVar2.f(th);
                        }
                    }
                });
                return dgi.f14134a;
            }
        });
        return new gev();
    }

    public static gex ah(int i, int i2) {
        if (i2 > Integer.MIN_VALUE) {
            return new gex(i, i2 - 1, 1);
        }
        gex gexVar = gex.f18006d;
        return gex.f18006d;
    }

    public static void ai(Context context) {
        Context context2;
        boolean z2;
        String str = (String) fnp.f17097d.get(fnp.h().toLowerCase());
        if (!fnp.m()) {
            fgj e2 = fgj.e();
            if (str == null) {
                str = "android.settings.DEVICE_INFO_SETTINGS";
            }
            e2.h(context, new Intent(str), false);
            return;
        }
        if (TextUtils.isEmpty(str) || !str.contains("/")) {
            context2 = context;
            z2 = false;
        } else {
            String[] split = str.split("/");
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(split[0], split[1]));
            context2 = context;
            z2 = fgj.e().g(context2, intent, false, false, true);
        }
        if (!z2) {
            z2 = fgj.e().g(context2, new Intent("miui.intent.action.DEVICE_INFO_SETTINGS"), false, false, true);
        }
        if (z2) {
            return;
        }
        fgj.e().h(context2, new Intent("android.settings.DEVICE_INFO_SETTINGS"), false);
    }

    public static final void aj(gff gffVar) {
        fqv fqvVar = ((ajs) gffVar.getLifecycle()).f10342g;
        if (fqvVar != fqv.INITIALIZED && fqvVar != fqv.CREATED) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (gffVar.getSavedStateRegistry().i() == null) {
            dtj dtjVar = new dtj(gffVar.getSavedStateRegistry(), (gyj) gffVar);
            gffVar.getSavedStateRegistry().j("androidx.lifecycle.internal.SavedStateHandlesProvider", dtjVar);
            gffVar.getLifecycle().l(new SavedStateHandleAttacher(dtjVar));
        }
    }

    public static boolean ak(Context context) {
        if (dyd.bp(17) && Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) == 1) {
            return true;
        }
        return Settings.Secure.getInt(context.getContentResolver(), "development_settings_enabled", 0) == 1;
    }

    public static boolean al(hed hedVar, mw mwVar, List list) {
        fza fzaVar = mwVar.f19677a;
        fza fzaVar2 = mwVar.f19679f;
        mw mwVar2 = (mw) acw.bc(list, new dxx(fzaVar.f17683ab, 2));
        if (mwVar2 != null) {
            fza fzaVar3 = mwVar2.f19677a;
            if (acw.ak(fzaVar.f17684d, fzaVar3)) {
                fza d2 = giq.d(hedVar, fzaVar2, fzaVar);
                giq.c(fzaVar, d2);
                giq.q(d2, fzaVar, fzaVar3);
                hedVar.bw("Duplicate block (" + fzaVar + ") to fix multi-entry loop: " + mwVar);
                return true;
            }
        }
        mw mwVar3 = (mw) acw.bc(list, new dxx(fzaVar2, 1));
        if (mwVar3 == null) {
            hedVar.bu("Unsupported multi-entry loop pattern (" + mwVar + "). Please report as a decompilation issue!!!");
            return false;
        }
        fza fzaVar4 = mwVar3.f19679f;
        giq.c(fzaVar2, giq.d(hedVar, fzaVar4, mwVar.f19677a));
        giq.l(fzaVar4, fzaVar2);
        hedVar.bw("Duplicate block (" + fzaVar2 + ") to fix multi-entry loop: " + mwVar);
        return true;
    }

    public static void am(hed hedVar, fzf[] fzfVarArr, fza fzaVar) {
        acq acqVar = acq.q;
        fzfVarArr[fzaVar.x] = fzf.GRAY;
        for (fza fzaVar2 : fzaVar.f17684d) {
            int i = rr.f19920a[fzfVarArr[fzaVar2.x].ordinal()];
            if (i == 1) {
                am(hedVar, fzfVarArr, fzaVar2);
            } else if (i == 2) {
                hedVar.o(acqVar, new mw(hbg.BACK_EDGE, fzaVar, fzaVar2));
            } else if (i == 3) {
                hedVar.o(acqVar, new mw(hbg.CROSS_EDGE, fzaVar, fzaVar2));
            }
        }
        fzfVarArr[fzaVar.x] = fzf.BLACK;
    }

    public static void an(Context context) {
        String string;
        Intent className = new Intent().setClassName(context.getPackageName(), "cn.trinea.android.lib.view.developer.DeveloperOptionsGuideActivity");
        if (!(context instanceof Activity)) {
            className.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        if (fgj.e().g(context, className, false, false, true)) {
            return;
        }
        String l = fnp.l(context);
        Object j = fnp.j(context);
        if (l.contains(" -> ")) {
            Object[] split = l.split(" -> ");
            string = split.length > 1 ? context.getString(R.string.dev_options_guide_step_1_with_sub_page, split[0], split[1]) : context.getString(R.string.dev_options_guide_step_1, l);
        } else {
            string = context.getString(R.string.dev_options_guide_step_1, l);
        }
        String string2 = context.getString(R.string.dev_options_guide_step_2, j);
        TextView textView = new TextView(context);
        textView.setText(Html.fromHtml(string + "<br/><br/>" + string2 + "<br/><br/>" + context.getString(R.string.dev_options_guide_suffix)));
        textView.setLineSpacing(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.4f);
        int ao = fso.ao(context, 24.0f);
        textView.setPadding(ao, fso.ao(context, 16.0f), ao, 0);
        textView.setTextSize(16.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{android.R.attr.textColorPrimary});
        int color = obtainStyledAttributes.getColor(0, -13421773);
        obtainStyledAttributes.recycle();
        textView.setTextColor(color);
        AlertDialog create = new AlertDialog.Builder(context).setTitle(R.string.dev_options_guide_title).setView(textView).setPositiveButton(R.string.ok, (DialogInterface.OnClickListener) null).create();
        bfc.s(context, create);
        Button button = create.getButton(-1);
        if (button != null) {
            button.setAllCaps(false);
            try {
                TypedValue typedValue = new TypedValue();
                if (context.getTheme().resolveAttribute(android.R.attr.colorPrimary, typedValue, true)) {
                    button.setTextColor(typedValue.data);
                } else if (context.getTheme().resolveAttribute(context.getResources().getIdentifier("colorPrimary", "attr", context.getPackageName()), typedValue, true)) {
                    button.setTextColor(typedValue.data);
                }
            } catch (Exception unused) {
            }
            button.setOnClickListener(new anh(context, create, 4));
        }
        final Handler handler = new Handler(Looper.getMainLooper());
        final eax eaxVar = new eax(create, context, handler, 2, false);
        handler.post(eaxVar);
        create.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: g.ewy
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                handler.removeCallbacks(eaxVar);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00c0, code lost:
    
        if (r2 == (r0.activityInfo.name.length() - 36)) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0110, code lost:
    
        if (g.fgj.e().g(r4, new android.content.Intent("android.settings.APPLICATION_DEVELOPMENT_SETTINGS"), false, false, true) == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0144, code lost:
    
        if (g.fgj.e().g(r4, r5, false, false, true) != false) goto L54;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean ao(Context context, boolean z2) {
        Context context2;
        boolean z3 = false;
        if (!ak(context)) {
            if (z2) {
                an(context);
            }
            return false;
        }
        if (fnp.f()) {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.android.settings", "com.vivo.settings.DevelpmentSettingsActivity2"));
            context2 = context;
            if (fgj.e().g(context2, intent, false, false, true)) {
                return true;
            }
        } else {
            context2 = context;
        }
        if (dyd.bp(28)) {
            Intent intent2 = new Intent();
            intent2.setComponent(new ComponentName("com.android.settings", "com.android.settings.Settings$DevelopmentSettingsDashboardActivity"));
            synchronized (PackageManager.class) {
                try {
                    PackageManager packageManager = context2.getPackageManager();
                    if (packageManager != null && acw.u(packageManager.queryIntentActivities(intent2, 0))) {
                        intent2 = new Intent();
                        intent2.setComponent(new ComponentName("com.android.settings", "com.android.settings.DevelopmentSettings"));
                        if (acw.u(packageManager.queryIntentActivities(intent2, 0))) {
                            intent2 = new Intent("android.settings.APPLICATION_DEVELOPMENT_SETTINGS");
                            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent2, 0);
                            if (!acw.u(queryIntentActivities)) {
                                if (queryIntentActivities.size() <= 1) {
                                    ResolveInfo resolveInfo = queryIntentActivities.get(0);
                                    if (resolveInfo != null) {
                                        ActivityInfo activityInfo = resolveInfo.activityInfo;
                                        if (activityInfo != null) {
                                            if (!TextUtils.isEmpty(activityInfo.name)) {
                                                int lastIndexOf = resolveInfo.activityInfo.name.lastIndexOf(".DevelopmentSettingsDisabledActivity");
                                                if (lastIndexOf != -1) {
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    z3 = fgj.e().g(context2, intent2, false, false, true);
                } finally {
                }
            }
        } else if (dyd.bp(21)) {
            Intent intent3 = new Intent();
            intent3.setComponent(new ComponentName("com.android.settings", "com.android.settings.DevelopmentSettings"));
            if (!fgj.e().g(context2, intent3, false, false, true)) {
            }
            z3 = true;
        } else {
            if (!fgj.e().g(context2, new Intent("android.settings.APPLICATION_DEVELOPMENT_SETTINGS"), false, false, true)) {
                Intent intent4 = new Intent();
                intent4.setComponent(new ComponentName("com.android.settings", "com.android.settings.DevelopmentSettings"));
            }
            z3 = true;
        }
        if (!z3 && z2) {
            an(context2);
        }
        return z3;
    }

    public static fqr ap(gex gexVar, int i) {
        bff.p(gexVar, "<this>");
        boolean z2 = i > 0;
        Integer valueOf = Integer.valueOf(i);
        if (!z2) {
            throw new IllegalArgumentException("Step must be positive, was: " + valueOf + '.');
        }
        int i2 = gexVar.f17256b;
        int i3 = gexVar.f17257c;
        if (gexVar.f17255a <= 0) {
            i = -i;
        }
        return new fqr(i2, i3, i);
    }

    public static String aq(int i, fkx fkxVar) {
        StringBuilder sb = new StringBuilder();
        if (af(i, 1)) {
            sb.append("public ");
        }
        if (af(i, 2)) {
            sb.append("private ");
        }
        if (af(i, 4)) {
            sb.append("protected ");
        }
        if (af(i, 8)) {
            sb.append("static ");
        }
        if (af(i, 16)) {
            sb.append("final ");
        }
        if (af(i, 1024)) {
            sb.append("abstract ");
        }
        if (af(i, 256)) {
            sb.append("native ");
        }
        int i2 = fy.f17614a[fkxVar.ordinal()];
        if (i2 == 1) {
            if (af(i, 32)) {
                sb.append("synchronized ");
            }
            if (af(i, 64)) {
                sb.append("bridge ");
            }
            if (af(i, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME)) {
                sb.append("varargs ");
            }
        } else if (i2 == 2) {
            if (af(i, 64)) {
                sb.append("volatile ");
            }
            if (af(i, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME)) {
                sb.append("transient ");
            }
        } else if (i2 == 3) {
            if (af(i, 32768)) {
                sb.append("module ");
            }
            if (af(i, 2048)) {
                sb.append("strict ");
            }
            if (af(i, 32)) {
                sb.append("super ");
            }
            if (af(i, 16384)) {
                sb.append("enum ");
            }
            if (af(i, 262144)) {
                sb.append("data ");
            }
        }
        if (af(i, 4096)) {
            sb.append("synthetic ");
        }
        return sb.toString();
    }

    public static sd ar(View view, CharSequence charSequence, int i, int i2, View.OnClickListener onClickListener) {
        return az(view, charSequence, i, view.getResources().getText(i2), onClickListener, true);
    }

    public static String as(Context context) {
        String path;
        try {
            if (com.bytedance.sdk.openadsdk.api.plugin.d.dq(context) != null) {
                path = com.bytedance.sdk.openadsdk.api.plugin.d.dq(context).getPath();
            } else {
                File dq = com.bytedance.sdk.openadsdk.api.plugin.d.dq(context, "/data/data/" + context.getPackageName() + "/files/", 0);
                path = dq != null ? dq.getPath() : null;
            }
            return path != null ? path : "/sdcard/";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "/sdcard/";
        }
    }

    public static boolean at(Map map) {
        return map == null || map.size() == 0;
    }

    public static ful au(yu yuVar) {
        if (yuVar.e() != enn.METHOD_REF) {
            return null;
        }
        gqi l = yuVar.l();
        return l != null ? (ful) l : yuVar.d();
    }

    public static final gzf av(ewp ewpVar) {
        LinkedHashMap linkedHashMap = ewpVar.f11665b;
        gff gffVar = (gff) linkedHashMap.get(y);
        if (gffVar == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`");
        }
        gyj gyjVar = (gyj) linkedHashMap.get(z);
        if (gyjVar == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`");
        }
        Bundle bundle = (Bundle) linkedHashMap.get(f10142ab);
        String str = (String) linkedHashMap.get(bmr.y);
        if (str == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_KEY`");
        }
        fet i = gffVar.getSavedStateRegistry().i();
        dtj dtjVar = i instanceof dtj ? (dtj) i : null;
        if (dtjVar == null) {
            throw new IllegalStateException("enableSavedStateHandles() wasn't called prior to createSavedStateHandle() call");
        }
        wi aw = aw(gyjVar);
        gzf gzfVar = (gzf) aw.f20212a.get(str);
        if (gzfVar != null) {
            return gzfVar;
        }
        Class[] clsArr = gzf.f19043a;
        dtjVar.f();
        Bundle bundle2 = dtjVar.f14771e;
        Bundle bundle3 = bundle2 != null ? bundle2.getBundle(str) : null;
        Bundle bundle4 = dtjVar.f14771e;
        if (bundle4 != null) {
            bundle4.remove(str);
        }
        Bundle bundle5 = dtjVar.f14771e;
        if (bundle5 != null && bundle5.isEmpty()) {
            dtjVar.f14771e = null;
        }
        gzf n = byh.n(bundle3, bundle);
        aw.f20212a.put(str, n);
        return n;
    }

    public static final wi aw(gyj gyjVar) {
        bff.p(gyjVar, "<this>");
        ArrayList arrayList = new ArrayList();
        Class e2 = bii.b(wi.class).e();
        bff.ag(e2, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>");
        arrayList.add(new exg(e2));
        exg[] exgVarArr = (exg[]) arrayList.toArray(new exg[0]);
        return (wi) new fpd(gyjVar.getViewModelStore(), new fc((exg[]) Arrays.copyOf(exgVarArr, exgVarArr.length)), gyjVar instanceof hcr ? ((hcr) gyjVar).getDefaultViewModelCreationExtras() : aje.f10300a).t(wi.class, "androidx.lifecycle.internal.SavedStateHandlesVM");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static bjl ax(dvq dvqVar) {
        int i;
        int i2;
        String str;
        int length;
        dvq dvqVar2 = dvqVar;
        int size = dvqVar2.size();
        int i3 = 0;
        boolean z2 = true;
        String str2 = null;
        boolean z3 = false;
        boolean z4 = false;
        int i4 = -1;
        int i5 = -1;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        int i6 = -1;
        int i7 = -1;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        while (i3 < size) {
            String e2 = dvqVar2.e(i3);
            String b2 = dvqVar2.b(i3);
            if (dmc.bx(e2, "Cache-Control")) {
                if (str2 == null) {
                    str2 = b2;
                    i = 0;
                    while (i < b2.length()) {
                        int length2 = b2.length();
                        int i8 = i;
                        while (true) {
                            if (i8 >= length2) {
                                i2 = size;
                                i8 = b2.length();
                                break;
                            }
                            i2 = size;
                            if (dcv.bg("=,;", b2.charAt(i8))) {
                                break;
                            }
                            i8++;
                            size = i2;
                        }
                        String substring = b2.substring(i, i8);
                        bff.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                        String obj = dcv.bk(substring).toString();
                        if (i8 == b2.length() || b2.charAt(i8) == ',' || b2.charAt(i8) == ';') {
                            i = i8 + 1;
                            str = null;
                        } else {
                            int i9 = i8 + 1;
                            byte[] bArr = erq.f16043c;
                            int length3 = b2.length();
                            while (true) {
                                if (i9 >= length3) {
                                    i9 = b2.length();
                                    break;
                                }
                                char charAt = b2.charAt(i9);
                                int i10 = length3;
                                if (charAt != ' ' && charAt != '\t') {
                                    break;
                                }
                                i9++;
                                length3 = i10;
                            }
                            if (i9 >= b2.length() || b2.charAt(i9) != '\"') {
                                int length4 = b2.length();
                                int i11 = i9;
                                while (true) {
                                    if (i11 >= length4) {
                                        length = b2.length();
                                        break;
                                    }
                                    int i12 = length4;
                                    int i13 = i11;
                                    if (dcv.bg(",;", b2.charAt(i11))) {
                                        length = i13;
                                        break;
                                    }
                                    i11 = i13 + 1;
                                    length4 = i12;
                                }
                                String substring2 = b2.substring(i9, length);
                                bff.e(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
                                str = dcv.bk(substring2).toString();
                                i = length;
                            } else {
                                int i14 = i9 + 1;
                                int bh = dcv.bh(b2, '\"', i14, 4);
                                str = b2.substring(i14, bh);
                                bff.e(str, "this as java.lang.String…ing(startIndex, endIndex)");
                                i = bh + 1;
                            }
                        }
                        if ("no-cache".equalsIgnoreCase(obj)) {
                            z3 = true;
                        } else if ("no-store".equalsIgnoreCase(obj)) {
                            z4 = true;
                        } else if ("max-age".equalsIgnoreCase(obj)) {
                            i4 = erq.ad(-1, str);
                        } else if ("s-maxage".equalsIgnoreCase(obj)) {
                            i5 = erq.ad(-1, str);
                        } else if ("private".equalsIgnoreCase(obj)) {
                            z5 = true;
                        } else if ("public".equalsIgnoreCase(obj)) {
                            z6 = true;
                        } else if ("must-revalidate".equalsIgnoreCase(obj)) {
                            z7 = true;
                        } else if ("max-stale".equalsIgnoreCase(obj)) {
                            i6 = erq.ad(he.UNDEFINED_ITEM_ID, str);
                        } else if ("min-fresh".equalsIgnoreCase(obj)) {
                            i7 = erq.ad(-1, str);
                        } else if ("only-if-cached".equalsIgnoreCase(obj)) {
                            z8 = true;
                        } else if ("no-transform".equalsIgnoreCase(obj)) {
                            z9 = true;
                        } else if ("immutable".equalsIgnoreCase(obj)) {
                            z10 = true;
                        }
                        size = i2;
                    }
                    i3++;
                    dvqVar2 = dvqVar;
                    size = size;
                }
            } else if (!dmc.bx(e2, "Pragma")) {
                i3++;
                dvqVar2 = dvqVar;
                size = size;
            }
            z2 = false;
            i = 0;
            while (i < b2.length()) {
            }
            i3++;
            dvqVar2 = dvqVar;
            size = size;
        }
        return new bjl(z3, z4, i4, i5, z5, z6, z7, i6, i7, z8, z9, z10, !z2 ? null : str2);
    }

    public static void ay(Context context) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgc)).booleanValue() && context != null) {
            context.deleteDatabase("OfflineUpload.db");
        }
        try {
            zzftl zzj = zzftl.zzj(context);
            zzftm zzi = zzftm.zzi(context);
            zzftn zza = zzftn.zza(context);
            zzj.zzk();
            zzj.zzl();
            zzi.zzj();
            zza.zzb(null);
        } catch (IOException e2) {
            ti.f20033a.f20034ab.zzw(e2, "clearStorageOnIdlessMode");
        }
    }

    public static sd az(View view, CharSequence charSequence, int i, CharSequence charSequence2, View.OnClickListener onClickListener, boolean z2) {
        view.setVisibility(0);
        sd d2 = sd.d(view, charSequence, i);
        if (!TextUtils.isEmpty(charSequence2)) {
            d2.e(charSequence2, onClickListener);
        }
        bo boVar = new bo(view, d2);
        if (d2.ae == null) {
            d2.ae = new ArrayList();
        }
        d2.ae.add(boVar);
        bb(d2, z2);
        d2.f();
        return d2;
    }

    public static final fxb ba(Context context, flk flkVar) {
        bst bstVar;
        giw giwVar;
        boolean z2;
        int i;
        bff.p(context, "context");
        gkr gkrVar = new gkr(flkVar.l);
        Context applicationContext = context.getApplicationContext();
        bff.e(applicationContext, "context.applicationContext");
        aqv aqvVar = (aqv) gkrVar.f18325e;
        bff.e(aqvVar, "workTaskExecutor.serialTaskExecutor");
        dwm dwmVar = flkVar.f16981c;
        boolean z3 = context.getResources().getBoolean(R.bool.workmanager_test_configuration);
        bff.p(dwmVar, "clock");
        int i2 = 22;
        if (z3) {
            bstVar = new bst(applicationContext, null);
            bstVar.l = true;
        } else {
            if (dcv.bo("androidx.work.workdb")) {
                throw new IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
            }
            bst bstVar2 = new bst(applicationContext, "androidx.work.workdb");
            bstVar2.f12143a = new aoi(i2, applicationContext);
            bstVar = bstVar2;
        }
        bstVar.i = aqvVar;
        csa csaVar = new csa(dwmVar);
        ArrayList arrayList = bstVar.o;
        arrayList.add(csaVar);
        bstVar.q(hdp.f19285a);
        int i3 = 2;
        bstVar.q(new gav(applicationContext, 2, 3));
        bstVar.q(hdp.k);
        bstVar.q(hdp.l);
        bstVar.q(new gav(applicationContext, 5, 6));
        bstVar.q(hdp.f19286b);
        bstVar.q(hdp.f19288g);
        bstVar.q(hdp.j);
        bstVar.q(new gav(applicationContext));
        bstVar.q(new gav(applicationContext, 10, 11));
        bstVar.q(hdp.f19287f);
        bstVar.q(hdp.h);
        bstVar.q(hdp.i);
        bstVar.q(hdp.m);
        bstVar.q(new gav(applicationContext, 21, 22));
        bstVar.f12144b = false;
        bstVar.f12148f = true;
        Executor executor = bstVar.i;
        if (executor == null && bstVar.p == null) {
            xh xhVar = dav.f13880b;
            bstVar.p = xhVar;
            bstVar.i = xhVar;
        } else if (executor != null && bstVar.p == null) {
            bstVar.p = executor;
        } else if (executor == null) {
            bstVar.i = bstVar.p;
        }
        HashSet hashSet = bstVar.j;
        LinkedHashSet linkedHashSet = bstVar.f12145c;
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                int intValue = ((Number) it.next()).intValue();
                if (linkedHashSet.contains(Integer.valueOf(intValue))) {
                    throw new IllegalArgumentException(awf.ac(intValue, "Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: ").toString());
                }
            }
        }
        hs hsVar = bstVar.f12143a;
        if (hsVar == null) {
            hsVar = new cuf(i3);
        }
        if (bstVar.k > 0) {
            if (bstVar.m != null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            throw new IllegalArgumentException("Cannot create auto-closing database for an in-memory database.");
        }
        boolean z4 = bstVar.l;
        bjg bjgVar = bstVar.n;
        bjgVar.getClass();
        bjg bjgVar2 = bjg.AUTOMATIC;
        Context context2 = bstVar.h;
        if (bjgVar == bjgVar2) {
            Object systemService = context2.getSystemService(TTDownloadField.TT_ACTIVITY);
            ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
            bjgVar = (activityManager == null || activityManager.isLowRamDevice()) ? bjg.TRUNCATE : bjg.WRITE_AHEAD_LOGGING;
        }
        Executor executor2 = bstVar.i;
        if (executor2 == null) {
            throw new IllegalArgumentException("Required value was null.");
        }
        Executor executor3 = bstVar.p;
        if (executor3 == null) {
            throw new IllegalArgumentException("Required value was null.");
        }
        boolean z5 = bstVar.f12144b;
        boolean z6 = bstVar.f12148f;
        String str = bstVar.m;
        frk frkVar = bstVar.f12146d;
        hs hsVar2 = hsVar;
        ArrayList arrayList2 = bstVar.f12147e;
        ArrayList arrayList3 = bstVar.f12149g;
        hda hdaVar = new hda(context2, str, hsVar2, frkVar, arrayList, z4, bjgVar, executor2, executor3, z5, z6, linkedHashSet, arrayList2, arrayList3);
        Package r10 = WorkDatabase.class.getPackage();
        bff.d(r10);
        String name = r10.getName();
        String canonicalName = WorkDatabase.class.getCanonicalName();
        bff.d(canonicalName);
        bff.e(name, "fullPackage");
        if (name.length() != 0) {
            canonicalName = canonicalName.substring(name.length() + 1);
            bff.e(canonicalName, "this as java.lang.String).substring(startIndex)");
        }
        String replace = canonicalName.replace('.', '_');
        bff.e(replace, "replace(...)");
        String concat = replace.concat("_Impl");
        try {
            Class<?> cls = Class.forName(name.length() == 0 ? concat : name + '.' + concat, true, WorkDatabase.class.getClassLoader());
            bff.ag(cls, "null cannot be cast to non-null type java.lang.Class<T of androidx.room.Room.getGeneratedImplementation>");
            gac gacVar = (gac) cls.getDeclaredConstructor(null).newInstance(null);
            dbe dbeVar = gacVar.x;
            LinkedHashMap linkedHashMap = gacVar.t;
            gacVar.v = gacVar.q(hdaVar);
            Set<Class> o = gacVar.o();
            BitSet bitSet = new BitSet();
            for (Class cls2 : o) {
                int size = arrayList3.size() - 1;
                if (size >= 0) {
                    do {
                        i = size;
                        size = i - 1;
                        if (cls2.isAssignableFrom(arrayList3.get(i).getClass())) {
                            bitSet.set(i);
                            break;
                        }
                    } while (size >= 0);
                }
                i = -1;
                if (i < 0) {
                    throw new IllegalArgumentException(("A required auto migration spec (" + cls2.getCanonicalName() + ") is missing in the database configuration.").toString());
                }
                linkedHashMap.put(cls2, arrayList3.get(i));
            }
            int size2 = arrayList3.size() - 1;
            if (size2 >= 0) {
                while (true) {
                    int i4 = size2 - 1;
                    if (!bitSet.get(size2)) {
                        throw new IllegalArgumentException("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.");
                    }
                    if (i4 < 0) {
                        break;
                    }
                    size2 = i4;
                }
            }
            for (hbi hbiVar : gacVar.r(linkedHashMap)) {
                int i5 = hbiVar.f19169d;
                int i6 = hbiVar.f19170e;
                LinkedHashMap linkedHashMap2 = frkVar.f17292a;
                if (linkedHashMap2.containsKey(Integer.valueOf(i5))) {
                    Map map = (Map) linkedHashMap2.get(Integer.valueOf(i5));
                    if (map == null) {
                        map = dyq.f15095a;
                    }
                    z2 = map.containsKey(Integer.valueOf(i6));
                } else {
                    z2 = false;
                }
                if (!z2) {
                    frkVar.c(hbiVar);
                }
            }
            gacVar.ao().setWriteAheadLoggingEnabled(hdaVar.n == bjg.WRITE_AHEAD_LOGGING);
            gacVar.ae = hdaVar.f19255f;
            gacVar.f17774ab = hdaVar.f19250a;
            gacVar.ad = new aqv(hdaVar.j, 1);
            gacVar.z = hdaVar.h;
            Map s = gacVar.s();
            BitSet bitSet2 = new BitSet();
            for (Map.Entry entry : s.entrySet()) {
                Class cls3 = (Class) entry.getKey();
                for (Class cls4 : (List) entry.getValue()) {
                    int size3 = arrayList2.size() - 1;
                    if (size3 >= 0) {
                        while (true) {
                            int i7 = size3 - 1;
                            if (cls4.isAssignableFrom(arrayList2.get(size3).getClass())) {
                                bitSet2.set(size3);
                                break;
                            }
                            if (i7 < 0) {
                                break;
                            }
                            size3 = i7;
                        }
                    }
                    size3 = -1;
                    if (!(size3 >= 0)) {
                        throw new IllegalArgumentException(("A required type converter (" + cls4 + ") for " + cls3.getCanonicalName() + " is missing in the database configuration.").toString());
                    }
                    gacVar.w.put(cls4, arrayList2.get(size3));
                }
            }
            int size4 = arrayList2.size() - 1;
            if (size4 >= 0) {
                while (true) {
                    int i8 = size4 - 1;
                    if (!bitSet2.get(size4)) {
                        throw new IllegalArgumentException("Unexpected type converter " + arrayList2.get(size4) + ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder.");
                    }
                    if (i8 < 0) {
                        break;
                    }
                    size4 = i8;
                }
            }
            WorkDatabase workDatabase = (WorkDatabase) gacVar;
            Context applicationContext2 = context.getApplicationContext();
            bff.e(applicationContext2, "context.applicationContext");
            fzn fznVar = new fzn(applicationContext2, gkrVar);
            egu eguVar = new egu(context.getApplicationContext(), flkVar, gkrVar, workDatabase);
            int i9 = fje.f16884a;
            if (Build.VERSION.SDK_INT >= 23) {
                giwVar = new eyp(context, workDatabase, flkVar);
                bcd.a(context, SystemJobService.class, true);
                cyl.f().getClass();
            } else {
                try {
                    giwVar = (giw) Class.forName("androidx.work.impl.background.gcm.GcmScheduler").getConstructor(Context.class, dwm.class).newInstance(context, dwmVar);
                    cyl.f().getClass();
                } catch (Throwable unused) {
                    cyl.f().getClass();
                    giwVar = null;
                }
                if (giwVar == null) {
                    giwVar = new goj(context);
                    bcd.a(context, SystemAlarmService.class, true);
                    cyl.f().getClass();
                }
            }
            return new fxb(context.getApplicationContext(), flkVar, gkrVar, workDatabase, grj.e(giwVar, new dio(context, flkVar, fznVar, eguVar, new flz(eguVar, gkrVar), gkrVar)), eguVar, fznVar);
        } catch (ClassNotFoundException unused2) {
            throw new RuntimeException("Cannot find implementation for " + WorkDatabase.class.getCanonicalName() + ". " + concat + " does not exist");
        } catch (IllegalAccessException unused3) {
            throw new RuntimeException("Cannot access the constructor " + WorkDatabase.class.getCanonicalName());
        } catch (InstantiationException unused4) {
            throw new RuntimeException("Failed to create an instance of " + WorkDatabase.class.getCanonicalName());
        }
    }

    public static void bb(sd sdVar, boolean z2) {
        cnp cnpVar = sdVar.aa;
        if (cnpVar == null) {
            return;
        }
        TextView textView = (TextView) cnpVar.findViewById(R.id.snackbar_text);
        if (textView != null) {
            Resources resources = cnpVar.getResources();
            int z3 = eyt.z(cnpVar.getContext(), R.attr.colorPrimary, eyt.af(cnpVar.getContext(), R.color.colorSnackBar));
            int af = eyt.af(cnpVar.getContext(), R.color.snackbar_content_color);
            cnpVar.setBackgroundTintList(ColorStateList.valueOf(z3));
            textView.setTextColor(af);
            if (dyd.bp(23)) {
                textView.setBreakStrategy(0);
            }
            if (resources != null) {
                int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.dp_8);
                int dimensionPixelOffset2 = resources.getDimensionPixelOffset(R.dimen.dp_4);
                textView.setPadding(dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset, dimensionPixelOffset2);
            }
            ((SnackbarContentLayout) cnpVar.getChildAt(0)).getActionView().setTextColor(af);
        }
        TextView textView2 = (TextView) cnpVar.findViewById(R.id.snackbar_action);
        if (textView2 != null) {
            if (!z2) {
                textView2.setAllCaps(false);
            }
            textView2.setTypeface(textView2.getTypeface(), 1);
        }
    }

    public static void bc(EditorInfo editorInfo, CharSequence charSequence, int i, int i2) {
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putCharSequence("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT", charSequence != null ? new SpannableStringBuilder(charSequence) : null);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD", i);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END", i2);
    }

    public abstract void bd(cif cifVar, float f2, float f3);

    public abstract fkb be(cgy cgyVar);
}
