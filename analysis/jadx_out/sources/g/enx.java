package g;

import android.content.Context;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class enx {
    public static void a(int i, Context context, byz byzVar) {
        ArrayList m = aky.m(context);
        if (acw.u(m)) {
            return;
        }
        Iterator it = m.iterator();
        while (it.hasNext()) {
            dgk dgkVar = (dgk) it.next();
            if (dgkVar != null && (dgkVar.getDisplayArea() & i) != 0) {
                ert ertVar = new ert(dgkVar.getId(), dgkVar.getName(context), aky.ab(dgkVar));
                ertVar.n = dgkVar.getNameResId();
                ertVar.o = dgkVar.getIconType();
                String iconUrl = dgkVar.getIconUrl();
                if (!TextUtils.isEmpty(iconUrl)) {
                    ertVar.y = iconUrl;
                    ertVar.o = 2;
                }
                int ab2 = aky.ab(dgkVar);
                if (ab2 >= 0) {
                    ertVar.f16055d = ab2;
                    ertVar.o = 1;
                }
                String iconText = dgkVar.getIconText();
                if (!TextUtils.isEmpty(iconText)) {
                    ertVar.f16052a = iconText;
                    ertVar.o = 3;
                }
                boolean isShow = dgkVar.isShow(context.getResources().getInteger(R.integer.image_text_item_show));
                if (dgkVar.getShow() == 16 && cux.aj(context)) {
                    isShow = true;
                }
                ertVar.s = isShow;
                ertVar.h = dgkVar.getMinSdkVersion();
                ertVar.k = dgkVar.getMaxSdkVersion();
                dgkVar.isShowCornerTip();
                dgkVar.getCornerTipIconUrl();
                ertVar.x = dgkVar.isSpace();
                ertVar.f16054c = dgk.isShowCornerTipNow(context, dgkVar);
                if (context.getSharedPreferences("TrineaAndroidCommon", 0).getBoolean("datetrinea", false)) {
                    ertVar.s = true;
                }
                ertVar.q += "_" + i;
                ertVar.f16054c = cyz.f13786c ? true : acr.bu(context) ? false : ertVar.f16054c;
                ertVar.r = new aoy(dgkVar);
                byzVar.e(ertVar);
            }
        }
    }

    public static ert b(Context context) {
        String str = atf.g(context).m().adTitle;
        if (TextUtils.isEmpty(str)) {
            str = context.getString(R.string.tool_other_financial);
        }
        ert ertVar = new ert("financial", str, R.drawable.other_financial);
        ertVar.r = new cny();
        return ertVar;
    }
}
