package g;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* loaded from: classes3.dex */
public final class gab extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public Context f17772a;

    /* renamed from: b, reason: collision with root package name */
    public final gtb f17773b;

    public gab(gtb gtbVar) {
        this.f17773b = gtbVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            Object obj = this.f17773b.f18712b;
            throw null;
        }
    }
}
