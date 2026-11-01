package g;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import cn.trinea.android.developertools.R;
import java.lang.ref.WeakReference;
import java.util.List;

/* loaded from: classes.dex */
public final class gdb extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ dqe f17916a;

    public gdb(dqe dqeVar) {
        this.f17916a = dqeVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:3:0x000e, code lost:
    
        r2 = (r7 = r5.f17916a).ag(r0);
     */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onReceive(Context context, Intent intent) {
        dqe dqeVar;
        gll ag;
        List list;
        WeakReference weakReference;
        dkc dkcVar;
        dkc dkcVar2;
        dkc dkcVar3;
        WeakReference weakReference2;
        long longExtra = intent.getLongExtra("extra_download_id", -1L);
        if (longExtra < 0 || ag == null) {
            return;
        }
        list = dqe.w;
        list.remove(context.getPackageName());
        weakReference = dqeVar.y;
        if (weakReference.get() == null) {
            return;
        }
        dkcVar = dqe.s;
        if (dkcVar.c(longExtra) != 8) {
            dkcVar2 = dqe.s;
            dkcVar2.e(longExtra);
        } else {
            if (ag.isDiff()) {
                return;
            }
            dkcVar3 = dqe.s;
            String d2 = dkcVar3.d(longExtra);
            if (d2 != null) {
                gm.c(context, R.string.finish_download_upgrade_app);
                weakReference2 = dqeVar.y;
                gs.au((Activity) weakReference2.get(), baf.bo(context, Uri.parse(d2), false));
            }
        }
    }
}
