package g;

import android.app.Activity;
import android.content.DialogInterface;
import cn.trinea.android.developertools.R;
import java.util.ArrayList;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class ads implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10057a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Activity f10058b;

    public /* synthetic */ ads(Activity activity, int i) {
        this.f10057a = i;
        this.f10058b = activity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (this.f10057a) {
            case 0:
                Activity activity = this.f10058b;
                ArrayList l = ern.l(activity);
                String str = activity.getPackageName() + "/" + (!acw.u(l) ? (String) l.get(0) : "com.google.android.accessibility.selecttospeak.SelectToSpeakService");
                gm.f(activity, R.string.accessibility_by_root_begin);
                Executors.newSingleThreadExecutor().execute(new gfh(str, 3, activity));
                break;
            default:
                gm.e(this.f10058b, R.string.content_disabled_request_permission2);
                break;
        }
    }
}
