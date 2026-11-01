package g;

import android.content.Context;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import g.fxe;

/* loaded from: classes.dex */
public final class amd {
    public final byz a(Context context) {
        ert ertVar;
        byz byzVar = new byz("other", R.string.tool_group_other);
        fxe.a j = atf.g(context).j();
        if (j != null && j.isShowManual && !TextUtils.isEmpty(j.manualUrl)) {
            ert ertVar2 = new ert("features", TextUtils.isEmpty(j.manualTitle) ? context.getString(R.string.tool_other_features) : j.manualTitle, R.drawable.other_features);
            ertVar2.r = new fln();
            byzVar.e(ertVar2);
        }
        fxe.a j2 = atf.g(context).j();
        if (j2 != null && j2.isShowFAQ && !TextUtils.isEmpty(j2.faqUrl)) {
            ert ertVar3 = new ert("faq", TextUtils.isEmpty(j2.faqTitle) ? context.getString(R.string.about_faq) : j2.faqTitle, R.drawable.faq);
            ertVar3.r = new fcs();
            byzVar.e(ertVar3);
        }
        byzVar.e(bys.b(context, "codekk_op2", "op_source_tool_other"));
        enx.a(256, context, byzVar);
        ert ertVar4 = null;
        if (!byh.al(context, atf.g(context).o())) {
            ert ertVar5 = new ert("pro", R.string.tool_other_pro, R.drawable.other_pro, (Object) null);
            ertVar5.r = new dwm(26);
            byzVar.e(ertVar5);
            atf g2 = atf.g(context);
            fxe.e m = g2.m();
            if (m != null) {
                int i = m.adPosition;
                boolean h = g2.h(m);
                if ((256 & i) != 0 && h) {
                    byzVar.e(enx.b(context));
                }
            }
        }
        ert ertVar6 = new ert("standard_size", R.string.bcb, R.drawable.ui_standard_size);
        ertVar6.p = true;
        ertVar6.r = new gdm(13);
        byzVar.e(ertVar6);
        fxe.e m2 = atf.g(context).m();
        if (m2 != null && m2.isShowWeChat) {
            ert ertVar7 = new ert("official_wechat", m2.weChatTitle, R.mipmap.dbac);
            ertVar7.r = new fut();
            byzVar.e(ertVar7);
        }
        fxe.a j3 = atf.g(context).j();
        if (j3 != null && j3.isShowUserResearch && !TextUtils.isEmpty(j3.userResearchUrl)) {
            ert ertVar8 = new ert("user_research", TextUtils.isEmpty(j3.userResearchTitle) ? context.getString(R.string.about_research) : j3.userResearchTitle, R.drawable.research);
            ertVar8.r = new fpi();
            byzVar.e(ertVar8);
        }
        fxe.e m3 = atf.g(context).m();
        if (m3 != null && m3.isShowJobs && cux.aj(context)) {
            String str = m3.jobsTitle;
            if (TextUtils.isEmpty(str)) {
                str = context.getString(R.string.tool_other_job);
            }
            ertVar = new ert("jobs", str, R.drawable.fly);
            ertVar.r = new faz();
        } else {
            ertVar = null;
        }
        byzVar.e(ertVar);
        String string = context.getSharedPreferences("TrineaAndroidCommon", 0).getString("update_response", null);
        if (!TextUtils.isEmpty(string)) {
            try {
                fjv fjvVar = (fjv) ex.f(fjv.class, string);
                if (fjvVar != null && fjvVar.getVersionCode() > eyt.bj(context)) {
                    ert ertVar9 = new ert("update", R.string.alert_dialog_update2, R.drawable.new_version, (Object) null);
                    ertVar9.r = new fnq(15, fjvVar);
                    ertVar4 = ertVar9;
                }
            } catch (Exception e2) {
                erl.ac(e2);
            }
        }
        byzVar.e(ertVar4);
        return byzVar;
    }
}
