package g;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class efq extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15452a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ edx f15453b;

    public /* synthetic */ efq(edx edxVar, int i) {
        this.f15452a = i;
        this.f15453b = edxVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        switch (this.f15452a) {
            case 0:
                if (intent != null) {
                    String action = intent.getAction();
                    if (!TextUtils.isEmpty(action)) {
                        boolean equals = "inspector_close".equals(action);
                        edx edxVar = this.f15453b;
                        if (!equals) {
                            if (!"inspector_refresh".equals(action)) {
                                if ("find".equals(action)) {
                                    edx.al(edxVar);
                                    break;
                                }
                            } else {
                                edxVar.s++;
                                edxVar.u = false;
                                c.b.ab abVar = edxVar.p;
                                he z = ka.z(true, true);
                                edxVar.m = z;
                                if (abVar.s(z)) {
                                    edxVar.ae.setVisibility(8);
                                    break;
                                }
                            }
                        } else {
                            edxVar.af = true;
                            edxVar.finish();
                            break;
                        }
                    }
                }
                break;
            default:
                edx edxVar2 = this.f15453b;
                if (edxVar2.p != null && edxVar2.ba) {
                    edxVar2.ab();
                    edxVar2.an();
                    edxVar2.ba = false;
                    fzn.l(edxVar2).u(edxVar2.n);
                    if (edxVar2.az && bfc.ac(context)) {
                        edxVar2.at();
                        break;
                    }
                }
                break;
        }
    }
}
