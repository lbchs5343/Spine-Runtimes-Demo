package g;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes.dex */
public final class qa implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19841a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ aix f19842b;

    public /* synthetic */ qa(aix aixVar, int i) {
        this.f19841a = i;
        this.f19842b = aixVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Context context;
        Context context2;
        Context context3;
        Context context4;
        Context context5;
        Context context6;
        switch (this.f19841a) {
            case 0:
                aix aixVar = this.f19842b;
                context = aixVar.f10291b.x;
                if (!dyd.bi(context) && aixVar.f10290a.isUpdateByDownload()) {
                    aixVar.f10291b.n(aixVar.f10290a, true);
                    break;
                } else {
                    context2 = aixVar.f10291b.x;
                    String packageName = aixVar.f10290a.getPackageName();
                    context3 = aixVar.f10291b.x;
                    eyt.ag(context2, packageName, eyt.ax(context3), true);
                    break;
                }
            case 1:
                aix aixVar2 = this.f19842b;
                dqe dqeVar = aixVar2.f10291b;
                context4 = dqeVar.x;
                fjv fjvVar = aixVar2.f10290a;
                fso.ae(context4, "", fjvVar.getUrl(), false);
                fgj e2 = fgj.e();
                context5 = dqeVar.x;
                e2.h(context5, new Intent("android.intent.action.VIEW", Uri.parse(fjvVar.getUrl())).setFlags(C.ENCODING_PCM_MU_LAW), true);
                context6 = dqeVar.x;
                gm.e(context6, R.string.upgrade_copy_success);
                break;
            default:
                aix aixVar3 = this.f19842b;
                aixVar3.f10291b.n(aixVar3.f10290a, true);
                break;
        }
    }
}
