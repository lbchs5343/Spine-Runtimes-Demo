package g;

import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final /* synthetic */ class dvt implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14899a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f14900b;

    public /* synthetic */ dvt(Context context, int i) {
        this.f14899a = i;
        this.f14900b = context;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (this.f14899a) {
            case 0:
                Context context = this.f14900b;
                fml.d(context);
                Intent intent = new Intent();
                intent.setComponent(new ComponentName("com.android.systemui", "com.android.systemui.tuner.TunerActivity"));
                if (!fgj.e().g(context, intent, false, true, true)) {
                    Intent intent2 = new Intent();
                    intent2.setComponent(new ComponentName("com.android.systemui", "com.android.systemui.DemoMode"));
                    if (!fgj.e().g(context, intent2, false, true, true)) {
                        eyt.ay(context, cro.t(context, true, null));
                        break;
                    }
                }
                int i2 = context.getSharedPreferences("TrineaAndroidCommon", 0).getInt("open_tuner_count", 0);
                cro.az(context, i2 + 1, "open_tuner_count");
                if (i2 <= 10) {
                    gm.c(context, R.string.tuner_risk_tips_short);
                    break;
                }
                break;
            default:
                Context context2 = this.f14900b;
                eyt.ag(context2, "com.codekk.newsecond", context2.getString(R.string.new_second_market_name), true);
                break;
        }
    }
}
