package cn.trinea.developertools;

import a.u.e.TUE;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.webkit.WebView;
import c.b.b;
import cn.trinea.android.developertools.R;
import cn.trinea.android.lib.view.BaseApplication;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.tencent.bugly.crashreport.CrashReport;
import g.acq;
import g.acr;
import g.acw;
import g.amd;
import g.atf;
import g.awt;
import g.bbt;
import g.bli;
import g.blk;
import g.buj;
import g.byh;
import g.bys;
import g.byz;
import g.cfg;
import g.cro;
import g.crv;
import g.ctt;
import g.cuf;
import g.cux;
import g.cyz;
import g.dfn;
import g.dlb;
import g.dqj;
import g.dwm;
import g.dyd;
import g.dzm;
import g.elf;
import g.enx;
import g.erl;
import g.ert;
import g.eyt;
import g.ezp;
import g.fbc;
import g.fgj;
import g.fml;
import g.fnp;
import g.fso;
import g.fxe;
import g.gdm;
import g.gpu;
import g.gtc;
import g.hdb;
import g.lu;
import g.tn;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public abstract class MyApplication extends BaseApplication implements dfn {
    public static void d(Context context) {
        if ((context.getResources().getInteger(R.integer.cchannel) == 2 || context.getResources().getInteger(R.integer.cchannel) == 3) && !byh.k) {
            return;
        }
        try {
            if (b.v(context) && eyt.am(context, "android.permission.POST_NOTIFICATIONS") == 0) {
                TimeUnit timeUnit = TimeUnit.MINUTES;
                crv crvVar = new crv();
                ((LinkedHashSet) crvVar.f13615c).add("opu");
                awt.n(context).bh(bbt.REPLACE, (dqj) crvVar.f());
                return;
            }
            awt.n(context).bj("opu");
        } catch (Exception e2) {
            erl.ai("Fc in Application.", e2);
        }
    }

    @Override // cn.trinea.android.lib.view.BaseApplication, android.app.Application
    public final void onCreate() {
        String str;
        String str2;
        Integer num;
        int be;
        MyApplication myApplication;
        Integer num2;
        Integer num3;
        byz byzVar;
        int i;
        boolean z;
        hdb dwmVar;
        Integer valueOf = Integer.valueOf(R.string.runningservices_settings_title);
        Integer valueOf2 = Integer.valueOf(R.string.track_frame_time);
        Integer valueOf3 = Integer.valueOf(R.string.debug_hw_overdraw);
        Integer valueOf4 = Integer.valueOf(R.string.show_hw_screen_updates);
        Integer valueOf5 = Integer.valueOf(R.string.force_hw_ui);
        Integer valueOf6 = Integer.valueOf(R.string.debug_layout);
        Integer valueOf7 = Integer.valueOf(R.string.show_screen_updates);
        Integer valueOf8 = Integer.valueOf(R.string.pointer_location);
        Integer valueOf9 = Integer.valueOf(R.string.strict_mode);
        super.onCreate();
        if (!byh.bc()) {
            CrashReport.initCrashReport(getApplicationContext());
            try {
                Context applicationContext = getApplicationContext();
                Locale z2 = cux.z(this);
                CrashReport.putUserData(applicationContext, "lang", z2 == null ? null : z2.getLanguage());
            } catch (Exception e2) {
                CrashReport.postCatchedException(new TUE("putCrashReportUserData", e2));
            }
        }
        cro.q = new cuf(7);
        int i2 = 8;
        erl.q = new cfg(i2);
        dzm.p = new acq(24);
        fgj e3 = fgj.e();
        fbc fbcVar = new fbc(i2);
        e3.getClass();
        synchronized (fgj.class) {
            try {
                e3.f16745c = fbcVar;
                new AtomicBoolean(true);
            } catch (Throwable th) {
                th = th;
                while (true) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            }
        }
        if (dyd.bp(28)) {
            str2 = Application.getProcessName();
        } else {
            try {
                str2 = (String) Class.forName("android.app.ActivityThread").getDeclaredMethod(dyd.bp(18) ? "currentProcessName" : "currentPackageName", null).invoke(null, null);
            } catch (Exception e4) {
                erl.ac(e4);
                str = null;
            }
        }
        str = str2;
        if (str != null && !getPackageName().equals(str) && dyd.bp(28)) {
            int lastIndexOf = str.lastIndexOf(":");
            int lastIndexOf2 = str.lastIndexOf(".");
            if (lastIndexOf <= lastIndexOf2) {
                lastIndexOf = lastIndexOf2;
            }
            if (lastIndexOf < 0 || lastIndexOf > str.length() - 1) {
                return;
            }
            try {
                WebView.setDataDirectorySuffix(str.substring(lastIndexOf + 1));
                return;
            } catch (Exception e5) {
                erl.ai("setDataDirectorySuffix exception".concat(str), e5);
                return;
            }
        }
        String f2 = fml.f(this);
        atf.g(this).o();
        BaseApplication.c(this, f2);
        cyz.al(this);
        cro.az(this, eyt.bj(this), "current_version_code");
        if (-1 == getSharedPreferences("TrineaAndroidCommon", 0).getLong("first_open_time", -1L)) {
            SimpleDateFormat simpleDateFormat = dlb.f14354a;
            acw.s(this, "first_open_time", System.currentTimeMillis());
        }
        if (!getSharedPreferences("TrineaAndroidCommon", 0).getBoolean("uploaded_dpi", false)) {
            cro.af(this, "uploaded_dpi", true);
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            String t = displayMetrics == null ? null : fso.t(displayMetrics.densityDpi);
            if (!TextUtils.isEmpty(t)) {
                dzm.ao(this, "dpi_" + t);
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            erl.s = new ctt(this);
        }
        Integer valueOf10 = Integer.valueOf(R.string.enable_adb);
        Integer valueOf11 = Integer.valueOf(R.string.enable_adb_xiaomi);
        Integer valueOf12 = Integer.valueOf(R.string.immediately_destroy_activities);
        Integer valueOf13 = Integer.valueOf(R.string.keep_screen_on);
        if (!dzm.bc() || dzm.at(this)) {
            num = valueOf12;
            be = buj.be(0, 9243) + 857;
        } else {
            num = valueOf12;
            be = buj.be(0, 856);
        }
        if (be < 856) {
            try {
                CrashReport.putUserData(getApplicationContext(), "t", dlb.c());
            } catch (Exception e6) {
                CrashReport.postCatchedException(new TUE("pcre", e6));
            }
            myApplication = this;
        } else {
            byz byzVar2 = new byz("debug", R.string.tool_group_debug);
            byzVar2.f12477b = 16;
            dwm dwmVar2 = new dwm(29);
            ert ertVar = new ert("layout_bounds", R.string.adec, R.drawable.adec);
            ertVar.f16053b = true;
            ertVar.v = "c.e.da";
            ertVar.r = dwmVar2;
            ert ab2 = tn.ab(byzVar2, ertVar, "overdraw", R.string.bdec, R.drawable.bdec);
            ab2.f16053b = true;
            ab2.f16058g = true;
            ab2.v = "c.e.db";
            ab2.r = dwmVar2;
            ert ab3 = tn.ab(byzVar2, ab2, "track_gpu_frame", R.string.cdec, R.drawable.cdec);
            ab3.f16053b = true;
            ab3.f16058g = true;
            ab3.v = "c.e.dc";
            ab3.r = dwmVar2;
            ert ab4 = tn.ab(byzVar2, ab3, "surface_update", R.string.ddec, R.drawable.ddec);
            ab4.f16053b = true;
            ab4.v = "c.e.dd";
            ab4.r = dwmVar2;
            ert ab5 = tn.ab(byzVar2, ab4, "running_services", R.string.edec, R.drawable.edec);
            ab5.w = false;
            ab5.v = "c.e.de";
            ab5.r = dwmVar2;
            ert ab6 = tn.ab(byzVar2, ab5, "usb_debugging", R.string.fdec, R.drawable.fdec);
            ab6.f16053b = true;
            ab6.v = "c.e.df";
            ab6.r = dwmVar2;
            ert ab7 = tn.ab(byzVar2, ab6, "force_gpu_rendering", R.string.gdec, R.drawable.gdec);
            ab7.f16053b = true;
            ab7.v = "c.e.dg";
            ab7.r = dwmVar2;
            ert ab8 = tn.ab(byzVar2, ab7, "gpu_view_update", R.string.hdec, R.drawable.hdec);
            ab8.f16053b = true;
            ab8.v = "c.e.dh";
            ab8.r = dwmVar2;
            ert ab9 = tn.ab(byzVar2, ab8, "developer_options", R.string.idec, R.drawable.idec);
            ab9.v = "c.e.di";
            ab9.r = new cfg(0);
            ert ab10 = tn.ab(byzVar2, ab9, "locale_settings", R.string.jdec, R.drawable.jdec);
            ab10.v = "c.e.dj";
            ab10.r = new fbc(0);
            ert ab11 = tn.ab(byzVar2, ab10, "system_settings", R.string.kdec, R.drawable.kdec);
            ab11.v = "c.e.dk";
            ab11.r = new gpu(0);
            ert ab12 = tn.ab(byzVar2, ab11, "pointer_location", R.string.ldec, R.drawable.ldec);
            ab12.f16053b = true;
            ab12.v = "c.e.dl";
            ab12.r = dwmVar2;
            ert ab13 = tn.ab(byzVar2, ab12, "strict_mode", R.string.mdec, R.drawable.mdec);
            ab13.f16053b = true;
            ab13.v = "c.e.dm";
            ab13.r = dwmVar2;
            ert ab14 = tn.ab(byzVar2, ab13, "dont_keep_activities", R.string.ndec, R.drawable.ndec);
            ab14.f16053b = true;
            ab14.v = "c.e.dn";
            ab14.r = dwmVar2;
            ert ab15 = tn.ab(byzVar2, ab14, "stay_awake", R.string.odec, R.drawable.odec);
            ab15.f16053b = true;
            ab15.v = "c.e.do";
            ab15.r = dwmVar2;
            ert ab16 = tn.ab(byzVar2, ab15, "tuner", R.string.pdec, R.drawable.pdec);
            ab16.h = 23;
            ab16.v = "c.e.dp";
            ab16.r = new ezp();
            byzVar2.e(ab16);
            myApplication = this;
            acr.bs(-1, myApplication, byzVar2);
            byz byzVar3 = new byz("common", R.string.tool_group_common);
            fxe.a j = atf.g(myApplication).j();
            if (j != null && j.isShowJSON && !TextUtils.isEmpty(j.jsonUrl)) {
                ert ertVar2 = new ert("json", R.string.tool_common_json, R.drawable.json);
                ertVar2.f16054c = myApplication.getSharedPreferences("TrineaAndroidCommon", 0).getBoolean("json_new", true);
                ertVar2.r = new blk();
                byzVar3.e(ertVar2);
            }
            fxe.a j2 = atf.g(myApplication).j();
            if (j2 != null && j2.isShowMD5 && !TextUtils.isEmpty(j2.md5Url)) {
                ert ertVar3 = new ert(TTDownloadField.TT_MD5, R.string.tool_common_md5, R.drawable.md5);
                ertVar3.f16054c = myApplication.getSharedPreferences("TrineaAndroidCommon", 0).getBoolean("md5_new", false);
                ertVar3.r = new gtc();
                byzVar3.e(ertVar3);
            }
            fxe.a j3 = atf.g(myApplication).j();
            if (j3 != null && j3.isShowMultilineProcess && !TextUtils.isEmpty(j3.multilineProcessUrl)) {
                ert ertVar4 = new ert("multiline_process", R.string.tool_common_multiline_process, R.drawable.multiline_process);
                ertVar4.f16054c = myApplication.getSharedPreferences("TrineaAndroidCommon", 0).getBoolean("multiline_process_new", true);
                ertVar4.r = new lu();
                byzVar3.e(ertVar4);
            }
            acr.bs(-1, myApplication, byzVar3);
            byz byzVar4 = new byz("system", R.string.tool_group_info);
            ert ertVar5 = new ert("system_properties", R.string.tool_info_system_property, R.drawable.info_properties);
            ertVar5.r = new cuf(3);
            ert ab17 = tn.ab(byzVar4, ertVar5, "system", R.string.tool_info_system, R.drawable.info_system);
            int i3 = 4;
            ab17.r = new cfg(i3);
            ert ab18 = tn.ab(byzVar4, ab17, "hardware", R.string.tool_info_hardware, R.drawable.info_hardware);
            ab18.r = new fbc(i3);
            ert ab19 = tn.ab(byzVar4, ab18, "density", R.string.tool_ui_screen_info, R.drawable.ui_screen_info);
            ab19.r = new gpu(i3);
            ert ab20 = tn.ab(byzVar4, ab19, "network", R.string.tool_info_network, R.drawable.info_network);
            ab20.r = new bli(i3);
            ert ab21 = tn.ab(byzVar4, ab20, "vm", R.string.tool_info_vm, R.drawable.info_vm);
            ab21.r = new cuf(i3);
            ert ab22 = tn.ab(byzVar4, ab21, "cpu", R.string.tool_info_cpu, R.drawable.info_cpu);
            int i4 = 5;
            ab22.r = new cfg(i4);
            ert ab23 = tn.ab(byzVar4, ab22, "my_apps", R.string.tool_info_my_apps, R.drawable.info_my_apps);
            ab23.r = new fbc(i4);
            ert ab24 = tn.ab(byzVar4, ab23, TTDownloadField.TT_ID, R.string.tool_info_id, R.drawable.info_id);
            ab24.r = new gpu(i4);
            byzVar4.e(ab24);
            acr.bs(-1, myApplication, byzVar4);
            amd amdVar = new amd();
            acr.bs(-1, myApplication, amdVar.a(myApplication));
            if (acr.w == null) {
                acr.w = new ArrayList();
            }
            acr.w.add(amdVar);
            HashMap hashMap = new HashMap();
            acr.f9994g = hashMap;
            hashMap.put("stay_awake", valueOf13);
            Integer num4 = num;
            acr.f9994g.put("dont_keep_activities", num4);
            if (fnp.m() && cux.aj(myApplication)) {
                num2 = valueOf11;
                acr.f9994g.put("usb_debugging", num2);
                num3 = valueOf10;
            } else {
                num2 = valueOf11;
                num3 = valueOf10;
                acr.f9994g.put("usb_debugging", num3);
            }
            acr.f9994g.put("strict_mode", valueOf9);
            acr.f9994g.put("pointer_location", valueOf8);
            acr.f9994g.put("surface_update", valueOf7);
            acr.f9994g.put("layout_bounds", valueOf6);
            acr.f9994g.put("force_gpu_rendering", valueOf5);
            acr.f9994g.put("gpu_view_update", valueOf4);
            acr.f9994g.put("overdraw", valueOf3);
            acr.f9994g.put("track_gpu_frame", valueOf2);
            acr.f9994g.put("running_services", valueOf);
            acr.i = new HashMap();
            int i5 = 2;
            acr.aw("stay_awake", valueOf13, Integer.valueOf(R.string.keep_screen_on_summary), Integer.valueOf(R.string.keep_screen_on_smartisan), Integer.valueOf(R.string.keep_screen_on_user1));
            acr.aw("dont_keep_activities", num4, Integer.valueOf(R.string.immediately_destroy_activities_summary));
            acr.aw("usb_debugging", num3, Integer.valueOf(R.string.enable_adb_summary), num2);
            acr.aw("strict_mode", valueOf9, Integer.valueOf(R.string.strict_mode_summary), Integer.valueOf(R.string.strict_mode_samsung));
            acr.aw("pointer_location", valueOf8, Integer.valueOf(R.string.pointer_location_summary), Integer.valueOf(R.string.pointer_location_user1));
            acr.aw("surface_update", valueOf7, Integer.valueOf(R.string.show_screen_updates_summary), Integer.valueOf(R.string.show_screen_updates_huawei), Integer.valueOf(R.string.show_screen_updates_xiaomi));
            acr.aw("layout_bounds", valueOf6, Integer.valueOf(R.string.debug_layout_summary), Integer.valueOf(R.string.debug_lg_layout), Integer.valueOf(R.string.debug_layout_user1));
            acr.aw("force_gpu_rendering", valueOf5, Integer.valueOf(R.string.force_hw_ui_summary));
            acr.aw("gpu_view_update", valueOf4, Integer.valueOf(R.string.show_hw_screen_updates_summary));
            acr.aw("overdraw", valueOf3, Integer.valueOf(R.string.debug_hw_overdraw_huawei), Integer.valueOf(R.string.debug_hw_overdraw_4_4), Integer.valueOf(R.string.debug_overdraw_user1));
            acr.aw("track_gpu_frame", valueOf2);
            acr.aw("running_services", valueOf, Integer.valueOf(R.string.runningservices_settings_summary), Integer.valueOf(R.string.runningservices_settings_title_2));
            if ("zuk".equalsIgnoreCase(Build.MANUFACTURER)) {
                acr.aw("running_services", Integer.valueOf(R.string.runningservices_settings_title_zuk));
            }
            acr.aw("debug_overdraw_show_areas", Integer.valueOf(R.string.debug_hw_overdraw_entries2));
            acr.aw("debug_overdraw_close", Integer.valueOf(R.string.debug_hw_overdraw_entries1));
            acr.aw("debug_track_gpu_show", Integer.valueOf(R.string.track_frame_time_entries2));
            acr.aw("debug_track_gpu_close", Integer.valueOf(R.string.track_frame_time_entries1));
            acr.aw("debug_usb_debugging_open", Integer.valueOf(R.string.ok));
            acr.n = new HashMap();
            acr.af("overdraw", "debug_overdraw_close", "debug_overdraw_show_areas");
            acr.af("track_gpu_frame", "debug_track_gpu_close", "debug_track_gpu_show");
            int i6 = elf.f15750d;
            if (byh.al(myApplication, atf.g(myApplication).o())) {
                byzVar = null;
                i = 0;
            } else {
                byzVar = new byz("locked_design", R.string.tool_group_design);
                byzVar.f12477b = 23;
                ert ertVar6 = new ert(R.string.dab, R.drawable.dab_gray, 64, 0, "locked_color_picker");
                ertVar6.m = false;
                ertVar6.h = 23;
                ertVar6.j = R.string.introduction_cp;
                ertVar6.r = new dwm(26);
                byzVar.e(ertVar6);
                ert ertVar7 = new ert(R.string.cc, R.drawable.cc_gray, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME, 0, "locked_text_copy");
                i = 0;
                ertVar7.m = false;
                ertVar7.j = R.string.introduction_tc;
                ertVar7.r = new dwm(26);
                byzVar.e(ertVar7);
            }
            acr.bs(i, fgj.d(myApplication), byzVar);
            byz byzVar5 = new byz("app_locked", R.string.tool_group_app);
            byzVar5.e(bys.b(myApplication, "codekk_op", "op_source_tool_app"));
            ert ertVar8 = new ert("apps", R.string.aab, R.drawable.caec, (Object) null);
            ertVar8.p = true;
            ertVar8.v = "c.e.ac";
            ertVar8.r = new gdm(0);
            byzVar5.e(ertVar8);
            if (!byh.al(myApplication, atf.g(myApplication).o())) {
                ert ertVar9 = new ert(R.string.abb, R.drawable.manifest_gray, 1, 0, "locked_manifest");
                ertVar9.m = false;
                ertVar9.f16057f = true;
                ertVar9.j = R.string.introduction_manifest;
                ertVar9.r = new dwm(26);
                byzVar5.e(ertVar9);
                ert ertVar10 = new ert(R.string.aaec, R.drawable.top_activity_gray, 2, 0, "locked_top_activity");
                ertVar10.m = false;
                ertVar10.j = R.string.introduction_activity_history;
                ertVar10.r = new dwm(26);
                byzVar5.e(ertVar10);
                ert ertVar11 = new ert(R.string.cac, R.drawable.fbec_gray, 4, 0, "locked_layout_inspector");
                ertVar11.m = false;
                ertVar11.j = R.string.introduction_li;
                ertVar11.r = new dwm(26);
                byzVar5.e(ertVar11);
                ert ertVar12 = new ert(R.string.bbb, R.drawable.faec_gray, 8, 0, "locked_decompile");
                ertVar12.m = false;
                ertVar12.f16057f = true;
                ertVar12.j = R.string.introduction_decompile;
                ertVar12.r = new dwm(26);
                byzVar5.e(ertVar12);
                ert ertVar13 = new ert(R.string.bcc, R.drawable.apk_gray, 16, 0, "locked_apk_puller");
                ertVar13.m = false;
                ertVar13.j = R.string.introduction_apk_puller;
                ertVar13.r = new dwm(26);
                byzVar5.e(ertVar13);
                ert ertVar14 = new ert(R.string.cbb, R.drawable.so_gray, 32, 0, "locked_so_puller");
                ertVar14.m = false;
                ertVar14.j = R.string.introduction_so_puller;
                if (myApplication.getSharedPreferences("TrineaAndroidCommon", 0).getBoolean("al_or_ways", false)) {
                    z = true;
                    dwmVar = new gdm(1 == true ? 1 : 0);
                } else {
                    z = true;
                    dwmVar = new dwm(26);
                }
                ertVar14.r = dwmVar;
                ert ab25 = tn.ab(byzVar5, ertVar14, "permissions", R.string.adc, R.drawable.eaec);
                ab25.p = z;
                ab25.l = z;
                ab25.v = "c.e.PermissionActivity";
                ab25.r = new gdm(i5);
                byzVar5.e(ab25);
            }
            atf g2 = atf.g(myApplication);
            fxe.e m = g2.m();
            if (m != null) {
                int i7 = m.adPosition;
                boolean h = g2.h(m);
                if ((i7 & 16) != 0 && h) {
                    byzVar5.e(enx.b(myApplication));
                }
            }
            enx.a(16, myApplication, byzVar5);
            acr.bs(0, fgj.d(myApplication), byzVar5);
        }
        d(myApplication);
    }
}
