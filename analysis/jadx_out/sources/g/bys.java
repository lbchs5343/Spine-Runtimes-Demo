package g;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import g.fxe;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class bys {

    /* renamed from: a, reason: collision with root package name */
    public static String f12466a;

    public static ert b(Context context, String str, String str2) {
        fxe p = atf.g(context).p();
        if ((p == null ? null : p.codekk) == null) {
            return null;
        }
        ert ertVar = new ert(str, R.string.op, R.drawable.codekk_op);
        ertVar.f16054c = c(context);
        ertVar.f16057f = true;
        ertVar.r = new fwk(str2);
        return ertVar;
    }

    public static boolean c(Context context) {
        if (cyz.f13786c) {
            return true;
        }
        if (!acr.bu(context)) {
            long longValue = acw.k(context, "last_read_op_date", -1L).longValue();
            fxe p = atf.g(context).p();
            fxe.f fVar = p == null ? null : p.codekk;
            if (fVar == null || !fVar.isOldOpMark) {
                Date date = new Date(System.currentTimeMillis());
                date.setHours(7);
                date.setMinutes(0);
                date.setSeconds(0);
                if (longValue < 0 || longValue < (date.getTime() / 1000) * 1000) {
                    return true;
                }
            } else {
                Calendar calendar = Calendar.getInstance();
                calendar.set(11, 7);
                calendar.set(12, 0);
                calendar.set(13, 0);
                calendar.set(14, 0);
                if (longValue < 0 || longValue < calendar.getTimeInMillis()) {
                    return true;
                }
            }
        }
        int i = c.b.b.f378d;
        return byh.av(context, cro.av(context, 0, "c"), "c") > 0;
    }

    public static void d(Activity activity, String str) {
        String str2;
        String str3;
        int i;
        fxe p = atf.g(activity).p();
        fxe.f fVar = p == null ? null : p.codekk;
        if (fVar != null) {
            str2 = fVar.opUrl;
            str3 = fVar.opTitle;
        } else {
            str2 = null;
            str3 = null;
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = "https://p.codekk.com/";
        }
        if (TextUtils.isEmpty(str3)) {
            str3 = activity.getString(R.string.op_title);
        }
        if (fVar != null && (i = fVar.im) > 0) {
            long ae = cro.ae(activity, "last_read_op_date", -1L);
            Date date = new Date(System.currentTimeMillis());
            date.setHours(0);
            date.setMinutes(0);
            date.setSeconds(0);
            SimpleDateFormat simpleDateFormat = dlb.f14354a;
            long j = i;
            long time = ((date.getTime() / 1000) * 1000) + (((((System.currentTimeMillis() - date.getTime()) / 1000) / 60) / j) * j * 60000);
            if (ae < 0 || ae < time) {
                cro.az(activity, 1, "opic");
            } else {
                cro.az(activity, cro.av(activity, 0, "opic") + 1, "opic");
            }
        }
        Bundle c2 = dov.c(str2, str3, activity.getString(R.string.op_sub_title), activity.getString(R.string.op_share_attach), f12466a);
        c2.putString(abn.EXTRA_SOURCE, str);
        dov.b(activity, c.b.b.class, c2);
        SimpleDateFormat simpleDateFormat2 = dlb.f14354a;
        acw.s(activity, "last_read_op_date", System.currentTimeMillis());
        String string = activity.getSharedPreferences("TrineaAndroidCommon", 0).getString("open_project_source", null);
        if (TextUtils.isEmpty(string)) {
            string = str;
        } else {
            acw.au(activity, "open_project_source", "");
        }
        dzm.ah(activity, "op_source_total", string);
        ArrayList arrayList = new ArrayList();
        ert ae2 = acr.ae(activity, "codekk_op");
        if (ae2 != null) {
            arrayList.add(ae2);
        }
        ert ae3 = acr.ae(activity, "codekk_op2");
        if (ae3 != null) {
            arrayList.add(ae3);
        }
        if (acw.u(arrayList)) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ert ertVar = (ert) it.next();
            if (ertVar != null) {
                ertVar.f16054c = false;
            }
        }
        fzn.l(activity).q(new Intent("cn.trinea.android.lib.ACTION_TOOL_UPDATE"));
    }
}
