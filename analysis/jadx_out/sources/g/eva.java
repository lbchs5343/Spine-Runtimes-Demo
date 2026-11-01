package g;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class eva extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16214a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ baq f16215b;

    public /* synthetic */ eva(baq baqVar, int i) {
        this.f16214a = i;
        this.f16215b = baqVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        switch (this.f16214a) {
            case 0:
                if (intent != null) {
                    String action = intent.getAction();
                    if (!TextUtils.isEmpty(action)) {
                        boolean equals = "inspector_close".equals(action);
                        baq baqVar = this.f16215b;
                        if (!equals) {
                            if ("inspector_refresh".equals(action)) {
                                c.b.ab abVar = baqVar.p;
                                he z = ka.z(true, true);
                                baqVar.s = z;
                                if (abVar.s(z)) {
                                    baqVar.ae.setVisibility(8);
                                    break;
                                }
                            }
                        } else {
                            baqVar.ag = true;
                            baqVar.finish();
                            break;
                        }
                    }
                }
                break;
            default:
                baq baqVar2 = this.f16215b;
                if (baqVar2.p != null && baqVar2.ba) {
                    baqVar2.ab();
                    baq.an(baqVar2);
                    baqVar2.ba = false;
                    fzn.l(baqVar2).u(baqVar2.n);
                    if (baqVar2.az && bfc.ac(context)) {
                        baq.am(baqVar2);
                        break;
                    }
                }
                break;
        }
    }
}
