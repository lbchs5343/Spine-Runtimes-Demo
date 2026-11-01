package g;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import cn.trinea.android.lib.view.BaseApplication;
import g.fxe;

/* loaded from: classes.dex */
public final class emb extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ elf f15791a;

    public emb(elf elfVar) {
        this.f15791a = elfVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        fxe.e eVar;
        fxe.e eVar2;
        if (intent != null) {
            String action = intent.getAction();
            if (TextUtils.isEmpty(action)) {
                return;
            }
            if ("first_use_accessibility".equals(action)) {
                String stringExtra = intent.getStringExtra("tips");
                if (TextUtils.isEmpty(stringExtra)) {
                    return;
                }
                elf elfVar = this.f15791a;
                if (elfVar.m || elfVar.isDestroyed()) {
                    gm.k(context, stringExtra);
                    return;
                } else {
                    elf elfVar2 = this.f15791a;
                    elfVar2.y = afo.ar(elfVar2.findViewById(R.id.snackbar_layout), stringExtra, -2, R.string.know_it, new dij());
                    return;
                }
            }
            if ("c.t.d.p.bdf".equals(action)) {
                this.f15791a.ad(intent.getStringExtra("tool-id"), false);
                return;
            }
            if ("l".equals(action)) {
                this.f15791a.fullScreenAdShow();
                return;
            }
            if (!"cacu".equals(action)) {
                if ("cn.trinea.android.lib.ACTION_TOOL_UPDATE".equals(action)) {
                    this.f15791a.l = true;
                    return;
                } else {
                    if ("inspector_first_finish".equals(action) || "finish".equals(action)) {
                        this.f15791a.finish();
                        return;
                    }
                    return;
                }
            }
            if (this.f15791a.k == null) {
                return;
            }
            acr.f9989b = true;
            this.f15791a.k.n();
            dmr dmrVar = this.f15791a.k;
            if (!dmrVar.f14438c) {
                dmrVar.f14440e.af();
            }
            cyz.al(context);
            String f2 = fml.f(context);
            atf.g(context).o();
            BaseApplication.c(context, f2);
            fxe fxeVar = (fxe) intent.getParcelableExtra("cacuoc");
            fxe fxeVar2 = (fxe) intent.getParcelableExtra("cacunc");
            if (fxeVar == null || fxeVar2 == null || (eVar = fxeVar.alliance) == null || (eVar2 = fxeVar2.alliance) == null || eVar.isShowGoogleAd != eVar2.isShowGoogleAd) {
                this.f15791a.ai();
            }
        }
    }
}
